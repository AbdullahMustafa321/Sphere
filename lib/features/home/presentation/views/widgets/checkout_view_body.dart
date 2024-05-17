import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../auth/presentation/views/widgets/custom_form_text_field_widget.dart';
import 'custom_x_mark_icon.dart';

class CheckoutViewBody extends StatelessWidget {
  CheckoutViewBody({super.key});

  static GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final fullName = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();
  final zipCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: globalKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
              child: const Align(
                  alignment: Alignment.topLeft, child: CustomXMarkIcon()),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                      child: Text('CUSTOMER INFORMATION',
                          style: Styles.boldTextStyle18)),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your Full Name',
                    isPassword: false,
                    controller: fullName,
                    label: 'Name',
                    icon: FontAwesomeIcons.person,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your Email',
                    isPassword: false,
                    controller: email,
                    label: 'Email',
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Center(
                      child: Text('DELIVERY INFORMATION',
                          style: Styles.boldTextStyle18)),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your Address',
                    isPassword: false,
                    controller: address,
                    label: 'Address',
                    icon: FontAwesomeIcons.addressCard,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your City',
                    isPassword: false,
                    controller: city,
                    label: 'City',
                    icon: FontAwesomeIcons.city,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your Country',
                    isPassword: false,
                    controller: country,
                    label: 'Country',
                    icon: FontAwesomeIcons.mountainCity,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomFormTextFieldWidget(
                    hintText: 'Enter your Zip Code',
                    isPassword: false,
                    controller: zipCode,
                    label: 'Zip Code',
                    icon: FontAwesomeIcons.code,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70.w),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          globalKey.currentState!.validate();
                        },
                        icon: const Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'ORDER NOW',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(height: 30.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
