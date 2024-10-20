import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/logo_image.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/show_snack_bar.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RegisterTwoViewBody extends StatelessWidget {
  RegisterTwoViewBody(
      {super.key,
      this.arabicName,
      this.englishName,
      this.nationalID,
      this.dateOfBirth,
      this.gender,
      this.government});

  final String? arabicName;
  final String? englishName;
  final String? nationalID;
  final String? dateOfBirth;
  final String? gender;
  final String? government;
  String? email;
  String? password;
  String? phone;
  String? linkedIn;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: LogoImage(),
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        onChanged: (v) {
                          email = v;
                        },
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {
                          password = v;
                        },
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {
                          phone = v;
                        },
                        prefixIcon: const Icon(
                          Icons.phone_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Phone Number',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {
                          linkedIn = v;
                        },
                        prefixIcon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: kGreenColor,
                        ),
                        suffixIcon: const Icon(FontAwesomeIcons.link),
                        labelText: 'Linked In Link',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: CustomButton(
                          onTap: () {
                            // GoRouter.of(context).push('/');
                          },
                          text: 'Upload Photo Image',
                          backgroundColor: kGreenAccentColor,
                          borderRadius: BorderRadius.circular(16),
                          textStyle: Styles.textStyle20.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w200),
                          treling: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: CustomButton(
                          onTap: () {
                            if (
                              // arabicName != null &&
                              //   arabicName!.isNotEmpty &&
                              //   englishName != null &&
                              //   englishName!.isNotEmpty &&
                              //   nationalID != null &&
                              //   nationalID!.isNotEmpty &&
                              //   dateOfBirth != null &&
                              //   dateOfBirth!.isNotEmpty &&
                              //   gender != null &&
                              //   gender!.isNotEmpty &&
                              //   government != null &&
                              //   government!.isNotEmpty &&
                                email != null &&
                                email!.isNotEmpty &&
                                password != null &&
                                password!.isNotEmpty &&
                                phone != null &&
                                phone!.isNotEmpty &&
                                linkedIn != null &&
                                linkedIn!.isNotEmpty) {
                              GoRouter.of(context).push(
                                  '${AppRouter.kRegisterThreeView}?arabicName=$arabicName&englishName=$englishName&nationalID=$nationalID&dateOfBirth=$dateOfBirth&gender=$gender&government=$government&email=$email&password=$password&phone=$phone&linkedIn=$linkedIn');
                            } else {
                              showSnackBar(context, 'Please complete data');
                            }
                          },
                          text: 'Continue',
                          backgroundColor: kGreenAccentColor,
                          textStyle:
                              Styles.textStyle20.copyWith(color: Colors.white),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 9,
            top: 10,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          ),
        ],
      ),
    );
  }
}
