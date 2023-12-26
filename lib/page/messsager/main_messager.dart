import 'package:facebook_clone/page/messsager/chat_item.dart';
import 'package:facebook_clone/page/messsager/item_catecary.dart';
import 'package:facebook_clone/page/messsager/online_row.dart';
import 'package:facebook_clone/page/messsager/search_bar.dart';
import 'package:flutter/material.dart';

class MainMessage extends StatelessWidget {
  const MainMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'chats',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

            actions: const [
              Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.note_alt_outlined,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(width: 10),
            ],
            centerTitle: true,
            expandedHeight: 50,
            pinned: true,
            // flexibleSpace: FlexibleSpaceBar(),
          ),
          const SliverToBoxAdapter(
            child: Barsearch(),
          ),
          const SliverToBoxAdapter(
            child: OnlineBar(),
          ),
          const SliverToBoxAdapter(
            child: ItemChoose(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const ChatItem();
            }, childCount: 10),
          )
        ],
      ),
    );
  }
}
