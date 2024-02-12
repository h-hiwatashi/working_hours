// ignore_for_file: constant_identifier_names

enum Months {
  January(displayName: '1月', number: 1),
  February(displayName: '2月', number: 2),
  March(displayName: '3月', number: 3),
  April(displayName: '4月', number: 4),
  May(displayName: '5月', number: 5),
  June(displayName: '6月', number: 6),
  July(displayName: '7月', number: 7),
  August(displayName: '8月', number: 8),
  September(displayName: '9月', number: 9),
  October(displayName: '10月', number: 10),
  November(displayName: '11月', number: 11),
  December(displayName: '12月', number: 12),
  ;

  final String displayName;
  final int number;

  const Months({required this.displayName, required this.number});
}
