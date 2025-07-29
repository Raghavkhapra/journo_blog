part of 'widgets_imports.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboarding_image.png"),
        const Text(
          "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}