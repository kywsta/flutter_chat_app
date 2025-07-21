import 'package:equatable/equatable.dart';

abstract class DataEntity extends Equatable {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  const DataEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });
  
  @override
  List<Object?> get props => [id, createdAt, updatedAt];

  Map<String, dynamic> toJson();
}