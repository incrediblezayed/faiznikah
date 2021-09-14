import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class StateDistrict extends StatelessWidget {
  final void Function(String?) onCitySelected;
  final void Function(String?) onStateSelected;

  const StateDistrict(
      {Key? key, required this.onCitySelected, required this.onStateSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CSCPicker(
      showStates: true,
      showCities: true,
      flagState: CountryFlag.ENABLE,
      dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1)),
      disabledDropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.grey.shade300, width: 1)),
      
      selectedItemStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      dropdownHeadingStyle: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      dropdownItemStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      dropdownDialogRadius: 10.0,
      searchBarRadius: 10.0,
      onCountryChanged: (value) {},
      onStateChanged: onStateSelected,
      onCityChanged: onCitySelected,
    );
  }
}
