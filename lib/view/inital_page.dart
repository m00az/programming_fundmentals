import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:programmig_fundmentals_main/view/home/home_page.dart';
import 'package:programmig_fundmentals_main/view/setting_views/settings.dart';
import 'package:programmig_fundmentals_main/view/youtube_channels/youtube_channels.dart';

class InitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.093),
          child: AppBar(
            backgroundColor: Color(0xFF284B63),
            bottom: TabBar(
              
              indicatorColor: Colors.white,
              labelColor: Colors.white, // لون النص للتبويب النشط
              unselectedLabelColor:
                  Colors.grey[100], // لون النص للتبويبات الغير نشطة
              labelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                    icon: Icon(FontAwesomeIcons.house,
                        size: 18, color: Colors.white),
                    text: 'Home'), // حجم الأيقونة 18
                Tab(
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                      size: 18,
                      color: Colors.red[700],
                    ),
                    text: 'Youtube Channels'),
                Tab(
                    icon: Icon(FontAwesomeIcons.gear,
                        size: 18, color: Colors.white),
                    text: 'Settings'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              body: HomePage(),
            ),
            Scaffold(
              body: YoutubeChannels(),
            ),
            Scaffold(
              body: Setting(),
            )
          ],
        ),
      ),
    );
  }
}
