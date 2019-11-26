import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

class LyricsClient {
  final http.Client httpClient;

  final String baseUrl = "https://api.genius.com/search?q=";

  LyricsClient({httpClient, localClient})
      : this.httpClient = httpClient ?? http.Client();

  Future<SearchItems> searchSongs(String query) async {
    final response = await httpClient.get(
      Uri.parse("$baseUrl$query"),
      headers: {'Authorization': "Bearer $GENIUS_KEY"},
    );
    final results = json.decode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return SearchResult.fromJson(results).searchItems;
    } else {
      throw MetaResponse.fromJson(results).searchResultError;
    }
  }
}
