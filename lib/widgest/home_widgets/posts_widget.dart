import 'package:facebookui/models/post_model.dart';
import 'package:facebookui/res/colors/colors.dart';
import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({Key? key, required this.postModel}) : super(key: key);

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(postModel.postAuthorImage),
              radius: 22.0,
            ),
            title: Text(
              postModel.postAuthorName,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            subtitle: const Text('4m'),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          if (postModel.textContent != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
              child: Text(
                postModel.textContent!,
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          if (postModel.imageContent != null)
            Center(child: Image.network(postModel.imageContent!)),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('479'),
                Row(
                  children: const [
                    Text('40 Comments'),
                    Text('.'),
                    Text('10 Shares'),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: CustomColors.darkGreyColor,
                  ),
                  label: Text(
                    'Like',
                    style: TextStyle(
                      color: CustomColors.darkGreyColor,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mode_comment_outlined,
                    color: CustomColors.darkGreyColor,
                  ),
                  label: Text(
                    'Comment',
                    style: TextStyle(
                      color: CustomColors.darkGreyColor,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: CustomColors.darkGreyColor,
                  ),
                  label: Text(
                    'Share',
                    style: TextStyle(
                      color: CustomColors.darkGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 10.0,
          ),
        ],
      ),
    );
  }
}
