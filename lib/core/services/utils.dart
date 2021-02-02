import 'package:intl/intl.dart';

class Utils {
  static String getCurrencyWithRp(double idr) {
    if (idr != null) {
      final currency = NumberFormat("Rp ###,###.###", "ID").format(idr);
      return currency.toString();
    }
    return '0';
  }

  static String getDiscountPrice(double originalPrice, double discount) {
    if (originalPrice != null && discount != null) {
      double discountPrice = 0;
      var math = (discount / 100) * originalPrice;
      discountPrice = originalPrice - math;

      return '${getCurrencyWithRp(discountPrice)}';
    } else {
      return '';
    }
  }
}
