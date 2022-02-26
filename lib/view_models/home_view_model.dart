import 'package:facebookui/models/post_model.dart';

class HomeViewModel {

  String userImage = 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg';

  List<String> friendsProfileImage = [
    'https://i.pinimg.com/originals/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg',
    'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
    'https://ps.w.org/metronet-profile-picture/assets/icon-128x128.png?rev=2464419',
    'https://i.pinimg.com/originals/bd/cd/4e/bdcd4e097d609543724874b01aa91c76.png',
    'https://as1.ftcdn.net/v2/jpg/03/91/19/22/1000_F_391192211_2w5pQpFV1aozYQhcIw3FqA35vuTxJKrB.jpg',
    'https://wallpapercave.com/wp/wp6710811.jpg',

  ];

  List<String> friendsStory = [
    'https://i.pinimg.com/originals/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg',
    'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
    'https://ps.w.org/metronet-profile-picture/assets/icon-128x128.png?rev=2464419',
    'https://i.pinimg.com/originals/bd/cd/4e/bdcd4e097d609543724874b01aa91c76.png',
    'https://as1.ftcdn.net/v2/jpg/03/91/19/22/1000_F_391192211_2w5pQpFV1aozYQhcIw3FqA35vuTxJKrB.jpg',
    'https://wallpapercave.com/wp/wp6710811.jpg',
  ];

  List<PostModel> posts = [
    PostModel(
      postAuthorImage: 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
      publishedAt: DateTime.now(),
      postAuthorName: 'Osama Assaf',
      textContent: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      imageContent: 'https://i.pinimg.com/originals/bc/d4/ac/bcd4ac32cc7d3f98b5e54bde37d6b09e.jpg',
    ),
    PostModel(
      postAuthorImage: 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
      publishedAt: DateTime.now(),
      postAuthorName: 'Osama Assaf',
      textContent: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    ),
    PostModel(
      postAuthorImage: 'https://bestprofilepictures.com/wp-content/uploads/2021/04/Awesome-Profile-Pic.jpg',
      publishedAt: DateTime.now(),
      postAuthorName: 'Osama Assaf',
      imageContent: 'https://as1.ftcdn.net/v2/jpg/03/91/19/22/1000_F_391192211_2w5pQpFV1aozYQhcIw3FqA35vuTxJKrB.jpg',
    ),
    PostModel(
      postAuthorImage: 'https://picsum.photos/200',
      publishedAt: DateTime.now(),
      postAuthorName: 'Osama Assaf',
      textContent: "t has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      imageContent: 'https://picsum.photos/200/300',
    ),
    PostModel(
      postAuthorImage: 'https://picsum.photos/200',
      publishedAt: DateTime.now(),
      postAuthorName: 'Osama Assaf',
      textContent: "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages",
      imageContent: 'https://picsum.photos/200/300',
    ),


  ];


}
