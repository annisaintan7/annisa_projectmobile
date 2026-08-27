import 'models/user_model.dart';

void main() {
  // Simulasi JSON dari API (ada data yang hilang, misalnya 'id' dan 'email' null)
  Map<String, dynamic> jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
    // 'id', 'email', dan 'isActive' tidak dikirim oleh server
  };

  // Konversi JSON ke Objek (Aplikasi tidak akan crash berkat Null Safety)
  UserModel user = UserModel.fromJson(jsonResponse);

  print('Nama: ${user.name}'); // Output: Budi Santoso
  print('ID: ${user.id}'); // Output: (string kosong)
  print('Status: ${user.isActive}'); // Output: false

  // Konversi kembali Objek ke JSON
  print('To JSON: ${user.toJson()}');
}