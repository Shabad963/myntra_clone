import 'package:flutter/material.dart';
import 'package:myntra_clone/config/constants.dart';


class ExtraOffersWidget extends StatelessWidget {
  const ExtraOffersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => sbWidth10,
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              height: 280,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.green,
                      Colors.blue,
                      Colors.yellow,
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Stack(
                  children: [
                    Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black54,
                            ]),
                      ),
                      child: Image.network(
                          "https://images.unsplash.com/photo-1617137968427-85924c800a22?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwbW9kZWx8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: EdgeInsets.all(3),
                          color: whiteColor,
                          child: Text(
                            "Pranjal salecha",
                            style: blackStyle,
                          )),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                    "https://s3.amazonaws.com/zaubatrademarks/7f8145e6-1627-4ee3-ab5f-016c2aa345db.png",
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Text(
                              "UP TO 70% OFF",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Casualwear Gems", style: whiteStyle),
                            sbHeight10,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

