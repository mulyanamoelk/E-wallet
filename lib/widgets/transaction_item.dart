import 'package:ewallet/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                width: 35,
                height: 35,
                child: Center(
                  child: Text(
                    transaction.to
                        .split(" ")
                        .map((e) => e.substring(0, 1))
                        .toList()
                        .join(),
                    style: const TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  transaction.to,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF3d538f)),
                ),
              ),
              Text(
                transaction.date,
                style: const TextStyle(color: Color(0XFF3d538f), fontSize: 14),
              )
            ],
          )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "- Rp. ${transaction.amout}",
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                transaction.description,
                style: const TextStyle(color: Color(0XFF3d538f), fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
