import 'package:equatable/equatable.dart';

class OtherServices extends Equatable {
  final String? name;
  final int? count;

  const OtherServices({this.name, this.count});

  OtherServices copyWith({String? name, int? count}) {
    return OtherServices(
      name: name ?? this.name,
      count: count ?? this.count,
    );
  }

  @override
  List<Object?> get props => [name, count];
}