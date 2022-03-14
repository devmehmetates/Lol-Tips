import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loltips/Models/champion_detail.dart';

Future<ChampionDetail> getChampionDetail(String name) async {
  final response = await http.get(Uri.parse("http://ddragon.leagueoflegends.com/cdn/12.5.1/data/tr_TR/champion/$name.json"));
  if (response.statusCode == 200) {
    return ChampionDetail.fromJson(jsonDecode(utf8.decode(response.bodyBytes)), name);
  } else {
    throw Exception('Failed to load album');
  }
}

class ChampionDetail {
  final Champion champion;

  ChampionDetail({
    required this.champion,
  });

  factory ChampionDetail.fromJson(Map<String, dynamic> json, String championKey) {
    return ChampionDetail(
      champion: Champion(
        version: json["version"],
        id: json["data"][championKey]["id"],
        key: json["data"][championKey]["key"],
        name: json["data"][championKey]["name"],
        title: json["data"][championKey]["title"],
        image: json["data"][championKey]["image"],
        skins: json["data"][championKey]["skins"],
        lore: json["data"][championKey]["lore"],
        blurb: json["data"][championKey]["blurb"],
        allytips: json["data"][championKey]["allytips"],
        enemytips: json["data"][championKey]["enemytips"],
        tags: json["data"][championKey]["tags"],
        partype: json["data"][championKey]["partype"],
        info: json["data"][championKey]["info"],
        stats: json["data"][championKey]["stats"],
        spells: json["data"][championKey]["spells"],
        passive: json["data"][championKey]["passive"],
      ),
    );
  }
}
