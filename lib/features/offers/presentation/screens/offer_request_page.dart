import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';

class OfferRequestPage extends StatefulWidget {
  const OfferRequestPage({super.key});

  @override
  State<OfferRequestPage> createState() => _OfferRequestPageState();
}

class _OfferRequestPageState extends State<OfferRequestPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Normally, you'd send data to a backend here

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Offer request submitted successfully!'),
          backgroundColor: Color.fromARGB(255, 53, 97, 240),
        ),
      );

      // Clear form fields
      nameController.clear();
      phoneController.clear();
      notesController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request Offer',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                'Please fill in the form to request the offer:',
                style: AppTextStyle.bodyTextMedium16,
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: AppTextStyle.bodyTextRegular14,
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) => value!.isEmpty ? 'Please enter your name' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: AppTextStyle.bodyTextRegular14,
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) =>
                        value!.isEmpty
                            ? 'Please enter your phone number'
                            : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: notesController,
                decoration: InputDecoration(
                  labelText: 'Notes (optional)',
                  labelStyle: AppTextStyle.bodyTextRegular14,
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 360),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Submit Request',
                    style: AppTextStyle.bodyTextMedium16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
