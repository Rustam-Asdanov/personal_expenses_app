import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t1",
        title: "Weekly Groceries",
        amount: 16.89,
        date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTrans = Transaction(
        id: Uuid().v1(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

        setState(() {
          _userTransactions.add(newTrans);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
