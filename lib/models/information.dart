part of 'models.dart';

class Information extends Equatable {
  final int id;
  final String title;
  final String description;
  final DateTime dateTime;
  final String admin;

  Information(
      {this.id, this.title, this.description, this.dateTime, this.admin});

  factory Information.fromJson(Map<String, dynamic> data) => Information(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      dateTime: DateTime(data['created_at']),
      admin: data['admin']);

  @override
  List<Object> get props => [id, title, description, dateTime, admin];
}

List<Information> mockIformations = [
  Information(
    id: 1,
    title: "Cuti Bersama Bulan Oktober",
    description:
        "Diberitahukan bahwa cuti bersama bulan Oktober 2020 dimulai pada tanggal 28 Oktober - 7 November 2020",
    dateTime: DateTime.now(),
    admin: "Fauzi Alfa Alfi",
  ),
  Information(
    id: 2,
    title: "Cuti Bersama Bulan Desember",
    description:
        "Diberitahukan bahwa cuti bersama bulan Desember 2020 dimulai pada tanggal 25 Desember - 2 Januari 2021",
    dateTime: DateTime.now(),
    admin: "Fauzi Alfa Alfi",
  ),
];
