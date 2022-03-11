import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 38, left: 28, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png'),
                        backgroundColor: Colors.white,
                        radius: 16,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Text(
                        'Hi, ',
                        style: TextStyle(
                            fontFamily: 'rh',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      Text(
                        'Muhammed',
                        style: TextStyle(
                            fontFamily: 'rh',
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    ' Let\'s live with us...',
                    style: TextStyle(
                        fontFamily: 'rh',
                        fontSize: 16,
                        color: Colors.black.withOpacity(.45)),
                  ),
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 128, 128),
                  Color.fromARGB(255, 224, 224, 224),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 200,
            ),
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Container(
                  height: 150,
                  width: 330,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 12, 77, 77),
                          Color.fromARGB(255, 72, 165, 165),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 0, 128, 128).withOpacity(.3),
                          // blurRadius: 20,
                          offset: Offset(-6, 10),
                        )
                      ],
                      color: Color.fromARGB(255, 0, 128, 128),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(75),
                          bottomLeft: Radius.circular(75),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(27),
                          child: Image.asset('assests/image/double-bed.png'),
                        ),
                        radius: 55,
                        backgroundColor: Colors.grey[300],
                        // backgroundImage:
                        //     AssetImage('assests/image/double-bed.png'),
                      ),
                      SizedBox(width: 28),
                      Text('Room -1',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'rh',
                              fontWeight: FontWeight.w600,
                              fontSize: 29))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55, bottom: 20),
                  child: Container(
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 128, 128)
                                .withOpacity(.2),
                            // blurRadius: 20,
                            offset: Offset(7, 10),
                          )
                        ],
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 230, 81, 0),
                          Color.fromARGB(255, 248, 136, 75),
                        ]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(75),
                            bottomRight: Radius.circular(75))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Fees Payable',
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontFamily: 'rh',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23)),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.rupeeSign,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                Text('4000',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 247, 245, 245),
                                        fontFamily: 'rh',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 16),
                        CircleAvatar(
                            child: Padding(
                              padding: const EdgeInsets.all(27),
                              child: Image.asset('assests/image/money.png'),
                            ),
                            // backgroundImage: AssetImage('assests/image/money.png'),
                            radius: 55,
                            backgroundColor: Color.fromARGB(255, 0, 128, 128)),
                        SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
