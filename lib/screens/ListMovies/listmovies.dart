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
      body: Column(
        children: [
          Container(
              width: 500,
              height: 200,
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                      height: 150,
                      child: Image.asset("assets/images/starwars.png")),
                  const Text(
                    "Total 6 Movies",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
