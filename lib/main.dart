import 'package:evento_firsttry/packagelocation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<LoginOrNot>? logstatus;
  bool isLoaded = false;
  getData() async {
    logstatus = await LoginCheck().getLoginStatus();
    if (logstatus != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    Widget str;
    if (logstatus?[0].loggedinornot == "false") {
      str = const MyLogin();
    } else {
      str = const Navbar();
    }
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: str);
  }
}
