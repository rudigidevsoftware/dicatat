class Catatan {
  int? id;
  String? name;
  String? time;
  int? total;
  String? type;
  int? deleted;
  Catatan(
      {required this.id,
      required this.name,
      required this.time,
      required this.total,
      required this.type,
      required this.deleted});
  Catatan.fromJson(Map<String, dynamic> json) {
    id = json['idCatat'];
    name = json['name'] ?? 'unamed';
    time = json['time'];
    total = json['total'];
    type = json['type'];
    deleted = json['deleted'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idCatat'] = id;
    data['name'] = name;
    data['time'] = time;
    data['total'] = total;
    data['type'] = type;
    data['deleted'] = deleted;
    return data;
  }
}
