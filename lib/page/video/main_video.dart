import 'package:facebook_clone/page/video/select_catecary.dart';
import 'package:facebook_clone/page/video/video_post.dart';
import 'package:flutter/material.dart';

class MainVideo extends StatelessWidget {
  const MainVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'Videos',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            actions: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 15),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: const Icon(
                  Icons.search_sharp,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10)
            ],
            centerTitle: false,
            expandedHeight: 50,
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            sliver: SliverToBoxAdapter(
              child: VideoCatecary(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const VideoPost();

                
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
