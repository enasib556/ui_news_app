import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterCategories extends StatefulWidget {
  @override
  _FilterCategoriesState createState() => _FilterCategoriesState();
}

class _FilterCategoriesState extends State<FilterCategories> {
  int _selectedFilterIndex = 0;
  List<String> data = ["Healthy ", "Technology", "Finance", "Arts ", "Sports"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selectedFilterIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(2),
              width: 100,
              decoration: BoxDecoration(
                color: _selectedFilterIndex == index
                    ? Colors.red[400]
                    : Color.fromARGB(255, 223, 222, 227),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  data[index],
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
