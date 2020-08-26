
class TrackingStatus {

  int id;
  int trip;
  String title;
  String country;
  String city;
  String created_date;

	TrackingStatus.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		trip = map["trip"],
		title = map["title"],
		country = map["country"],
		city = map["city"],
		created_date = map["created_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['trip'] = trip;
		data['title'] = title;
		data['country'] = country;
		data['city'] = city;
		data['created_date'] = created_date;
		return data;
	}
}
