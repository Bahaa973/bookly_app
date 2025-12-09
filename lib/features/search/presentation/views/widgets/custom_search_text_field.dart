import 'package:bookly_app/features/search/presentation/manger/search_books_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        BlocProvider.of<SearchBookCubit>(context)
            .fetchSearchBooks(bookName: data);
      },
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
