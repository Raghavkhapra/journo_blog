part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.assetsImagesBackgroundAuthImage)),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    Assets.assetsImagesMainLogoWhite,
                    height: 42.h,
                    width: 140.w,
                  ),
                ),
                Spacer(),
                Text(
                  textAlign: TextAlign.left,
                  "Explore the World,\nBillions of Thoughts",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20.h,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                    SizedBox(height: 20.h,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 44.h),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    )),
                    SizedBox(height: 20.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
