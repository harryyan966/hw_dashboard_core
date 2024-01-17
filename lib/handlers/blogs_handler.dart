import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class IBlogsHandler {
  // change state
  Future<Id> createBlog({
    required String title,
    required String content,
    List<AppFile> images = const [],
  });

  Future<void> deleteBlog({
    required Id id,
  });

  Future<void> updateBlog({
    required Id id,
    String? title,
    String? content,
    List<AppFile>? images = const [],
  });

  // retrieve state
  Future<BlogDetail?> getBlogDetailById({
    required Id id,
  });

  Future<List<BlogInfo>> searchBlogs({
    String? keyword,
    int? limit,
    int? skip,
  });
}
