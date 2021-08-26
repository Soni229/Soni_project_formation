class Source {
  Source({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  factory Source.fromMap(Map<String, dynamic> json) => Source(
        id: json["id"] == null ? "Missing id" : json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
