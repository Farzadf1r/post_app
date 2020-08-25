
class Package {

  int id;
  String ref_code;
  int sender;
  int weight;
  int width;
  int height;
  int length;
  String photo;
  String origin_country;
  String origin_city;
  String destination_country;
  String destination_city;
  List<int> content;
  String description;
  int status;
  bool is_active;
  bool is_confirmed;
  bool is_searchable;
  String created_date;
  String modified_date;

	Package.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		ref_code = map["ref_code"],
		sender = map["sender"],
		weight = map["weight"],
		width = map["width"],
		height = map["height"],
		length = map["length"],
		photo = map["photo"],
		origin_country = map["origin_country"],
		origin_city = map["origin_city"],
		destination_country = map["destination_country"],
		destination_city = map["destination_city"],
		content = List<int>.from(map["content"]),
		description = map["description"],
		status = map["status"],
		is_active = map["is_active"],
		is_confirmed = map["is_confirmed"],
		is_searchable = map["is_searchable"],
		created_date = map["created_date"],
		modified_date = map["modified_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['ref_code'] = ref_code;
		data['sender'] = sender;
		data['weight'] = weight;
		data['width'] = width;
		data['height'] = height;
		data['length'] = length;
		data['photo'] = photo;
		data['origin_country'] = origin_country;
		data['origin_city'] = origin_city;
		data['destination_country'] = destination_country;
		data['destination_city'] = destination_city;
		data['content'] = content;
		data['description'] = description;
		data['status'] = status;
		data['is_active'] = is_active;
		data['is_confirmed'] = is_confirmed;
		data['is_searchable'] = is_searchable;
		data['created_date'] = created_date;
		data['modified_date'] = modified_date;
		return data;
	}
}
