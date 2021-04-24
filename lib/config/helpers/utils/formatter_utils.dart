import 'package:intl/intl.dart';

String toNumber(int value) {
  final formatter = new NumberFormat("#,###");
  return formatter.format(value);
}

String toDate(int value) {
  final f = new DateFormat('dd-MM-yyyy HH:mm');
  return f.format(new DateTime.fromMillisecondsSinceEpoch(value * 1000));
}

String epochToDate(String value) {
  var stringToInt = int.parse(value);

  ///parse epoch to datetime format
  var date = DateTime.fromMillisecondsSinceEpoch(stringToInt * 1000);
  var formattedDate =
      DateFormat.yMMMd().format(date) + " " + DateFormat.jm().format(date);
  return formattedDate;
}
