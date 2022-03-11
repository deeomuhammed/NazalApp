import 'package:flutter/material.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Stpayment.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/TimeTable.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/transaction.dart';

class StudentPayment extends StatelessWidget {
  const StudentPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 58, left: 28, right: 20),
            child: Text(
              'Activity Tools',
              style: TextStyle(
                  fontFamily: 'rh', fontSize: 30, color: Colors.white),
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
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 190, right: 40, left: 40),
          child: Container(
            child: Wrap(
              runSpacing: 60,
              spacing: 40,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return StPayment();
                        })));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 230, 81, 0),
                            Color.fromARGB(255, 248, 136, 75),
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(7, 7, 7, 1).withOpacity(.1),
                              // blurRadius: 80,
                              offset: Offset(7, 10),
                            )
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontFamily: 'rh',
                          fontSize: 16,
                          color: Colors.black.withOpacity(.45)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return StTransaction();
                        })));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 12, 77, 77),
                              Color.fromARGB(255, 72, 165, 165),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(7, 7, 7, 1).withOpacity(.1),
                              // blurRadius: 80,
                              offset: Offset(7, 10),
                            )
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Transaction',
                      style: TextStyle(
                          fontFamily: 'rh',
                          fontSize: 16,
                          color: Colors.black.withOpacity(.45)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return StTimeTable();
                        })));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 12, 77, 77),
                              Color.fromARGB(255, 72, 165, 165),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(7, 7, 7, 1).withOpacity(.1),
                              // blurRadius: 80,
                              offset: Offset(7, 10),
                            )
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Time Table',
                      style: TextStyle(
                          fontFamily: 'rh',
                          fontSize: 16,
                          color: Colors.black.withOpacity(.45)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return StExpenses();
                        })));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 248, 136, 75),
                            Color.fromARGB(255, 230, 81, 0),
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(7, 7, 7, 1).withOpacity(.1),
                              // blurRadius: 80,
                              offset: Offset(7, 10),
                            )
                          ],
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'Expenses ',
                      style: TextStyle(
                          fontFamily: 'rh',
                          fontSize: 16,
                          color: Colors.black.withOpacity(.45)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
