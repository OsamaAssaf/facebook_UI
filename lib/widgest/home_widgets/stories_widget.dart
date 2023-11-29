import 'package:facebookui/res/colors/colors.dart';
import 'package:facebookui/view_models/home_view_model.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatefulWidget {
  const StoriesWidget({Key? key}) : super(key: key);

  @override
  State<StoriesWidget> createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  late ScrollController _scrollController;

  final HomeViewModel _homeViewModel = HomeViewModel();

  @override
  void initState() {
    _scrollController = ScrollController(
      initialScrollOffset: 128.0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _homeViewModel.friendsStory.length + 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      CustomColors.greenColor,
                      CustomColors.blueColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20.0,
                          ),
                        ]),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.0,
                          child: IconButton(
                            onPressed: () {},
                            color: Colors.white,
                            icon: const Icon(
                              Icons.music_note_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Text(
                        'Music',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(color: Colors.black26, blurRadius: 20.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else if (index == 1) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey[500]!, width: 2.0)),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[200],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.network(
                        _homeViewModel.userImage,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 100.0,
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 17.0,
                          backgroundColor: CustomColors.blueColor,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 32.0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 8.0,
                      child: Text(
                        'Create Story',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        _homeViewModel.friendsStory[index - 2],
                        fit: BoxFit.cover,
                        width: 120,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 8.0,
                      left: 8.0,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: CustomColors.blueColor, width: 2.0),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            _homeViewModel.friendsStory[index - 2],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
