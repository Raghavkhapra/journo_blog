part of 'widgets_imports.dart';

class Onbard2 extends StatelessWidget {
  const Onbard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboard2.png" , height: 300.h, width: 300.w,),
         Text(
          "Customize your reading experience and join the conversation by creating an account.",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}