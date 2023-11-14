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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: 500,
              height: 200,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                      height: 150,
                      child: Image.asset("assets/images/starwars.png")),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 280, 0),
                    child: Text(
                      "Total 6 Movies",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
          const SizedBox(height: 12),
          Container(
              width: 500,
              height: 480,
              color: Colors.black,
              child: ListView.separated(
                itemCount: 6,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(thickness: 12),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Container(
                      width: 500,
                      height: 165,
                      color: Colors.black,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 18, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("A New Hope",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25)),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: Text(
                                        "Release date",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                    Text(
                                      "1977/05/25",
                                      style: TextStyle(
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
                                padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                                child: Row(
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Director",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                              textAlign: TextAlign.left),
                                          Text("George Lucas",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                              textAlign: TextAlign.left),
                                        ]),
                                    SizedBox(width: 16),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Producer",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12)),
                                        Text("Gary Kurtz, Rick McCallum",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                                child: Text(
                                    "It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against...",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                    textAlign: TextAlign.left),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.pushNamed(context, '/detail');
                    // },
                  );
                },
              )),
          /*Container(
            width: 500,
            height: 165,
            color: Colors.black,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 18, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("A New Hope",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Text(
                              "Release date",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                          Text(
                            "1977/05/25",
                            style: TextStyle(color: Colors.white, fontSize: 12),
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
                      padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Director",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                    textAlign: TextAlign.left),
                                Text("George Lucas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                    textAlign: TextAlign.left),
                              ]),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Producer",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                              Text("Gary Kurtz, Rick McCallum",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text(
                          "It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against...",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.left),
                    ),
                  ],
                )
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
