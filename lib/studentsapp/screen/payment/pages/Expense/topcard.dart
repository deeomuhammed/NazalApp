import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopCard extends StatelessWidget {
  final String balance;
  final String income;
  final String Expense;
  TopCard({
    required this.Expense,
    required this.balance,
    required this.income,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[350],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'B A L A N C E ',
                    style: TextStyle(
                        fontFamily: 'rh',
                        fontSize: 16,
                        color: Colors.grey[500]),
                  ),
                  Text(
                    balance,
                    style: TextStyle(
                        fontFamily: 'rh',
                        fontSize: 30,
                        color: Colors.teal[800]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(children: [
                          Text(
                            'Income',
                            style: TextStyle(
                                fontFamily: 'rh',
                                fontSize: 15,
                                color: Colors.grey[500]),
                          ),
                          Text(
                            income,
                            style: TextStyle(
                                fontFamily: 'rh',
                                fontSize: 13,
                                color: Colors.teal[800]),
                          ),
                        ]),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: [
                            Text(
                              'Expense',
                              style: TextStyle(
                                  fontFamily: 'rh',
                                  fontSize: 15,
                                  color: Colors.grey[500]),
                            ),
                            Text(
                              Expense,
                              style: TextStyle(
                                  fontFamily: 'rh',
                                  fontSize: 13,
                                  color: Colors.teal[800]),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
