part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final String alamat;
  final String jabatan;
  final String jenisKelamin;
  final String tempatLahir;
  final String tglLahir;
  static String token;

  User({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.alamat,
    this.jabatan,
    this.jenisKelamin,
    this.tempatLahir,
    this.tglLahir,
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
      id: data['user_id'],
      name: data['name'],
      email: data['email'],
      mobile: data['mobile'],
      alamat: data['alamat'],
      jabatan: data['jabatan'],
      jenisKelamin: data['jenis_kelamin'],
      tempatLahir: data['tempat_lahir'],
      tglLahir: data['tgl_lahir']);

  @override
  List<Object> get props => [
        id,
        name,
        email,
        mobile,
        alamat,
        jabatan,
        jenisKelamin,
        tempatLahir,
        tglLahir,
      ];
}

User mockUser = User(
    id: 1,
    name: "Fatichul Iksan",
    email: "fatichul@gmail.com",
    mobile: "-",
    alamat: "Jalan Ir.Soekarno",
    jabatan: "Senior RnD",
    jenisKelamin: "Laki-laki",
    tempatLahir: "Blitar",
    tglLahir: "23-07-1997");
