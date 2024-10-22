import 'package:flutter/material.dart';

import '../widgets/youtube_channel_container.dart';

class YoutubeChannels extends StatelessWidget {
  const YoutubeChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.055),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF284B63),
            title: Text(
              "Youtube Channels",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: [
              YoutubeChannelContainer(channelName: 'Channel 1', subscribers: 1000000, description: 'this is channel 1 description', imageUrl: 'assets/images/codezilla.jpg',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 2', subscribers: 2500000, description: 'this is channel 2 description', imageUrl: 'assets/images/welcome.png',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 3', subscribers: 8500000, description: 'this is channel 3 description', imageUrl: 'assets/images/feture.png',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 4', subscribers: 6000000, description: 'this is channel 4 description', imageUrl: 'assets/images/codezilla.jpg',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 5', subscribers: 8000000, description: 'this is channel 5 description', imageUrl: 'assets/images/lan.png',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 6', subscribers: 7800000, description: 'this is channel 6 description', imageUrl: 'assets/images/welcome.png',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 7', subscribers: 8555555, description: 'this is channel 7 description', imageUrl: 'assets/images/codezilla.jpg',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 8', subscribers: 32500000, description: 'this is channel 8 description', imageUrl: 'assets/images/welcome.png',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 9', subscribers: 98000000, description: 'this is channel 9 description', imageUrl: 'assets/images/codezilla.jpg',),
              const SizedBox(height: 10),
              YoutubeChannelContainer(channelName: 'Channel 10', subscribers: 7800000, description: 'this is channel 10 description', imageUrl: 'assets/images/lan.png',),
              const SizedBox(height: 10),
            ]));
  }
}
