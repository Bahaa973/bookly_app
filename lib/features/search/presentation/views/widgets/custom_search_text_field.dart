import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .7,
              child: Icon(
                Icons.search,
                size: 20,
              ),
            )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
