class NewsModel {
  final String author;
  final String title;
  final String description;
  final String? image;
  final DateTime publishedAt;
  final String content;
  final String source;
  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    this.image,
    required this.publishedAt,
    required this.content,
    required this.source,
  });

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      author: map['author'] ?? 'Uknown',
      title: map['title'] ?? 'Uknown',
      description: map['description'] ?? 'Uknown',
      image: map['urlToImage'],
      publishedAt: DateTime.parse(map['publishedAt']),
      content: map['content'] ?? 'Uknown',
      source: map['source']['name'] ?? 'Uknown',
    );
  }
}
