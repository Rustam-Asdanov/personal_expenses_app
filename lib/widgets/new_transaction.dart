import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            autocorrect: true,
            autofocus: true,
            controller: titleController,
            decoration: InputDecoration(labelText: "Title "),
            // onChanged: (value) => titleInput = value,
          ),
          TextField(
            autocorrect: true,
            decoration: InputDecoration(labelText: "Amount "),
            controller: amountController,
            // onChanged: (value) => amountInput = value,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              "Add Transaction",
              style: TextStyle(color: Colors.purple),
            ),
            onPressed: () {
              
            },
          ),
        ]),
      ),
    );
  }
}
