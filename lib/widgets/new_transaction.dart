import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransMeth;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransMeth);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) return;

    addTransMeth(enteredTitle, enteredAmount);
  }

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
            onSubmitted: (_) => submitData(),
            // onChanged: (value) => titleInput = value,
          ),
          TextField(
              keyboardType: TextInputType.number,
              autocorrect: true,
              decoration: InputDecoration(labelText: "Amount "),
              controller: amountController,
              onSubmitted: (_) => submitData()),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              "Add Transaction",
              style: TextStyle(color: Colors.purple),
            ),
            onPressed: submitData,
          ),
        ]),
      ),
    );
  }
}
