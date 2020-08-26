
class Deal {

  int id;
  int proposal;
  int trip;
  int package;
  int payment;
  int points;
  double system_commission;
  String created_date;
  int revoked_by;

	Deal.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		proposal = map["proposal"],
		trip = map["trip"],
		package = map["package"],
		payment = map["payment"],
		points = map["points"],
		system_commission = map["system_commission"],
		created_date = map["created_date"],
		revoked_by = map["revoked_by"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['proposal'] = proposal;
		data['trip'] = trip;
		data['package'] = package;
		data['payment'] = payment;
		data['points'] = points;
		data['system_commission'] = system_commission;
		data['created_date'] = created_date;
		data['revoked_by'] = revoked_by;
		return data;
	}
}
