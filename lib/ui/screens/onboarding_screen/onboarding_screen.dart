import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';

import 'onboarding_screen_model_view.dart';

class OnBoardingScreen extends StatelessWidget {
  PageDecoration pageDecoration({required BuildContext context}) {
    return PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: Provider.of<OnBoardingScreenViewModel>(context, listen: false)
              .textColor,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 14.sp,
          color: Provider.of<OnBoardingScreenViewModel>(
            context,
          ).textColor,
        ),
        descriptionPadding: EdgeInsets.fromLTRB(25.w, 0, 25.w, 10.h),
        imagePadding: EdgeInsets.fromLTRB(25.w, 30.h, 25.w, 30.h),
        titlePadding: EdgeInsets.fromLTRB(30.h, 50.h, 30.h, 15.h),
        pageColor:
            Provider.of<OnBoardingScreenViewModel>(context).backgroundColor);
  }

  PageViewModel pageViewModel(
      {required String title,
      required String body,
      required String imagePath,
      required BuildContext context}) {
    return PageViewModel(
      title: title,
      body: body,
      image: Image(
        width: 210.w,
        height: 210.h,
        image: AssetImage(imagePath),
      ),
      decoration: pageDecoration(context: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => OnBoardingScreenViewModel(),
          builder: (context, viewModel) {
            return IntroductionScreen(
              pages: [
                pageViewModel(
                  title: "SMS Lead Nurturing",
                  body:
                      "Keep in contact with your leads with our SMS Campaign Wizard."
                      " This process ener will create contact specific messages that feel original"
                      " and authentic",
                  imagePath:
                      "assets/dynamic_assets/image_assets/onboarding1.png",
                  context: context,
                ),
                pageViewModel(
                  title: "Lead Management",
                  body: "Store all of your contacts in one place."
                      " From sales leads to current clients, contact labels "
                      "help keep everyone organized but still together",
                  imagePath:
                      "assets/dynamic_assets/image_assets/onboarding2.png",
                  context: context,
                ),
                pageViewModel(
                  title: "Reminders",
                  body: "Come through on your promise to “Call back in"
                      " 6 months”. Utilized the Follow-Up Robots to"
                      " automatically let your contact know youwill be calling.",
                  imagePath:
                      "assets/dynamic_assets/image_assets/onboarding3.png",
                  context: context,
                ),
              ],
              globalBackgroundColor:
                  Provider.of<OnBoardingScreenViewModel>(context, listen: false)
                      .backgroundColor,
              dotsDecorator: DotsDecorator(
                activeColor:
                    Provider.of<OnBoardingScreenViewModel>(context).dotColor,
              ),
              done: Text(
                "Next",
                style: TextStyle(
                    color: Provider.of<OnBoardingScreenViewModel>(context,
                            listen: false)
                        .textColor,
                    fontSize: 14.sp),
              ),
              showSkipButton: true,
              skip: Text(
                "Skip",
                style: TextStyle(
                    color: Provider.of<OnBoardingScreenViewModel>(context,
                            listen: false)
                        .textColor),
              ),
              onSkip: () {
                Navigator.pushReplacementNamed(context, "login_screen");
              },
              next: Text(
                "Next",
                style: TextStyle(
                  color: Provider.of<OnBoardingScreenViewModel>(context,
                          listen: false)
                      .textColor,
                ),
              ),
              onDone: () {
                Navigator.pushReplacementNamed(context, "login_screen");
              },
              onChange: (index) {
                Provider.of<OnBoardingScreenViewModel>(context, listen: false)
                    .index = index;
              },
            );
          },
        ),
      ),
    );
  }
}

class MyPageViewModel extends StatelessWidget {
  const MyPageViewModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
