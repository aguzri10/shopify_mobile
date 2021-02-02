import 'package:flutter/material.dart';
import 'package:shopify_mobile/core/models/flashsale.dart';
import 'package:shopify_mobile/core/services/utils.dart';
import 'package:shopify_mobile/styles/colors.dart';
import 'package:shopify_mobile/styles/dimen.dart';
import 'package:shopify_mobile/views/widgets/custom_inkwell.dart';

class ProductWidget extends StatelessWidget {
  final FlashsaleModel flashsale;
  final double width;

  const ProductWidget({Key key, this.flashsale, this.width = 141})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomInkwell(
      onTap: () {},
      radius: 4,
      child: Container(
        padding: padding,
        width: width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: primaryColorNormal.withOpacity(0.20)),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.network(
                  flashsale.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            hSizedBox16,
            Text(
              flashsale.name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: grayscale1,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            hSizedBox16,
            if (flashsales[0].discount != null) ...[
              Text(
                Utils.getDiscountPrice(
                  double.parse(flashsale.originalPrice.toString()),
                  double.parse(flashsale.discount.toString()),
                ),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: primaryColorNormal,
                ),
              )
            ],
            if (flashsale.discount == null) ...[
              Text(
                Utils.getCurrencyWithRp(
                  double.parse(flashsale.originalPrice.toString()),
                ),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: primaryColorNormal,
                ),
              )
            ],
            hSizedBox16,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Utils.getCurrencyWithRp(
                    double.parse(flashsale.originalPrice.toString()),
                  ),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: grayscale2,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                wSizedBox4,
                Text(
                  '${flashsale.discount}% Off',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: colorRed1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
