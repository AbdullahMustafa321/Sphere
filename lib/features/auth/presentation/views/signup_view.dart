import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/utils/assets.dart';
import 'package:sphere_book/core/utils/form_key.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/auth/presentation/view%20models/register_cubit/register_cubit.dart';
import 'package:sphere_book/features/auth/presentation/views/widgets/custom_form_text_field_widget.dart';

class SignupView extends StatelessWidget {
  static GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController controller = TextEditingController();
  String? email, password, name, phoneNumber, rePassword;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterLoadingState) {
              isLoading = true;
            } else if (state is RegisterSuccessState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                      'Successfully registered')));
              GoRouter.of(context).pop();
              isLoading = false;
            } else if (state is RegisterFailureState) {
              SnackBar(
                content: Text(state.errorMessage),
              );
              isLoading = false;
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: isLoading,
              child: Scaffold(
                body: Form(
                  key: formKey,
                  child: ListView(children: [
                    Image.asset(
                      AssetsData.kLogo,
                      height: 100.h,
                      width: 100.w,
                    ),
                    CustomFormTextFieldWidget(
                      formKey: FormKey.sixthGlobalKey,
                      onChange: (data) {
                        name = data;
                      },
                      hintText: 'Enter your Name',
                      label: 'Name',
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomFormTextFieldWidget(
                      kindOfVaild: kEmailValid,
                      formKey: FormKey.seventhGlobalKey,
                      onChange: (data) {
                        email = data;
                      },
                      hintText: 'Enter your email',
                      label: 'Email',
                      icon: Icons.email_outlined,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomFormTextFieldWidget(
                      controller: controller,
                      kindOfVaild: kPasswordValid,
                      formKey: FormKey.thirdGlobalKey,
                      onChange: (data) {
                        password = data;
                      },
                      isPassword: true,
                      hintText: 'Enter your password',
                      label: 'Password',
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomFormTextFieldWidget(
                      formKey: FormKey.fourthGlobalKey,
                      onChange: (data) {
                        rePassword = data;
                      },
                      isPassword: true,
                      hintText: 'Confirm your password',
                      label: 'Confirm Password',
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomFormTextFieldWidget(
                      keyboardType: TextInputType.phone,
                      formKey: FormKey.fifthGlobalKey,
                      onChange: (data) {
                        phoneNumber = data;
                      },
                      hintText: 'Enter your phone number',
                      label: 'Phone Number',
                      icon: Icons.phone,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 100.w),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (password != rePassword) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              backgroundColor: Colors.red,
                                content: Text(
                                    'Password confirmation is incorrect')));
                          } else if (formKey.currentState!
                              .validate()) {
                            BlocProvider.of<RegisterCubit>(context).Register(
                                email: email.toString(),
                                password: password.toString(),
                                rePassword: rePassword.toString(),
                                phoneNumber: phoneNumber.toString(),
                                name: name.toString());
                            controller.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                        ),
                        child: const Text(
                          'Signup',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have an account?',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context).pop();
                          },
                          child: Text(
                            ' Login',
                            style: Styles.boldTextStyle16
                                .copyWith(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            );
          },
        ));
  }
}
