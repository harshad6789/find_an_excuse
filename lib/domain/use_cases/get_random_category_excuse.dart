import 'package:find_an_excuse/domain/entities/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:find_an_excuse/domain/entities/excuse_params.dart';
import 'package:find_an_excuse/domain/repository/excuse_repository.dart';
import 'package:find_an_excuse/domain/use_cases/usecase.dart';

import '../../data/models/excuse_model.dart';

class GetRandomCategoryExcuses
    extends UseCase<List<ExcuseModel>, ExcuseParams> {
  final ExcuseRepository repository;

  GetRandomCategoryExcuses(this.repository);
  @override
  Future<Either<AppError, List<ExcuseModel>>> call(ExcuseParams params) async {
    return await repository.getRandomCategoryExcuses(
        params.category, params.noe);
  }
}
