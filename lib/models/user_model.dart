class UserModel {
  int id;
  String uuid;
  String firstName;
  String lastName;
  String email;
  String city;
  String fullName;
  String image;

  UserModel(
      {this.id,
      this.uuid,
      this.firstName,
      this.lastName,
      this.email,
      this.fullName,
      this.image});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    fullName = json['full_name'];
    image = json['image'];
  }
}
