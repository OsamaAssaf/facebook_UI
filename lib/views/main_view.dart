import 'package:facebookui/res/colors/colors.dart';
import 'package:facebookui/view_models/main_view_model.dart';
import 'package:facebookui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> with TickerProviderStateMixin {
  MainViewModel mainViewModel = MainViewModel();
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int numberOfMessages = Provider.of<MainViewModel>(context).numberOfMessages;
    bool hasMessages = numberOfMessages > 0 ? true : false;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarColor: Colors.black.withOpacity(0.5),
          ),
          child: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return [
                  SliverAppBar(
                    title: Text(
                      'facebook',
                      style: TextStyle(
                          color: CustomColors.blueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0),
                    ),
                    backgroundColor: Colors.white,
                    actions: [
                      CircleAvatar(
                        backgroundColor: CustomColors.lightGreyColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          backgroundColor: CustomColors.lightGreyColor,
                          child: IconButton(
                            onPressed: () {},
                            icon: badges.Badge(
                              badgeContent: Text('$numberOfMessages'),
                              showBadge: hasMessages,
                              child: const Icon(
                                Icons.message_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SliverAppBar(
                    toolbarHeight: 0.0,
                    backgroundColor: Colors.white,
                    pinned: true,
                    bottom: TabBar(
                      labelColor: CustomColors.blueColor,
                      unselectedLabelColor: CustomColors.darkGreyColor,
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          icon: Icon(
                            Icons.home_outlined,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.group_outlined,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.ondemand_video,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.notifications_none_outlined,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.menu,
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  HomeView(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
