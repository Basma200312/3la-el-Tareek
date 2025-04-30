import 'package:ala_el_tareek/core/app_assets.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://ramallah.news/thumb/1200x630/uploads//images/189cac69fac71448dec0eba7a9e7a5fc.jpg',
      'https://images.akhbarelyom.com/images/images/large/20250411073625890.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGxdFis7p0g3k-1rlE9eWVloqiopoLHfQOkw&s',
      'https://evlife.world/wp-content/uploads/2023/12/icon-2-668058_20230525_Polestar_future_product_portfolio1.webp',
    ];

    List<String> titleOffers = [
      'Offer one',
      'Offer Two',
      'Offer Three',
      'Offer Four',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'offers',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 252, 248, 248),

        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 33, color: AppColors.mainColor),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(137, 244, 238, 238),
            ),
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),

            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: images[index],
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                    placeholder:
                        (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                    errorWidget:
                        (context, url, error) =>
                            Center(child: Image.asset(AppAssets.logo)),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    (titleOffers[index]),
                    style: AppTextStyle.bodyTextRegular18.copyWith(
                      color: AppColors.white,
                      backgroundColor: Colors.black.withOpacity(.3),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
