import 'package:flutter/material.dart';

class ListMovies extends StatefulWidget {
  const ListMovies({super.key});

  @override
  State<ListMovies> createState() => _ListMoviesState();
}

class _ListMoviesState extends State<ListMovies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Think-it Star Wars")),
      ),
      body: const Center(
        child: Text("List Movies"),
      ),
    );
  }
}
