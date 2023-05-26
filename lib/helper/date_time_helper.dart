import 'package:intl/intl.dart';

class RupiahFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}

class RupiahFormatWithoutRp {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: '',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}

class DateTimeHelper {
  static String getTimeNow() {
    var formatterTime = DateFormat('kk:mm');
    return formatterTime.format(DateTime.now());
  }

  static String getDateNow() {
    var formatterDate = DateFormat('dd/MM/yyyy');
    return formatterDate.format(DateTime.now());
  }

  static String dateConvertInvoice(String date) {
    var formatterDate = DateFormat('d-MMM-yy');
    return formatterDate.format(DateTime.parse(date));
  }
}
