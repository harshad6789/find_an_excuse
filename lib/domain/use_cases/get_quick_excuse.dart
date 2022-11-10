import 'package:dartz/dartz.dart';
import 'package:find_an_excuse/domain/use_cases/usecase.dart';

import '../../data/models/excuse_model.dart';
import '../entities/app_error.dart';
import '../entities/no_params.dart';
import '../repository/excuse_repository.dart';

class GetQuickExcuse extends UseCase<List<ExcuseModel>, NoParams> {
  final ExcuseRepository repository;

  GetQuickExcuse(this.repository);

  @override
  Future<Either<AppError, List<ExcuseModel>>> call(NoParams params) async {
    return await repository.getQuickExcuse();
  }
}
