import 'package:flutter/material.dart';
import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search City')),
      padding: const EdgeInsets.symmetric(horizontal: 16),
       child: Center(
        child: TextField(
          onSubmitted: (value) {       
  },
  
              labelText: 'Search',
              suffixIcon: const Icon(Icons.search),
              hintText: "Enter city name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
