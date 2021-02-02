import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopify_mobile/styles/asset.dart';
import 'package:shopify_mobile/styles/dimen.dart';
import 'package:shopify_mobile/views/widgets/primary_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 114),
                Image.asset(
                  iconApp,
                  width: 72,
                ),
                hSizedBox16,
                Text(
                  'Welcome to Shopify.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                hSizedBox16,
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          spacerCustomScrollView,
          SliverToBoxAdapter(
            child: Padding(
              padding: paddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Your Email',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(iconMessage),
                      ),
                    ),
                  ),
                  hSizedBox8,
                  TextFormField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Your Password',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(iconPassword),
                      ),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: padding,
              child: PrimaryButton(onPressed: () {}, text: 'Login'),
            ),
          ),
        ],
      ),
    );
  }
}
