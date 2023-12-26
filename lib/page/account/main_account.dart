import 'package:facebook_clone/page/account/setting_catecary.dart';
import 'package:facebook_clone/page/account/sub_account.dart';
import 'package:facebook_clone/page/friend/button_see_all.dart';

import 'package:flutter/material.dart';

class MyMainAccount extends StatelessWidget {
  const MyMainAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.grey[100],
            title: const Text(
              'Menu',
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
              const SizedBox(
                width: 15,
              ),
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
            pinned: true,
            // flexibleSpace: FlexibleSpaceBar(),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            sliver: SliverToBoxAdapter(child: Account()),
          ),
          const SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'All shortcuts',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              mainAxisExtent: 120,

              // childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            accountsettinglist[index].logo,
                            width: 45,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 9),
                          Text(
                            accountsettinglist[index].label,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: accountsettinglist.length,
            ),
          ),

          ///
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: ButtonSeeAll(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingCartecaries(
              icon: 'assets/images/live.png',
              text: 'Help & Support',
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingCartecaries(
              icon: 'assets/images/setting.png',
              text: 'Setting & privacy',
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SettingCartecaries(
              icon: 'assets/images/sad.png',
              text: 'Also from Meta',
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            sliver: SliverToBoxAdapter(
              child: ButtonSeeAll(),
            ),
          ),
        ],
      ),
    );
  }
}

class Settingitem {
  final String logo;
  final String label;
  Settingitem({
    required this.label,
    required this.logo,
  });
}

var accountsettinglist = [
  Settingitem(label: 'Share', logo: 'assets/images/share.png'),
  Settingitem(label: 'Share', logo: 'assets/images/live.png'),
  Settingitem(label: 'Share', logo: 'assets/images/share.png'),
  Settingitem(label: 'Groups', logo: 'assets/images/icon_group.png'),
  Settingitem(label: 'Share', logo: 'assets/images/share.png'),
  Settingitem(label: 'Groups', logo: 'assets/images/icon_group.png'),
  Settingitem(label: 'Share', logo: 'assets/images/live.png'),
  Settingitem(label: 'Share', logo: 'assets/images/share.png'),
];
