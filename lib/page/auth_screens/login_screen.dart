import 'dart:developer';

import 'package:colortaxi/constant/show_toast_dialog.dart';
import 'package:colortaxi/page/auth_screens/mobile_number_screen.dart';
import 'package:colortaxi/themes/button_them.dart';
import 'package:colortaxi/themes/constant_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../controller/phone_number_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  // static final _phoneController = TextEditingController();
  // static final _passwordController = TextEditingController();
  final controller = Get.put(PhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ConstantColors.background,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Login Phone Text
                    Text(
                      "Login with Phone".tr,
                      style: const TextStyle(
                          letterSpacing: 0.60,
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),

                    SizedBox(
                        width: 80,
                        child: Divider(
                          color: ConstantColors.yellow1,
                          thickness: 3,
                        )),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Form(
                        key: _loginFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Email

                            // TextFieldThem.boxBuildTextField(
                            //   hintText: 'email'.tr,
                            //   controller: _phoneController,
                            //   textInputType: TextInputType.emailAddress,
                            //   contentPadding: EdgeInsets.zero,
                            //   validators: (String? value) {
                            //     if (value!.isNotEmpty) {
                            //       return null;
                            //     } else {
                            //       return 'required'.tr;
                            //     }
                            //   },
                            // ),

                            // Password

                            // Padding(
                            //   padding: const EdgeInsets.only(top: 15),
                            //   child: TextFieldThem.boxBuildTextField(
                            //     hintText: 'password'.tr,
                            //     controller: _passwordController,
                            //     textInputType: TextInputType.text,
                            //     obscureText: false,
                            //     contentPadding: EdgeInsets.zero,
                            //     validators: (String? value) {
                            //       if (value!.isNotEmpty) {
                            //         return null;
                            //       } else {
                            //         return 'required'.tr;
                            //       }
                            //     },
                            //   ),
                            // ),

                            // Login Button

                            // Padding(
                            //     padding: const EdgeInsets.only(top: 50),
                            //     child: ButtonThem.buildButton(
                            //       context,
                            //       title: 'log in'.tr,
                            //       btnHeight: 50,
                            //       btnColor: ConstantColors.yellow,
                            //       txtColor: Colors.white,
                            //       onPress: () async {
                            //         FocusScope.of(context).unfocus();
                            //         if (_loginFormKey.currentState!
                            //             .validate()) {
                            //           Map<String, String> bodyParams = {
                            //             'email': _phoneController.text.trim(),
                            //             'mdp': _passwordController.text,
                            //             'user_cat': "customer",
                            //           };
                            //           await controller
                            //               .loginAPI(bodyParams)
                            //               .then((value) {
                            //             if (value != null) {
                            //               if (value.success == "Success") {
                            //                 Preferences.setInt(
                            //                     Preferences.userId,
                            //                     int.parse(
                            //                         value.data!.id.toString()));
                            //                 Preferences.setString(
                            //                     Preferences.user,
                            //                     jsonEncode(value));
                            //                 _phoneController.clear();
                            //                 _passwordController.clear();
                            //                 if (value.data!.photo == null ||
                            //                     value.data!.photoPath
                            //                         .toString()
                            //                         .isEmpty) {
                            //                   Get.to(() =>
                            //                       AddProfilePhotoScreen());
                            //                 } else {
                            //                   Preferences.setBoolean(
                            //                       Preferences.isLogin, true);
                            //                   Get.offAll(DashBoard(),
                            //                       duration: const Duration(
                            //                           milliseconds: 400),
                            //                       //duration of transitions, default 1 sec
                            //                       transition:
                            //                           Transition.rightToLeft);
                            //                 }
                            //               } else {
                            //                 ShowToastDialog.showToast(
                            //                     value.error);
                            //               }
                            //             }
                            //           });
                            //         }
                            //       },
                            //     )),

                            // Forgot Password

                            // GestureDetector(
                            //   onTap: () {
                            //     Get.to(ForgotPasswordScreen(),
                            //         duration: const Duration(
                            //             milliseconds:
                            //                 400), //duration of transitions, default 1 sec
                            //         transition: Transition.rightToLeft);
                            //   },
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(top: 20),
                            //     child: Center(
                            //       child: Text(
                            //         "forgot".tr,
                            //         style: TextStyle(
                            //             color: ConstantColors.yellow,
                            //             fontWeight: FontWeight.w600),
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            // Login With Phone Number

                            // Padding(
                            //     padding: const EdgeInsets.only(top: 40),
                            //     child: ButtonThem.buildBorderButton(
                            //       context,
                            //       title: 'Login With Phone Number'.tr,
                            //       btnHeight: 50,
                            //       btnColor: Colors.white,
                            //       txtColor: ConstantColors.yellow,
                            //       onPress: () {
                            //         FocusScope.of(context).unfocus();
                            //         Get.to(MobileNumberScreen(isLogin: true),
                            //             duration: const Duration(
                            //                 milliseconds:
                            //                     400), //duration of transitions, default 1 sec
                            //             transition: Transition.rightToLeft);
                            //       },
                            //       btnBorderColor: ConstantColors.yellow,
                            //     )),

                            // Phone number
                            Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          ConstantColors.textFieldBoarderColor,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6))),
                                padding: const EdgeInsets.only(left: 10),
                                child: InternationalPhoneNumberInput(
                                  initialValue: PhoneNumber(isoCode: 'IN'),
                                  onInputChanged: (PhoneNumber number) {
                                    controller.phoneNumber.value =
                                        number.phoneNumber.toString();
                                  },
                                  onInputValidated: (bool value) =>
                                      controller.isPhoneValid.value = value,
                                  ignoreBlank: true,
                                  autoValidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  inputDecoration: InputDecoration(
                                    hintText: 'Phone Number'.tr,
                                    border: InputBorder.none,
                                    isDense: true,
                                  ),
                                  selectorConfig: const SelectorConfig(
                                      selectorType:
                                          PhoneInputSelectorType.DIALOG),
                                ),
                              ),
                            ),

                            // Continue

                            Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ButtonThem.buildButton(
                                  context,
                                  title: 'Continue'.tr,
                                  btnHeight: 50,
                                  btnColor: ConstantColors.yellow,
                                  txtColor: Colors.white,
                                  onPress: () async {
                                    FocusScope.of(context).unfocus();
                                    if (controller.phoneNumber.isEmpty) {
                                      ShowToastDialog.showToast(
                                          "Please Enter Phone Number");

                                      // ShowToastDialog.showLoader("Please Enter Phone Number");
                                    }
                                    if (controller.isPhoneValid.value) {
                                      Map<String, String> bodyParams = {
                                        'phone': controller.phoneNumber.value,
                                        'user_cat': "customer",
                                      };

                                      controller
                                          .phoneNumberIsExit(bodyParams)
                                          .then((value) {
                                        if (value != null) {
                                          log("==> 274  $value");
                                          if (value == false) {
                                            ShowToastDialog.showToast(
                                                "User Not exist Plese Check Your Phone Number");
                                          } else {
                                            ShowToastDialog.showLoader(
                                                "Code sending".tr);
                                            controller.sendCode(
                                                controller.phoneNumber.value);
                                          }
                                        }
                                      });

                                      // Map<String, String> bodyParams

                                      //    log("===> 271 ${jsonDecode(controller.phoneNumberIsExit(bodyParams).toString()) }");

                                      // ShowToastDialog.showLoader("Code sending".tr);
                                      // controller
                                      //     .sendCode(controller.phoneNumber.value);
                                    }
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You don’t have an account yet?  '.tr,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(MobileNumberScreen(isLogin: false),
                              duration: const Duration(
                                  milliseconds:
                                      400), //duration of transitions, default 1 sec
                              transition:
                                  Transition.rightToLeft); //transition effect);
                        },
                    ),
                    TextSpan(
                      text: 'SIGNUP'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ConstantColors.yellow),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(
                              MobileNumberScreen(
                                isLogin: false,
                              ),
                              duration: const Duration(
                                  milliseconds:
                                      400), //duration of transitions, default 1 sec
                              transition:
                                  Transition.rightToLeft); //transition effect);
                        },
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
