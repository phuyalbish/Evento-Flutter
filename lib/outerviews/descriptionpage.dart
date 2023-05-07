import 'package:evento_firsttry/packagelocation.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration:
            // const BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
            BoxDecoration(
          color: Colors.green,
          border: Border.all(width: 1, color: Colors.blue),
        ),
        width: MediaQuery.of(context).size.width * 1,
        child: const Padding(padding: EdgeInsets.all(10), child: Text("abc")),
      ),
    );
  }
}
