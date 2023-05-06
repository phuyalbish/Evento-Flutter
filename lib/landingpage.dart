import 'package:evento_firsttry/packagelocation.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isLoginPageVisible = false;
  bool isSignInPageVisible = false;
  @override
  Widget build(BuildContext context) {
    // LoginOrNot loginObject =
    //     LoginOrNot(loggedinornot: "bruee", loggedinuserId: "23423456634");

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Row(
            children: [
              // ElevatedButton(
              //     onPressed: () {
              //       LoginCheck().setLoginStatus(loginObject);
              //     },
              //     child: const Text("Click me"))
              //       visible: isProfilePageVisible, child: const LoginPage()),
              // ]),

              Visibility(visible: isLoginPageVisible, child: const LoginPage()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoginPageVisible = true;
                      isSignInPageVisible = false;
                    });
                  },
                  child: const Text("Login")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoginPageVisible = true;
                      isSignInPageVisible = false;
                    });
                  },
                  child: const Text("SignUp")),
            ],
          ),
        ),
      ),
    );
  }
}
