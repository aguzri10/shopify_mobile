import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopify_mobile/core/models/category.dart';
import 'package:shopify_mobile/core/models/flashsale.dart';
import 'package:shopify_mobile/styles/asset.dart';
import 'package:shopify_mobile/styles/colors.dart';
import 'package:shopify_mobile/styles/dimen.dart';
import 'package:shopify_mobile/views/widgets/custom_inkwell.dart';
import 'package:shopify_mobile/views/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: padding,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        hintText: 'Cari Produk',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(iconSearch),
                        ),
                        prefixIconConstraints: BoxConstraints(maxHeight: 34),
                      ),
                    ),
                  ),
                  wSizedBox8,
                  CustomInkwell(
                    onTap: () {},
                    radius: 8,
                    child: SvgPicture.asset(iconLove),
                  ),
                ],
              ),
            ),
          ],
        ),
        shape: Border(
          bottom: BorderSide(
            width: 1,
            color: primaryColorNormal.withOpacity(0.25),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: hSizedBox16),
          SliverToBoxAdapter(
            child: Padding(
              padding: paddingHorizontal,
              child: Container(
                height: 206,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(promotionImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Super Flash Sale',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      hSizedBox4,
                      Text(
                        '50% Off',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            child: Text(
                              '08',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: grayscale1,
                              ),
                            ),
                          ),
                          wSizedBox8,
                          Text(
                            ':',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          wSizedBox8,
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            child: Text(
                              '34',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: grayscale1,
                              ),
                            ),
                          ),
                          wSizedBox8,
                          Text(
                            ':',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          wSizedBox8,
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            child: Text(
                              '52',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: grayscale1,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: paddingHorizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: grayscale1,
                        ),
                      ),
                      Text(
                        'Kategori Lainnya',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: primaryColorNormal.withOpacity(0.60),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) {
                      final category = categories[i];

                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: primaryColorNormal.withOpacity(0.20),
                              ),
                            ),
                            child: SvgPicture.asset(category.icon, width: 24),
                          ),
                          hSizedBox8,
                          Text(
                            category.name,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: grayscale2,
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (c, i) {
                      return wSizedBox16;
                    },
                    itemCount: categories.length,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: paddingHorizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: grayscale1,
                        ),
                      ),
                      Text(
                        'Lihat Lainnya',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: primaryColorNormal.withOpacity(0.60),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                AspectRatio(
                  aspectRatio: 1.75,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: paddingHorizontal,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) {
                      final flashsale = flashsales[i];

                      return ProductWidget(flashsale: flashsale);
                    },
                    separatorBuilder: (c, i) {
                      return wSizedBox16;
                    },
                    itemCount: flashsales.length,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
