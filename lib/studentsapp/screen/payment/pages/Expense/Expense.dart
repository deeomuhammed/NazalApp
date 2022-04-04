import 'package:flutter/material.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/gsheets.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/plusbutton.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/topcard.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/transactions.dart';

class StExpenses extends StatelessWidget {
  const StExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[350],
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const TopCard(
                income: '1000',
                Expense: '100',
                balance: '900',
              ),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: Gsheet.currentTransactions.length,
                        itemBuilder: ((context, index) {
                          return Transactions(
                            money: Gsheet.currentTransactions[index][0],
                            transactionName: Gsheet.currentTransactions[index]
                                [1],
                            expenseOrIncome: Gsheet.currentTransactions[index]
                                [2],
                          );
                        }),
                      ),
                    )
                  ],
                ),
              )),
              const PlusButton()
            ],
          ),
        ),
      ),
    );
  }
}
