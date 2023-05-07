import 'package:evento_firsttry/packagelocation.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isLoginPageVisible = false;
  bool isSignInPageVisible = false;
  bool isDescriptionVisible = true;
  bool isLoginbuttonVisible = true;
  bool isSigninbuttonVisible = true;
  bool isCancelbuttonVisible = false;
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                  const Text(
                    "Lions Club of Kathmandu",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Love all Serve all",
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: isLoginbuttonVisible,
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isLoginPageVisible = true;
                                    isSignInPageVisible = false;
                                    isDescriptionVisible = false;
                                    isSigninbuttonVisible = true;
                                    isCancelbuttonVisible = true;
                                    isLoginbuttonVisible = false;
                                  });
                                },
                                style: const ButtonStyle(),
                                child: const Text("Login")),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isSigninbuttonVisible,
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isLoginPageVisible = false;
                                    isSignInPageVisible = true;
                                    isDescriptionVisible = false;
                                    isSigninbuttonVisible = false;
                                    isCancelbuttonVisible = true;
                                    isLoginbuttonVisible = true;
                                  });
                                },
                                child: const Text("SignIn")),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isCancelbuttonVisible,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isLoginPageVisible = false;
                                isSignInPageVisible = false;
                                isDescriptionVisible = true;
                                isSigninbuttonVisible = true;
                                isCancelbuttonVisible = false;
                                isLoginbuttonVisible = true;
                              });
                            },
                            child: const Text("Cancel")),
                      ),
                    ],
                  ),
                  // Visibility(
                  //     // visible: isLoginPageVisible, child: const LoginPage()),
                  // Visibility(
                  //     visible: isSignInPageVisible, child: const MyRegister()),
                  // Visibility(
                  //     visible: isDescriptionVisible,
                  //     child: const DescriptionPage()),
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
