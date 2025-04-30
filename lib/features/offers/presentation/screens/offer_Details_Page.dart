import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:ala_el_tareek/features/offers/presentation/screens/offer_request_page.dart';
import 'package:flutter/material.dart';

class OfferDetailsPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const OfferDetailsPage({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,  style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),),
       
        ),
        backgroundColor: const Color.fromARGB(255, 252, 248, 248),

   
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 270,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                 alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: AppTextStyle.bodyTextMedium18
              ),
            ),),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child:  Text(
                'Offer Details: This offer includes special discounts and premium services you can benefit from for a limited time.',
                style: AppTextStyle.bodyTextRegular16
              ),
            ),
            const SizedBox(height: 310),
            SizedBox(
              height: 50,
               width: 350, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                
                 onPressed: () {
                 Navigator.push(
                   context,
                 MaterialPageRoute(builder: (context) => const OfferRequestPage()),
                  );
                },
                child:  Text(
                  'Request Offer',
                  style: AppTextStyle.bodyTextMedium16.copyWith(color: AppColors.white,),
                ),
              ),
              
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
