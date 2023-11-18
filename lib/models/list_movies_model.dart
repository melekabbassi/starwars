// To parse this JSON data, do
//
//     final listFilms = listFilmsFromJson(jsonString);

import 'dart:convert';

ListFilms listFilmsFromJson(String str) => ListFilms.fromJson(json.decode(str));

String listFilmsToJson(ListFilms data) => json.encode(data.toJson());

class ListFilms {
  int? count;
  List<Result>? results;

  ListFilms({
    this.count,
    this.results,
  });

  factory ListFilms.fromJson(Map<String, dynamic> json) => ListFilms(
        count: json["count"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  String? title;
  int? episodeId;
  String? openingCrawl;
  String? director;
  String? producer;
  String? releaseDate;
  String? created;
  String? edited;

  Result({
    this.title,
    this.episodeId,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.created,
    this.edited,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        title: json["title"],
        episodeId: json["episode_id"],
        openingCrawl: json["opening_crawl"],
        director: json["director"],
        producer: json["producer"],
        releaseDate: json["release_date"],
        created: json["created"],
        edited: json["edited"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "episode_id": episodeId,
        "opening_crawl": openingCrawl,
        "director": director,
        "producer": producer,
        "release_date": releaseDate,
        "created": created,
        "edited": edited,
      };
}
