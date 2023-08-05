import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/widgets/my_search_field.dart';
import '../widgets/contents_product.dart';
import 'package:flutter/material.dart';
import '../widgets/my_icon_asset.dart';
import '../widgets/my_category.dart';
import '../widgets/department.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ManageColors.c4,
        title: Text(
          'home'.tr.toUpperCase(),
          style: const TextStyle(
            color: ManageColors.secondaryColor,
            fontWeight: ManageFontsWeights.w700,
            fontSize: ManageFontsSizes.s18,
          ),
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
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: ManageWidths.w20,
          end: ManageWidths.w20,
          top: ManageHeights.h20,
        ),
        child: Column(
          children: [
            const MySearchField(
              suffixIcon: MyIconAsset(
                image: ManageAssets.iconToSearch,
                end: ManageWidths.w20,
              ),
            ),
            const SizedBox(height: ManageHeights.h13),
            Expanded(
              child: ListView(
                children: [
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
                  Department(
                    name: 'best_items'.tr,
                    showMore: () {},
                    widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: ManageWidths.w20,
                        mainAxisSpacing: ManageHeights.h20,
                        childAspectRatio: 140 / 180,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const ContentsProduct(
                          image:
                              'https://getcocooil.com/cdn/shop/collections/haircare-364435_1000x1000.jpg?v=1614629676',
                          numberOfOrders: 26,
                          numberOfRate: 4.5,
                          price: 5.35,
                          discount: null,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: ManageHeights.h28),
                  Department(
                    name: 'features'.tr,
                    showMore: () {},
                    widget: SizedBox(
                      height: 225,
                      child: ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: ManageWidths.w15),
                        itemBuilder: (context, index) {
                          return const ContentsProduct(
                            width: 150,
                            image:
                                'https://getcocooil.com/cdn/shop/collections/haircare-364435_1000x1000.jpg?v=1614629676',
                            numberOfOrders: 26,
                            numberOfRate: 4.5,
                            price: 5.35,
                            discount: null,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: ManageHeights.h28),
                  Department(
                    name: 'popular'.tr,
                    showMore: () {},
                    widget: SizedBox(
                      height: 225,
                      child: ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: ManageWidths.w15),
                        itemBuilder: (context, index) {
                          return const ContentsProduct(
                            width: 150,
                            image:
                                'https://getcocooil.com/cdn/shop/collections/haircare-364435_1000x1000.jpg?v=1614629676',
                            numberOfOrders: 26,
                            numberOfRate: 4.5,
                            price: 5.35,
                            discount: null,
                          );
                        },
                      ),
                    ),
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
