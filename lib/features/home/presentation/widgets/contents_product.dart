import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_radius.dart';
import '../../../../core/resources/manage_widths.dart';

class ContentsProduct extends StatelessWidget {
  const ContentsProduct({
    required this.numberOfOrders,
    required this.numberOfRate,
    required this.price,
    required this.image,
    this.discount,
    this.width,
    super.key,
  });

  final String image;
  final double numberOfOrders;
  final double numberOfRate;
  final double price;
  final double? discount;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ManageRadius.r16),
                  topRight: Radius.circular(ManageRadius.r16),
                ),
                child: Image(
                  image: NetworkImage(image),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  height: ManageHeights.h148,
                ),
              ),
              if (discount != null)
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
                    borderRadius: BorderRadius.circular(ManageRadius.r7),
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
                const Text(
                  'Cocooil',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ManageColors.secondaryColor,
                    fontSize: ManageFontsSizes.s14,
                    fontWeight: ManageFontsWeights.w700,
                  ),
                ),
                discount != null
                    ? Row(
                        children: [
                          Text(
                            '\$$price',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ManageColors.secondaryColorWithOpacity20,
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
                            '\$$discount',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: ManageColors.secondaryColorWithOpacity50,
                              fontSize: ManageFontsSizes.s14,
                              fontWeight: ManageFontsWeights.w700,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        '\$$price',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ManageColors.secondaryColorWithOpacity50,
                          fontSize: ManageFontsSizes.s14,
                          fontWeight: ManageFontsWeights.w700,
                        ),
                      ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: ManageColors.starColor,
                    ),
                    Text(
                      '($numberOfRate) ',
                      style: const TextStyle(
                        color: ManageColors.secondaryColor,
                        fontSize: ManageFontsSizes.s14,
                        fontWeight: ManageFontsWeights.w700,
                      ),
                    ),
                    Text(
                      '$numberOfOrders orders',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
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
  }
}
