class Transaction {
  final int id;
  final String to, amout, date, description;

  Transaction(this.id, this.to, this.amout, this.date, this.description);
}

final List<Transaction> transaction = [
  Transaction(1, 'Shopee', '350.000', '05 Agustus 2022 08:00', 'Pakaian'),
  Transaction(
      2, 'Shopee', '10.000', '06 Agustus 2022 03:00', 'Papan Cas Redmi 4A'),
  Transaction(3, 'Shopee', '145.000', '07 Agustus 2022 09:00', 'Lcd Redmi 4A'),
  Transaction(4, 'Shopee', '145.000', '08 Agustus 2022 10:00', 'Lcd Redmi 5A'),
  Transaction(
      5, 'Shopee', '160.000', '08 Agustus 2022 10:00', 'Lcd Redmi 6A Incell'),
  Transaction(6, 'Shopee', '170.000', '09 Agustus 2022 11:00', 'Lcd Redmi 7A'),
  Transaction(7, 'Shopee', '180.000', '10 Agustus 2022 11:00', 'Lcd Redmi 8A'),
  Transaction(8, 'Shopee', '200.000', '10 Agustus 2022 11:00', 'Lcd Redmi 9A'),
  Transaction(9, 'Shopee', '145.000', '11 Agustus 2022 12:00', 'Lcd Redmi 4x'),
  Transaction(10, 'Shopee', '195.000', '12 Agustus 2022 12:00',
      'Lcd Samsung J2 Pro Oled'),
];
