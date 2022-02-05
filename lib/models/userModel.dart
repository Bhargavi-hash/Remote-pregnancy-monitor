class userModel {
  String? uid;
  String? email;
  String? fullName;
  String? phoneNumber;
  int? role;

  userModel({this.uid, this.email, this.fullName, this.phoneNumber, this.role});

  // fetch data from server
  factory userModel.fromMap(map) {
    return userModel(
      uid: map['uid'],
      email: map['email'],
      fullName: map['fullName'],
      phoneNumber: map['phoneNumber'],
      role: map['role'],
    );
  }

  // Sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'role': role,
    };
  }
}
