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
                  "assets/images/main_logo_white.png",
                  color: MyColors.primaryColor,
                  height: 50,
                  width: 150,
                ),
                const SizedBox(
                  height: 40,
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
                            Size(MediaQuery.of(context).size.width, 44),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Skip",
                      style: TextStyle(
                          color: MyColors.primaryColor,
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
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
