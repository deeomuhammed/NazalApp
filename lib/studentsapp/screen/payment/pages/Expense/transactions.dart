import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  final String transactionName;
  final String money;
  final String expenseOrIncome;

  const Transactions({
    required this.transactionName,
    required this.money,
    required this.expenseOrIncome,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        color: Colors.grey[200],
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              transactionName,
              style: TextStyle(color: Colors.teal[800], fontSize: 17),
            ),
            Text((expenseOrIncome == 'expense' ? '- ' : '+ ') + money,
                style: TextStyle(
                    fontSize: 17,
                    color: expenseOrIncome == 'expense'
                        ? Colors.red
                        : Colors.green)),
          ],
        ),
      ),
    );
  }
}
