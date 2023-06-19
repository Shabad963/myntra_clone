import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:myntra_clone/config/constants.dart';
import 'package:myntra_clone/views/widgets/video_widget.dart';

class VideoListView extends StatelessWidget {
  VideoListView({
    super.key,
  });

  final List<String> items = [
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 
    'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4', 
   'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4', 
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: InViewNotifierList(
        scrollDirection: Axis.horizontal,
        initialInViewIds: ['0'],
        isInViewPortCondition:
            (double deltaLeft, double deltaRight, double viewPortDimension) {
          return (deltaLeft < 0.5 * viewPortDimension) &&
              (deltaRight > 0.5 * viewPortDimension);
        },
        itemCount: items.length,
        builder: (BuildContext context, int index) {
          return SizedBox(
             width: 120,
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 180,
                  decoration:
                              BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.all(8),
                  
                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(8),
                    child: InViewNotifierWidget(
                      id: '$index',
                      builder: (BuildContext context, bool isInView, Widget? child) {
                        return Stack(
                          children: [
                            VideoWidget(play: isInView, url: items[index]),
                           isInView ?  SizedBox() : Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.play_circle_filled_rounded,color: whiteColor),
                  ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                         borderRadius: BorderRadius.circular(8),
                        child: Container(
                            padding: EdgeInsets.all(3),
                            color: blackColor,
                            child: Text(
                              "00:16",
                              style: whiteStyle,
                            )),
                      ),
                    ),
                  ),
                  
              ],
            ),
          );
        },
      ),
    );
  }
}
