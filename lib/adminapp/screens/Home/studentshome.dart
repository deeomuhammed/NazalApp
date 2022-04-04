import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Studentscard extends StatefulWidget {
  const Studentscard({Key? key}) : super(key: key);

  @override
  State<Studentscard> createState() => _StudentscardState();
}

class _StudentscardState extends State<Studentscard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: Swiper(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Column(
                children: [
                  const Text('Muhammed DO',
                      style: TextStyle(
                          fontFamily: 'baloo',
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('Paid',
                            style: TextStyle(
                                fontFamily: 'baloo',
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
          );
        },
        itemCount: 4,
        viewportFraction: .70,
        scale: 1,
        loop: false,
      ),
    );
  }
}
