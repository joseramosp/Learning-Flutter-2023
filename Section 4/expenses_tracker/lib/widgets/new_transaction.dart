import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(
    this.addTx, {
    super.key,
  });

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            // onChanged: (val) {
            //   titleInput = val;
            // },
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Amount',
            ),
            // onChanged: (val) {
            //   amountInput = val;
            // },
            controller: amountController,
          ),
          TextButton(
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
              // print(titleController.text);
              // print(amountController.text);
            },
            child: const Text(
              'Add Transaction',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
