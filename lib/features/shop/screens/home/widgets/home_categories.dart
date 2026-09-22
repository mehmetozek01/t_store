import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_categories.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Başlık
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: TSectionHeading(
            showActionButton: false,
            title: 'Popular Categories',
            textColor: TColors.white,
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        // Kategoriler
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: TSizes.defaultSpace),
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            itemBuilder: (_, index) {
              return TVerticalImageText(
                image: TImages.shoeIcon,
                title: 'Shoes',
                onTap: () => Get.to(() => const SubCategoriesScreen()),
              );
            },
          ),
        ),
      ],
    );
  }
}
