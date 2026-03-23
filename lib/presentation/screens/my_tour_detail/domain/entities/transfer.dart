import 'package:equatable/equatable.dart';

class Transfer extends Equatable {
  final String? name;
  final String? dateStartText;
  final int? count;

  const Transfer({this.name, this.dateStartText, this.count});

Transfer copyWith({String? name,
  String? dateStartText,
  int? count,}) {
    return Transfer(
      name: name ?? this.name,
      dateStartText: dateStartText ?? this.dateStartText,
      count: count ?? this.count,
    );
  }

  @override
  List<Object?> get props => [name, dateStartText, count];
}