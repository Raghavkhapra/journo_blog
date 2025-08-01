part of 'widgets_imports.dart' ;

class Onboard3 extends StatelessWidget {
  const Onboard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboard3.png" , height: 300.h, width: 300.w,),
         Text(
          "Explore a wide selection of categories, or use the search bar to find specific topics",
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