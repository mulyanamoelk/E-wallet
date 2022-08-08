import 'package:ewallet/models/transaction.dart';
import 'package:ewallet/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back_ios_new)),
              const Text(
                "Histori Transaksi",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF3D538F)),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: transaction.length,
                itemBuilder: (context, index) {
                  return TransactionItem(transaction: transaction[index]);
                }))
      ],
    );
  }
}
