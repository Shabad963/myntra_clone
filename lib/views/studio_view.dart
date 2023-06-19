import 'package:flutter/material.dart';
import 'package:myntra_clone/config/constants.dart';
import 'package:myntra_clone/views/widgets/extra_discounts.dart';
import 'package:myntra_clone/views/widgets/extra_offers.dart';
import 'package:myntra_clone/views/widgets/influencers.dart';
import 'package:myntra_clone/views/widgets/video_list.dart';

class StudioView extends StatelessWidget {
  StudioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text('Studio', style: blackStyle),
        actions: [
          Icon(
            Icons.search,
            color: blackColor,
          ),
          sbWidth20,
          Icon(
            Icons.save,
            color: blackColor,
          ),
          sbWidth20,
          Icon(
            Icons.settings,
            color: blackColor,
          ),
          sbWidth10
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbHeight20,
              Text("Guide to Influencer's Most Coveted Looks",
                  style: blackTxt15),
              sbHeight20,
              InfluencersWidget(),
              sbHeight20,
              Divider(
                thickness: 8,
              ),
              sbHeight20,
              Row(
                children: [
                  Icon(Icons.tv),
                  Text(" Extra Discounts On Sale Prices!", style: blackTxt15),
                  sbWidth30,
                  Text("VIEW ALL", style: TextStyle(color: Colors.pinkAccent)),
                ],
              ),
              sbHeight20,
              ExtraDiscountsWidget(),
              sbHeight20,
              Text("Exciting Offers on Curated Brands", style: blackTxt15),
              sbHeight20,
              ExtraOffersWidget(),
              sbHeight20,
              Divider(thickness: 12),
              sbHeight20,
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Text("NEW", style: whiteStyle),
                ),
              ),
              sbHeight20,
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(" Shop at Sale Prices!", style: blackTxt15),
                 
                  Text("VIEW ALL ", style: TextStyle(color: Colors.pinkAccent)),                                    
                ],
              ),
              VideoListView(),
              sbHeight20,
              ExtraOffersWidget(),
              sbHeight20,
            ],
          ),
        ),
      ),
    );
  }
}
