import 'package:evento_firsttry/packagelocation.dart';

enum Gender { male, female }

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  Gender _gender = Gender.male; // initial value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio(
            value: Gender.male,
            groupValue: _gender,
            onChanged: (Gender? value) {
              setState(() {
                _gender = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio(
            value: Gender.female,
            groupValue: _gender,
            onChanged: (Gender? value) {
              setState(() {
                _gender = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
