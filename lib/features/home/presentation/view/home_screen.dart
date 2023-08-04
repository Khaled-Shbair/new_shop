import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_radius.dart';
import '../../../../core/resources/manage_text_style.dart';
import '../../../../core/resources/manage_widths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/my_category.dart';
import '../widgets/my_icon_asset.dart';
import '../../../../core/widgets/my_search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'home'.tr.toUpperCase(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        leading: MyIconAsset(
          start: ManageWidths.w20,
          image: ManageAssets.menuIcon,
          onPressed: () {},
        ),
        actions: [
          MyIconAsset(
            image: ManageAssets.codeScanningIcon,
            onPressed: () {},
            end: ManageWidths.w17,
          ),
          MyIconAsset(
            image: ManageAssets.shoppingCartIcon,
            onPressed: () {},
            end: ManageWidths.w20,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          start: ManageWidths.w20,
          end: ManageWidths.w20,
          top: ManageHeights.h20,
        ),
        children: [
          const MySearchField(
            suffixIcon: MyIconAsset(
              image: ManageAssets.iconToSearch,
              end: ManageWidths.w20,
            ),
          ),
          const SizedBox(height: ManageHeights.h13),
          SizedBox(
            height: ManageHeights.h104,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) =>
                  const SizedBox(width: ManageWidths.w8),
              itemBuilder: (context, index) {
                return MyCategory(
                  image: ManageAssets.meats,
                  text: 'meats'.tr,
                );
              },
            ),
          ),
          const SizedBox(height: ManageHeights.h23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('best_items'.tr, style: ManageTextStyle.s18TextStyle700),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManageColors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ManageRadius.r50),
                    side: BorderSide(
                      color: ManageColors.secondaryColorWithOpacity50,
                      width: 2,
                    ),
                  ),
                ),
                child: Text('show_more'.tr),
              ),
            ],
          ),
          const SizedBox(height: ManageHeights.h12),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: ManageWidths.w20,
              mainAxisSpacing: ManageHeights.h20,
              childAspectRatio: 140 / 180,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsetsDirectional.zero,
                decoration: BoxDecoration(
                  color: ManageColors.white,
                  borderRadius: BorderRadius.circular(ManageRadius.r16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ManageRadius.r16),
                            topRight: Radius.circular(ManageRadius.r16),
                          ),
                          child: Image(
                            image: NetworkImage(
                              'https://getcocooil.com/cdn/shop/collections/haircare-364435_1000x1000.jpg?v=1614629676',
                            ),
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                            width: ManageWidths.infinity,
                            height: ManageHeights.h148,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.only(
                            top: ManageHeights.h8,
                            start: ManageWidths.w8,
                            end: ManageWidths.w8,
                          ),
                          padding: const EdgeInsetsDirectional.only(
                            top: ManageHeights.h4,
                            bottom: ManageHeights.h4,
                            start: ManageWidths.w8,
                            end: ManageWidths.w8,
                          ),
                          decoration: BoxDecoration(
                            color: ManageColors.redColor,
                            borderRadius:
                                BorderRadius.circular(ManageRadius.r7),
                          ),
                          child: Text(
                            'discount'.tr,
                            style: const TextStyle(
                              color: ManageColors.white,
                              fontSize: ManageFontsSizes.s12,
                              fontWeight: ManageFontsWeights.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: ManageWidths.w4,
                        end: ManageWidths.w4,
                        top: ManageHeights.h4,
                        bottom: ManageHeights.h4,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cocooil',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ManageColors.secondaryColorWithOpacity50,
                              fontSize: ManageFontsSizes.s14,
                              fontWeight: ManageFontsWeights.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$5.35',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color:
                                      ManageColors.secondaryColorWithOpacity20,
                                  fontSize: ManageFontsSizes.s14,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: ManageColors.c6,
                                  fontWeight: ManageFontsWeights.w700,
                                ),
                              ),
                              const SizedBox(
                                width: ManageWidths.w8,
                              ),
                              Text(
                                '\$5.30',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color:
                                      ManageColors.secondaryColorWithOpacity50,
                                  fontSize: ManageFontsSizes.s14,
                                  fontWeight: ManageFontsWeights.w700,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: ManageColors.starColor,
                              ),
                              Text(
                                '(5.0) ',
                                style: TextStyle(
                                  color: ManageColors.secondaryColor,
                                  fontSize: ManageFontsSizes.s14,
                                  fontWeight: ManageFontsWeights.w700,
                                ),
                              ),
                              Text(
                                '26 orders',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: ManageColors.secondaryColor,
                                  fontSize: ManageFontsSizes.s12,
                                  fontWeight: ManageFontsWeights.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
