
class Payment {

  int user;
  double amount;
  String ref_code;
  String created_date;
  String description;
  bool is_deposit;
  bool is_refunded;

	Payment.fromJsonMap(Map<String, dynamic> map): 
		user = map["user"],
		amount = map["amount"],
		ref_code = map["ref_code"],
		created_date = map["created_date"],
		description = map["description"],
		is_deposit = map["is_deposit"],
		is_refunded = map["is_refunded"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['user'] = user;
		data['amount'] = amount;
		data['ref_code'] = ref_code;
		data['created_date'] = created_date;
		data['description'] = description;
		data['is_deposit'] = is_deposit;
		data['is_refunded'] = is_refunded;
		return data;
	}
}
