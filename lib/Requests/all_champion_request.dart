import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Heros> getHeros() async {
  final response = await http.get(
    Uri.parse(
        "http://ddragon.leagueoflegends.com/cdn/11.19.1/data/tr_TR/champion.json"),
  );

  if (response.statusCode == 200) {
    return Heros.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  } else {
    throw Exception('Failed to load album');
  }
}

class Heros {
  final Map<String, dynamic> data;

  Heros({
    required this.data,
  });

  factory Heros.fromJson(Map<String, dynamic> json) {
    return Heros(
      data: json['data'],
    );
  }
}
