class UserModel {
  final String id;
  final String name;
  final String? email;
  final int age;
  final bool isActive;

  // Constructor utama
  UserModel({
    required this.id,
    required this.name,
    this.email,
    required this.age,
    required this.isActive,
  });

  // Deserialization
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? 'Unknown User',
      email: json['email'] as String?,
      age: json['age'] as int? ?? 0,
      isActive: json['isActive'] as bool? ?? false,
    );
  }

  // Serialization
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
      'isActive': isActive,
    };
  }
}

void main() {
  // Simulasi JSON dari API
  Map<String, dynamic> jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
  };

  // Konversi JSON ke Objek
  UserModel user = UserModel.fromJson(jsonResponse);

  print('Nama: ${user.name}');
  print('ID: ${user.id}');
  print('Email: ${user.email}');
  print('Status: ${user.isActive}');

  // Konversi kembali Objek ke JSON
  print('To JSON: ${user.toJson()}');
}