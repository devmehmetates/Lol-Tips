class Champion {
  final String version;
  final String id;
  final String key;
  final String name;
  final String title;
  final Map<String, dynamic> image;
  final List skins;
  final String lore;
  final String blurb;
  final List allytips;
  final List enemytips;
  final List tags;
  final String partype;
  final Map<String, dynamic> info;
  final Map<String, dynamic> stats;
  final List spells;
  final Map<String, dynamic> passive;

  Champion({
    required this.version,
    required this.id,
    required this.key,
    required this.name,
    required this.title,
    required this.image,
    required this.skins,
    required this.lore,
    required this.blurb,
    required this.allytips,
    required this.enemytips,
    required this.tags,
    required this.partype,
    required this.info,
    required this.stats,
    required this.spells,
    required this.passive,
  });
}
