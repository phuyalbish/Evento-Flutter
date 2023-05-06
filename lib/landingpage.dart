import 'package:evento_firsttry/packagelocation.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isLoginPageVisible = true;
  bool isSignInPageVisible = true;
  bool isDescriptionVisible = true;
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Lions Club of Kathmandu"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Love all Serve all"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isLoginPageVisible = true;
                              isSignInPageVisible = false;
                            });
                          },
                          style: const ButtonStyle(),
                          child: const Text("Login")),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isLoginPageVisible = false;
                              isSignInPageVisible = true;
                            });
                          },
                          child: const Text("SignUp")),
                    ],
                  ),
                  Visibility(
                      visible: isLoginPageVisible, child: const LoginPage()),
                  Visibility(
                      visible: isSignInPageVisible, child: const SignIn()),
                  Visibility(
                      visible: isDescriptionVisible,
                      child: const DescriptionPage()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//     onPressed: () {
//       LoginCheck().setLoginStatus(loginObject);
//     },
//     child: const Text("Click me"))
//       visible: isProfilePageVisible, child: const LoginPage()),
// ]),
