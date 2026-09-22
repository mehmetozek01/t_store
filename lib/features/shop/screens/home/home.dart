import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///-- Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///-- Searchbar
                  TSearchContainer(text: 'Search in Store', showBorder: false),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories
                  // Padding(
                  //   padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  //   child: Column(
                  //     children: [
                  //       /// -- Heading
                  //       TSectionHeading(
                  //         title: 'Popular Categories',
                  //         showActionButton: false,
                  //         textColor: Colors.white,
                  //       ),
                  //       SizedBox(height: TSizes.spaceBtwSections),

                  //       /// Categories
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace,
                    ),
                    child: TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                    ),
                  ),
                  SizedBox(height: TSizes.defaultSpace / 2),
                  THomeCategories(),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Popular Products
                  TGridLayout(
                    itemCount: 2,
                    itembuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
