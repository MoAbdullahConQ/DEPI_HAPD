import 'package:depi_hapd/Features/Authentication/presentation/view_models/featured_register_cubit/featured_register_cubit.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/logo_image.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/show_snack_bar.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterThreeViewBody extends StatefulWidget {
  RegisterThreeViewBody(
      {super.key,
      this.arabicName,
      this.englishName,
      this.nationalID,
      this.dateOfBirth,
      this.gender,
      this.government,
      this.email,
      this.password,
      this.phone,
      this.linkedIn});
  final String? arabicName;
  final String? englishName;
  final String? nationalID;
  final String? dateOfBirth;
  final String? gender;
  final String? government;

  final String? email;
  final String? password;
  final String? phone;
  final String? linkedIn;

  @override
  State<RegisterThreeViewBody> createState() => _RegisterThreeViewBodyState();
}

class _RegisterThreeViewBodyState extends State<RegisterThreeViewBody> {
  bool isLoading = false;

  String? university;
  String? faculty;
  String? major;
  String? degree;
  String? governmentOfTraining;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedRegisterCubit, FeaturedRegisterState>(
      listener: (context, state) {
        if (state is FeaturedRegisterLoading) {
          setState(() {
            isLoading = true;
          });
        } else if (state is FeaturedRegisterSuccess) {
          setState(() {
            isLoading = false;
          });
          GoRouter.of(context).push(AppRouter.kLoginView);
          showSnackBar(context, 'Success');
        } else if (state is FeaturedRegisterFailure) {
          setState(() {
            isLoading = false;
          });
          showSnackBar(context,
              state.errMessage); // This will always have a valid string
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: GradientBackground(
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
                                university = v;
                              },
                              prefixIcon: const Icon(
                                Icons.account_balance_outlined,
                                color: kGreenColor,
                              ),
                              labelText: 'University',
                              labelStyle: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.w200),
                              fillColor: kGrey.shade200,
                            ),
                            const SizedBox(height: 13),
                            CustomTextFormField(
                              onChanged: (data) {
                                faculty =
                                    data; // This updates the faculty variable
                              },
                              prefixIcon: const Icon(
                                Icons.school_outlined,
                                color: kGreenColor,
                              ),
                              labelText: 'Faculty',
                              labelStyle: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.w200),
                              fillColor: kGrey.shade200,
                            ),
                            const SizedBox(height: 13),
                            CustomTextFormField(
                              onChanged: (v) {
                                major = v;
                              },
                              prefixIcon: const Icon(
                                Icons.history_edu_outlined,
                                color: kGreenColor,
                              ),
                              labelText: 'Major',
                              labelStyle: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.w200),
                              fillColor: kGrey.shade200,
                            ),
                            const SizedBox(height: 13),
                            CustomTextFormField(
                              onChanged: (v) {
                                degree = v;
                              },
                              prefixIcon: const Icon(
                                Icons.workspace_premium_outlined,
                                color: kGreenColor,
                              ),
                              labelText: 'Degree',
                              labelStyle: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.w200),
                              fillColor: kGrey.shade200,
                            ),
                            const SizedBox(height: 13),
                            CustomTextFormField(
                              onChanged: (v) {
                                governmentOfTraining = v;
                              },
                              prefixIcon: const Icon(
                                Icons.assured_workload_outlined,
                                color: kGreenColor,
                              ),
                              labelText: 'Government Of Training',
                              labelStyle: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.w200),
                              fillColor: kGrey.shade200,
                            ),
                            const SizedBox(height: 50),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13.0),
                              child: CustomButton(
                                onTap: () {
                                  if (
                                    // widget.arabicName != null &&
                                    //   widget.arabicName!.isNotEmpty &&
                                    //   widget.englishName != null &&
                                    //   widget.englishName!.isNotEmpty &&
                                    //   widget.nationalID != null &&
                                    //   widget.nationalID!.isNotEmpty &&
                                    //   widget.dateOfBirth != null &&
                                    //   widget.dateOfBirth!.isNotEmpty &&
                                    //   widget.gender != null &&
                                    //   widget.gender!.isNotEmpty &&
                                    //   widget.government != null &&
                                    //   widget.government!.isNotEmpty &&
                                    //   widget.email != null &&
                                    //   widget.email!.isNotEmpty &&
                                    //   widget.password != null &&
                                    //   widget.password!.isNotEmpty &&
                                    //   widget.phone != null &&
                                    //   widget.phone!.isNotEmpty &&
                                    //   widget.linkedIn != null &&
                                    //   widget.linkedIn!.isNotEmpty &&
                                      university != null &&
                                      university!.isNotEmpty &&
                                      faculty != null &&
                                      faculty!.isNotEmpty &&
                                      major != null &&
                                      major!.isNotEmpty &&
                                      degree != null &&
                                      degree!.isNotEmpty &&
                                      governmentOfTraining != null &&
                                      governmentOfTraining!.isNotEmpty) {
                                    BlocProvider.of<FeaturedRegisterCubit>(
                                            context)
                                        .register(
                                      arabicName: widget.arabicName!,
                                      englishName: widget.arabicName!,
                                      nationalID: widget.arabicName!,
                                      dateOfbirth: widget.arabicName!,
                                      gender: widget.arabicName!,
                                      government: widget.arabicName!,
                                      email: widget.arabicName!,
                                      password: widget.arabicName!,
                                      phone: widget.arabicName!,
                                      linkedIn: widget.arabicName!,
                                      university: widget.arabicName!,
                                      faculty: widget.arabicName!,
                                      major: widget.arabicName!,
                                      degree: widget.arabicName!,
                                      governmentOfTraining: widget.arabicName!,
                                    );
                                  } else {
                                    showSnackBar(
                                        context, 'Please Complete data');
                                  }
                                  // if (faculty != null && faculty!.isNotEmpty) {
                                  //   BlocProvider.of<FeaturedRegisterCubit>(
                                  //           context)
                                  //       .registerTwo(name: faculty!);
                                  // } else {
                                  //   showSnackBar(context,
                                  //       'Please enter the faculty name');
                                  // }
                                },
                                text: 'Register',
                                backgroundColor: kGreenAccentColor,
                                textStyle: Styles.text22StyleW600
                                    .copyWith(color: Colors.white),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(height: 50),
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
          ),
        );
      },
    );
  }
}
