part of 'onboard_imports.dart';

@RoutePage()
class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  OnboardViewModel onboardViewModel = OnboardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Image.asset(
                  Assets.assetsImagesMainLogoWhite,
                  color: MyColors.primaryColor,
                  height: 50.h,
                  width: 150.w,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Expanded(
                  child: PageView(
                    controller: onboardViewModel.pageController,
                    children: const [
                      Onboard1(),
                      Onbard2(),
                      Onboard3(),
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () => AutoRouter.of(context).push(const AuthRoute()),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    )
                  ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Skip",
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SmoothPageIndicator(
                        controller: onboardViewModel.pageController,
                        count: 3,
                        effect: const WormEffect(
                            activeDotColor: MyColors.primaryColor,
                            dotHeight: 11.0,
                            dotWidth: 11.0),
                        onDotClicked: (index) {}),
                    const Text(
                      "Next ",
                      style: TextStyle(
                          color: MyColors.primaryColor,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
