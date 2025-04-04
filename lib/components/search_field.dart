import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  // final String search;
  final TextEditingController controller;
  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(color: Color(0xffDCDCDC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(90)),
          borderSide: BorderSide(color: Color(0xffDCDCDC)),
        ),
        hintStyle: TextStyle(fontSize: 16),
        hintText: 'Coffee shop, beer & wine...',
        prefixIcon: Icon(Icons.search),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 5),
          child: CircleAvatar(
            backgroundColor: Color(0xff55433C),
            child: Icon(Icons.tune, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
