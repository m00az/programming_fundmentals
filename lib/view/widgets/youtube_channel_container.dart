import 'package:flutter/material.dart';

class YoutubeChannelContainer extends StatelessWidget {
  const YoutubeChannelContainer({
    super.key,
    required this.channelName,
    required this.subscribers,
    required this.description,
    required this.imageUrl,
  });
  final String channelName;
  final int subscribers;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF284B63).withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.height * 0.055,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    channelName,
                  ),
                  Text(
                    "$subscribers Subscribers",
                  ),
                  Text(description,
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
