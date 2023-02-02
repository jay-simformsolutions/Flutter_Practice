import 'package:flutter/material.dart';

class DropDownButtonProperties extends StatefulWidget {
  const DropDownButtonProperties({Key? key}) : super(key: key);

  @override
  State<DropDownButtonProperties> createState() => _DropDownButtonPropertiesState();
}

class _DropDownButtonPropertiesState extends State<DropDownButtonProperties> {
  @override
  Widget build(BuildContext context) {

    const List<String> dropDownListName = ["One", "Two", "Three", "Four"];
    String dropdownValue = dropDownListName.first;

    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          //isExpanded: true,
          itemHeight: 50.0,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.black12,
          ),
          iconSize: 150.0,
          enableFeedback: true,
          icon: Icon(Icons.arrow_downward),
          onChanged: (String? value) {
            setState(() {
              print((value));
              dropdownValue = value!;
              print(dropdownValue);
            });
          },
          items: dropDownListName.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
