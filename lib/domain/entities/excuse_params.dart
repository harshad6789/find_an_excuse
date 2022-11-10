import 'package:equatable/equatable.dart';

class ExcuseParams extends Equatable {
  final String category;
  final int noe;

  const ExcuseParams(this.category, this.noe);

  @override
  List<Object?> get props => [category, noe];
}
