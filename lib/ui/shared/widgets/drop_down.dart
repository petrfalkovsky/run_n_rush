import 'package:flutter/material.dart';

class FilterDropdown extends StatefulWidget {
  @override
  _FilterDropdownState createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<FilterDropdown> {
  String selectedFilter = 'Lower Price';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton<String>(
            value: selectedFilter,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.white),
            underline: Container(),
            dropdownColor: Colors.black,
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  selectedFilter = newValue;
                });
              }
            },
            items: <String>[
              'Lower Price',
              'Higher Price',
              'Popularity',
              'Newest'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
