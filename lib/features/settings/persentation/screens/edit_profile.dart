import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // اسم المستخدم
              // TextFormField(
              //   controller: nameController,
              //   decoration: const InputDecoration(labelText: 'Name'),
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please enter your name'; // تحقق من الاسم
              //     }
              //     return null;
              //   },
              // ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: AppTextStyle.bodyTextRegular16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.grey, // لون الحواف في الوضع العادي
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue, // لون الحواف عند التركيز
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // رقم الهاتف
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  labelStyle: AppTextStyle.bodyTextRegular16,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.grey, // لون الحواف في الوضع العادي
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blue, // لون الحواف عند التركيز
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number'; // تحقق من رقم الهاتف
                  } else if (!RegExp(r'^\+?[0-9]{10,12}$').hasMatch(value)) {
                    return 'Please enter a valid phone number'; // تحقق من صلاحية الرقم
                  }
                  return null;
                },
              ),
              // InternationalPhoneNumberInput(
              //   onInputChanged: (PhoneNumber number) {
              //     print(number.phoneNumber);
              //   },
              //   // selectorConfig: SelectorConfig(
              //   //   // selectorType: PhoneInputSelectorType.DROPDOWN,
              //   // ),
              //   // ignoreBlank: false,
              //   autoValidateMode: AutovalidateMode.disabled,
              //   selectorTextStyle: TextStyle(color: Colors.black),
              //   initialValue: PhoneNumber(isoCode: 'EG'),
              //   textFieldController: phoneController,
              //   formatInput: true,
              //   keyboardType: TextInputType.numberWithOptions(
              //     signed: true,
              //     decimal: true,
              //   ),
              //   inputDecoration: InputDecoration(
              //     labelText: 'Phone Number',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //       borderSide: BorderSide(color: Colors.grey, width: 1.0),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //       borderSide: BorderSide(color: Colors.blue, width: 2.0),
              //     ),
              //   ),
              //   onSaved: (PhoneNumber number) {
              //     print('On Saved: $number');
              //   },
              // ),
          
              // const SizedBox(height: 40),
              Spacer(),
              ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.mainColor),
               padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 150, vertical: 10))


               ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // إذا كانت المدخلات صالحة، يتم حفظ البيانات
                    Navigator.pop(context); // رجوع بعد الحفظ
                  }
                },

                child:  Text(
                  "Save",
                  style: AppTextStyle.bodyTextMedium16.copyWith(color: Colors.white)
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
