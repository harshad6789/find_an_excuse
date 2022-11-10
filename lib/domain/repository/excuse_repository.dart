import 'package:dartz/dartz.dart';

import '../../data/models/excuse_model.dart';
import '../entities/app_error.dart';

abstract class ExcuseRepository {
  Future<Either<AppError, List<ExcuseModel>>> getQuickExcuse();
  Future<Either<AppError, List<ExcuseModel>>> getRandomExcuses(int noe);
  Future<Either<AppError, List<ExcuseModel>>> getCategoryExcuse(
      String category);
  Future<Either<AppError, List<ExcuseModel>>> getRandomCategoryExcuses(
      String category, int noe);
}
