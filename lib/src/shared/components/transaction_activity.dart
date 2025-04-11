import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransactionActivity extends StatelessWidget {
  final List<String?>? titles;
  final List<String?>? subTitles;
  final List<Widget?>? images;
  final int? itemCount;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const TransactionActivity({
    super.key,
    this.titles,
    this.subTitles,
    this.images,
    this.itemCount,
    this.width,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          itemCount ?? 0,
          (index) => Item(
            width: width,
            gradientColor: LinearGradient(
              colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            margin: margin ?? const EdgeInsets.only(right: 10),
            padding: padding ?? const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      images != null && index < images!.length
                          ? images![index]
                          : const SizedBox(),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        titles != null && index < titles!.length
                            ? titles![index] ?? "title"
                            : "title",
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        subTitles != null && index < subTitles!.length
                            ? subTitles![index] ?? "Sub Title"
                            : "Sub Title",
                        style: TextStyle(
                          color: white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
