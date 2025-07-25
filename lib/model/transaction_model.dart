class TransactionModel {
  final String title, time, ammount;
  final bool withdrawal;

  TransactionModel({
    required this.title,
    required this.time,
    required this.ammount,
    required this.withdrawal,
  });
}
