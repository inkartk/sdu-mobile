import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../bloc/news_bloc.dart';
import '../bloc/news_event.dart';
import '../bloc/news_state.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewsBloc>()
        ..add(const NewsEvent.loadTopHeadlines(
          country: 'us',
          category: 'technology',
        )),
      child: const NewsView(),
    );
  }
}

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<NewsBloc>().add(const NewsEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<NewsBloc>().add(const NewsEvent.refresh());
            },
          ),
        ],
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: Text('Welcome to News App'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingMore: (articles, currentPage) => ListView.builder(
              controller: _scrollController,
              itemCount: articles.length + 1,
              itemBuilder: (context, index) {
                if (index >= articles.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                final article = articles[index];
                return _NewsItem(
                  title: article.title,
                  description: article.description ?? '',
                  author: article.author ?? 'Unknown',
                  publishedAt: article.publishedAt.toString(),
                  source: article.source.name,
                );
              },
            ),
            loaded: (articles, totalResults, currentPage, hasMore) =>
                RefreshIndicator(
              onRefresh: () async {
                context.read<NewsBloc>().add(const NewsEvent.refresh());
              },
              child: ListView.builder(
                controller: _scrollController,
                itemCount: articles.length + (hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index >= articles.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  final article = articles[index];
                  return _NewsItem(
                    title: article.title,
                    description: article.description ?? '',
                    author: article.author ?? 'Unknown',
                    publishedAt: article.publishedAt.toString(),
                    source: article.source.name,
                    imageUrl: article.urlToImage,
                  );
                },
              ),
            ),
            error: (message, stackTrace) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    'Error: $message',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<NewsBloc>().add(const NewsEvent.refresh());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            empty: () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.inbox_outlined, size: 48),
                  const SizedBox(height: 16),
                  const Text(
                    'No news available',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<NewsBloc>().add(const NewsEvent.refresh());
                    },
                    child: const Text('Refresh'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _NewsItem extends StatelessWidget {
  final String title;
  final String description;
  final String author;
  final String publishedAt;
  final String source;
  final String? imageUrl;

  const _NewsItem({
    required this.title,
    required this.description,
    required this.author,
    required this.publishedAt,
    required this.source,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null && imageUrl!.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 48),
                    );
                  },
                ),
              ),
            if (imageUrl != null && imageUrl!.isNotEmpty)
              const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (description.isNotEmpty)
              Text(
                description,
                style: const TextStyle(fontSize: 14),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.person, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    author,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.source, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  source,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const Spacer(),
                const Icon(Icons.access_time, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  publishedAt.split(' ')[0], // Show only date
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
