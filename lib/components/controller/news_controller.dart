class News {
  final String imageUrl;
  final String newsTitle;
  final String newsDescription;

  News({
    required this.imageUrl,
    required this.newsTitle,
    required this.newsDescription,
  });

  factory News.fromFirestore(Map<String, dynamic> data) {
    return News(
      imageUrl: data['imageUrl'] ?? '',
      newsTitle: data['newsTitle'] ?? '',
      newsDescription: data['newsDescription'] ?? '',
    );
  }
}