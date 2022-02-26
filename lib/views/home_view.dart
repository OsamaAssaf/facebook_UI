import 'package:facebookui/models/post_model.dart';
import 'package:facebookui/view_models/home_view_model.dart';
import 'package:facebookui/widgest/home_widgets/posts_widget.dart';
import 'package:flutter/material.dart';

import '../res/colors/colors.dart';
import '../widgest/home_widgets/stories_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final HomeViewModel _homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Profile-Picture.jpg'),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "What's on your mind?",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(color: Colors.grey)),
                            ),
                            alignment: Alignment.centerLeft),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.live_tv_rounded,
                        color: CustomColors.redColor,
                      ),
                      label: Text(
                        'Live',
                        style: TextStyle(color: CustomColors.darkGreyColor),
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                      indent: 16.0,
                      endIndent: 16.0,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_library_outlined,
                        color: CustomColors.greenColor,
                      ),
                      label: Text(
                        'Photo',
                        style: TextStyle(color: CustomColors.darkGreyColor),
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                      indent: 16.0,
                      endIndent: 16.0,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.live_tv_rounded,
                        color: CustomColors.purpleColor,
                      ),
                      label: Text(
                        'Room',
                        style: TextStyle(color: CustomColors.darkGreyColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Audio and Video Rooms',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Create Room',
                        style: TextStyle(
                            color: CustomColors.blueColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue.withOpacity(0.2)),
                        elevation: MaterialStateProperty.all<double>(0.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _homeViewModel.friendsProfileImage.length,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        _homeViewModel
                                            .friendsProfileImage[index],
                                      ),
                                      radius: 18.0,
                                    ),
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                                content: Image.network(
                                                    _homeViewModel
                                                            .friendsProfileImage[
                                                        index]),
                                              ));
                                    },
                                  ),
                                  Positioned(
                                    child: CircleAvatar(
                                      backgroundColor: CustomColors.greenColor,
                                      radius: 6,
                                    ),
                                    bottom: 1,
                                    right: 1,
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 10.0,
          ),
          const StoriesWidget(),
          const Divider(
            thickness: 10.0,
          ),
          Expanded(
            flex: 0,
            child: ListView.builder(
              itemCount: _homeViewModel.posts.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return PostsWidget(
                  postModel: _homeViewModel.posts[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
