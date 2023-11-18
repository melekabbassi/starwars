import 'package:flutter/material.dart';
import 'package:starwars/models/list_movies_model.dart';
import 'package:starwars/screens/MovieDetails/moviedetails.dart';
import 'package:starwars/services/list_movies_service.dart';

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
      body: FutureBuilder(
        future: MovieSevice.getFilms(),
        builder: (BuildContext context, AsyncSnapshot<ListFilms> snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.black,
                    width: 500,
                    height: 200,
                    child: Column(children: [
                      SizedBox(
                          height: 150,
                          child: Image.asset("assets/images/starwars.png")),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 280, 0),
                        child: Text(
                          "Total ${snapshot.data?.count} Movies",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              // const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: snapshot.data?.count ?? 0,
                  separatorBuilder: (BuildContext context, int indexx) =>
                      const Divider(thickness: 12),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieDetails(
                                      movieData: snapshot.data!.results![index],
                                    )));
                      },
                      child: Container(
                        width: 500,
                        height: 165,
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 18, 0, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      snapshot.data?.results?[index].title ??
                                          "",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 25)),
                                  const Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 5, 0),
                                        child: Text(
                                          "Release date",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ),
                                      Text(
                                        snapshot.data?.results?[index]
                                                .releaseDate ??
                                            "",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 0, 0),
                                  child: Row(
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("Director",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                                textAlign: TextAlign.left),
                                            Text(
                                                snapshot.data?.results?[index]
                                                        .director ??
                                                    "",
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                textAlign: TextAlign.left),
                                          ]),
                                      const SizedBox(width: 16),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("Producer",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12)),
                                          Text(
                                              snapshot.data?.results?[index]
                                                      .producer ??
                                                  "",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 0, 0),
                                  child: Text(
                                    snapshot.data?.results?[index]
                                            .openingCrawl ??
                                        "",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 13),
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
