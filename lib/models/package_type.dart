
class PackageType {

  int type;
  String description;
  double point_multiplier;
  bool is_sensitive;

	PackageType.fromJsonMap(Map<String, dynamic> map): 
		type = map["type"],
		description = map["description"],
		point_multiplier = map["point_multiplier"],
		is_sensitive = map["is_sensitive"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['type'] = type;
		data['description'] = description;
		data['point_multiplier'] = point_multiplier;
		data['is_sensitive'] = is_sensitive;
		return data;
	}
}
