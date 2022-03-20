import 'package:flutter/material.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/Expense.dart';
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
          padding: const EdgeInsets.only(top: 190, right: 30, left: 30),
          child: Container(
            child: Wrap(
              runSpacing: 70,
              spacing: 60,
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
                        child: Image.asset('assests/image/pursecopy.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.transparent,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
                        child: Image.asset('assests/image/graphic_3-2.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.transparent,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
                        child: Image.asset('assests/image/compass.png'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.transparent,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
                        child: Image.asset('assests/image/graphic_2 copy.png'),
                        decoration: BoxDecoration(
                          color: Colors.transparent,

                          borderRadius: BorderRadius.circular(14),
                          // color: Colors.white,
                        ),
                        width: 120,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
