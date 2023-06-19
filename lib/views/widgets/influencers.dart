import 'package:flutter/material.dart';
import 'package:myntra_clone/config/constants.dart';


class InfluencersWidget extends StatelessWidget {
  const InfluencersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => sbWidth20,
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 75,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                        "https://images.unsplash.com/photo-1583195763986-0231686dcd43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbiUyMHBvcnRyYWl0fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.cover),
                  ),
                ),
                Text("CASUAL WEAR", style: TextStyle(fontSize: 10, height: 2))
              ],
            );
          }),
    );
  }
}