import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_expenses_app/transaction.dart';
import "package:intl/intl.dart";

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", title: "New Shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: "t1",
        title: "Weekly Groceries",
        amount: 16.89,
        date: DateTime.now())
  ];

  String titleInput = "";
  String amountInput = "";
  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  child: Text("Chart!"),
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        autocorrect: true,
                        autofocus: true,
                        decoration: InputDecoration(labelText: "Title "),
                        onChanged: (value) => titleInput = value,
                      ),
                      TextField(
                        autocorrect: true,
                        decoration: InputDecoration(labelText: "Amount "),
                        onChanged: (value) => amountInput = value,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(color: Colors.purple),
                        ),
                        onPressed: () {
                          transactions.add(
                            Transaction(id: "id", title: titleInput, amount: double.parse(amountInput), date: DateTime.now()),
                          );
                          print(titleInput);
                        },
                      ),
                    ]),
              ),
            ),
            Column(
              children: transactions.map((elem) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Colors.blueGrey,
                                style: BorderStyle.solid)),
                        child: Text(
                          "\$${elem.amount}",
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            elem.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 62, 58, 55)),
                          ),
                          Text(
                            DateFormat.yMMMd().format(elem.date),
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
