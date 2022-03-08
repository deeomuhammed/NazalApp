import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:nazalapp/adminapp/screens/Home/detail.dart';

class Roomcard extends StatefulWidget {
  const Roomcard({Key? key}) : super(key: key);

  @override
  State<Roomcard> createState() => _RoomcardState();
}

class _RoomcardState extends State<Roomcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      height: 350,
      child: Swiper(
        itemBuilder: (context, index) {
          return DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Text(
                          'ROOM - 1',
                          style: TextStyle(
                              fontFamily: 'baloo',
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset(
                        'assests/image/Sleep analysis-amico (1).png',
                        width: 200,
                      ),
                      card2(),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color: Colors.white,
              ),
            ),
          );
        },
        itemCount: 3,
        viewportFraction: .70,
        scale: .7,
        loop: false,
      ),
    );
  }
}
