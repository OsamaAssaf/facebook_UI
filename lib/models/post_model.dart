class PostModel {
  String postAuthorName;
  String postAuthorImage;
  DateTime publishedAt;
  String? textContent;
  String? imageContent;

  PostModel(
      {required this.postAuthorName,
      required this.postAuthorImage,
      required this.publishedAt,
      this.textContent,
      this.imageContent});
}
