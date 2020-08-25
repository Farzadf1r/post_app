
class Proposal {

  int id;
  int sender;
  int package;
  int trip;
  double price;
  String trip_passenger_approve_timestamp;
  String package_sender_approve_timestamp;
  String status;
  String created_date;

	Proposal.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		sender = map["sender"],
		package = map["package"],
		trip = map["trip"],
		price = map["price"],
		trip_passenger_approve_timestamp = map["trip_passenger_approve_timestamp"],
		package_sender_approve_timestamp = map["package_sender_approve_timestamp"],
		status = map["status"],
		created_date = map["created_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['sender'] = sender;
		data['package'] = package;
		data['trip'] = trip;
		data['price'] = price;
		data['trip_passenger_approve_timestamp'] = trip_passenger_approve_timestamp;
		data['package_sender_approve_timestamp'] = package_sender_approve_timestamp;
		data['status'] = status;
		data['created_date'] = created_date;
		return data;
	}
}
