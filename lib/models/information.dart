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
