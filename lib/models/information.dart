part of 'models.dart';

class Information extends Equatable {
  final int id;
  final String title;
  final String description;
  final DateTime waktu;
  final String admin;
  final int createdBy;

  Information(
      {this.id,
      this.title,
      this.description,
      this.waktu,
      this.admin,
      this.createdBy});

  factory Information.fromJson(Map<String, dynamic> data) => Information(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      waktu: DateTime.parse(data['created_at']),
      createdBy: data['created_by'],
      admin: data['admin']);

  @override
  List<Object> get props => [id, title, description, waktu, createdBy, admin];
}

List<Information> mockInformation = [
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      waktu: DateTime.parse("2020-10-27 12:20:47"),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
];
