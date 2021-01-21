part of 'models.dart';

class Information extends Equatable {
  final int id;
  final String title;
  final String description;
  final DateTime dateTime;
  final String admin;
  final int createdBy;

  Information(
      {this.id,
      this.title,
      this.description,
      this.dateTime,
      this.admin,
      this.createdBy});

  factory Information.fromJson(Map<String, dynamic> data) => Information(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      dateTime: DateTime(data['created_at']),
      createdBy: data['created_by'],
      admin: data['admin']);

  @override
  List<Object> get props =>
      [id, title, description, dateTime, createdBy, admin];
}

List<Information> mockInformation = [
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
  Information(
      id: 1,
      admin: "Fauzi Alfa Alvi",
      dateTime: DateTime.now(),
      description:
          "Diberitahukan bahwa cuti bersama bulan Oktober dimulai pada tanggal 28 Oktober - 7 November 2020",
      title: "Cuti Bersama Bulan Oktober"),
];
