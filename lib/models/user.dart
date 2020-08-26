
class User {

  int id;
  String first_name;
  String last_name;
  String birth_date;
  int membership_type;
  Object xp;
  Object mobile;
  String username;
  String email;
  bool mobile_verified;
  bool email_verified;
  Object modified_date;

	User.fromJsonMap(Map<String, dynamic> map):
		id = map["id"],
		first_name = map["first_name"],
		last_name = map["last_name"],
		birth_date = map["birth_date"],
		membership_type = map["membership_type"],
		xp = map["xp"],
		mobile = map["mobile"],
		username = map["username"],
		email = map["email"],
		mobile_verified = map["mobile_verified"],
		email_verified = map["email_verified"],
		modified_date = map["modified_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['first_name'] = first_name;
		data['last_name'] = last_name;
		data['birth_date'] = birth_date;
		data['membership_type'] = membership_type;
		data['xp'] = xp;
		data['mobile'] = mobile;
		data['username'] = username;
		data['email'] = email;
		data['mobile_verified'] = mobile_verified;
		data['email_verified'] = email_verified;
		data['modified_date'] = modified_date;
		return data;
	}
}
