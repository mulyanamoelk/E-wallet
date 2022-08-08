import 'package:ewallet/models/transaction.dart';
import 'package:ewallet/widgets/menu_box.dart';
import 'package:ewallet/widgets/transaction_detail.dart';
import 'package:ewallet/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.white10],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('assets/stige.png'),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Stige IT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Saldo',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Rp. 2,000,000,000',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuBox(icon: Icons.send_rounded, text: 'Kirim'),
                    MenuBox(
                        icon: Icons.account_balance_wallet_rounded,
                        text: 'Terima'),
                    MenuBox(icon: Icons.payment, text: 'Bayar'),
                    MenuBox(icon: Icons.more_horiz, text: 'Lainnya')
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(45))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 25),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Transaksi Terakhir',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            GestureDetector(
                              onTap: (() {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext ctx) {
                                      return const TransactionDetail();
                                    });
                              }),
                              child: Text(
                                textAlign: TextAlign.right,
                                'Lihat semua',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return TransactionItem(
                                transaction: transaction[index]);
                          },
                          itemCount: transaction.length,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
