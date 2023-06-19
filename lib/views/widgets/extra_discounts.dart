import 'package:flutter/material.dart';
import 'package:myntra_clone/config/constants.dart';


class ExtraDiscountsWidget extends StatelessWidget {
  const ExtraDiscountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => sbWidth10,
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 150,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1597843572347-e66b3eeb7b79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbiUyMG1vZGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          padding: EdgeInsets.all(3),
                          color: blackColor,
                          child: Text(
                            "TUE 20, 10: 00 AM",
                            style: whiteStyle,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Budget Buys - EthnicWear Special...",
                                style: whiteStyle,
                                maxLines: 2,
                              ),
                              sbHeight10,
                              Text("Highlander",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey))
                            ],
                          ),
                        )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
