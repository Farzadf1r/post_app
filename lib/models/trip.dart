
class Trip {

  int id;
  String ref_code;
  int trip_type;
  int passenger;
  String ticket;
  String flight_number;
  String departure_date;
  String arrival_date;
  String origin_country;
  String origin_city;
  String destination_country;
  String destination_city;
  int capacity;
  int rate_per_kilo;
  List<int> preferred_contents;
  List<int> banned_contents;
  int status;
  bool is_confirmed;
  bool is_searchable;
  bool is_active;
  String created_date;
  String modified_date;

	Trip.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		ref_code = map["ref_code"],
		trip_type = map["trip_type"],
		passenger = map["passenger"],
		ticket = map["ticket"],
		flight_number = map["flight_number"],
		departure_date = map["departure_date"],
		arrival_date = map["arrival_date"],
		origin_country = map["origin_country"],
		origin_city = map["origin_city"],
		destination_country = map["destination_country"],
		destination_city = map["destination_city"],
		capacity = map["capacity"],
		rate_per_kilo = map["rate_per_kilo"],
		preferred_contents = List<int>.from(map["preferred_contents"]),
		banned_contents = List<int>.from(map["banned_contents"]),
		status = map["status"],
		is_confirmed = map["is_confirmed"],
		is_searchable = map["is_searchable"],
		is_active = map["is_active"],
		created_date = map["created_date"],
		modified_date = map["modified_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['ref_code'] = ref_code;
		data['trip_type'] = trip_type;
		data['passenger'] = passenger;
		data['ticket'] = ticket;
		data['flight_number'] = flight_number;
		data['departure_date'] = departure_date;
		data['arrival_date'] = arrival_date;
		data['origin_country'] = origin_country;
		data['origin_city'] = origin_city;
		data['destination_country'] = destination_country;
		data['destination_city'] = destination_city;
		data['capacity'] = capacity;
		data['rate_per_kilo'] = rate_per_kilo;
		data['preferred_contents'] = preferred_contents;
		data['banned_contents'] = banned_contents;
		data['status'] = status;
		data['is_confirmed'] = is_confirmed;
		data['is_searchable'] = is_searchable;
		data['is_active'] = is_active;
		data['created_date'] = created_date;
		data['modified_date'] = modified_date;
		return data;
	}
}
