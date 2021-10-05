class CreateUserRequest {
  String? message;
  DataResponse? data;

  CreateUserRequest({this.message, this.data});

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      CreateUserRequest(
          message: json['message'], data: DataResponse.fromJson(json['data']));

  Map<String, dynamic> toJson() => {'message': message, 'data': data!.toJson()};
}

class DataResponse {
  DataResponse({
    this.latitude,
    this.longitude,
    this.name,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.password,
    this.email,
  });

  String? latitude;
  String? longitude;
  String? name;
  String? email;
  String? password;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  factory DataResponse.fromJson(Map<String, dynamic> json) => DataResponse(
      latitude: json["latitude"],
      longitude: json["longitude"],
      name: json["name"],
      updatedAt: DateTime.parse(json["updated_at"]),
      createdAt: DateTime.parse(json["created_at"]),
      id: json["id"],
      email: json['email'],
      password: json['password']);

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "name": name,
        "updated_at": updatedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "id": id,
        'email': email,
        'password': password
      };
}
