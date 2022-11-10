import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:find_an_excuse/data/data_sources/remote_data_source.dart';
import 'package:find_an_excuse/domain/entities/app_error.dart';
import 'package:find_an_excuse/domain/repository/excuse_repository.dart';

import '../models/excuse_model.dart';

class ExcuseRepositoryImpl extends ExcuseRepository {
  final RemoteDataSource remoteDataSource;

  ExcuseRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<ExcuseModel>>> getQuickExcuse() async {
    try {
      final excuse = await remoteDataSource.getQuickExcuse();
      return Right(excuse);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }

  @override
  Future<Either<AppError, List<ExcuseModel>>> getRandomExcuses(int noe) async {
    try {
      final excuses = await remoteDataSource.getRandomExcuses(noe);
      return Right(excuses);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }

  @override
  Future<Either<AppError, List<ExcuseModel>>> getCategoryExcuse(
      String category) async {
    try {
      final excuse = await remoteDataSource.getCategoryExcuse(category);
      return Right(excuse);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }

  @override
  Future<Either<AppError, List<ExcuseModel>>> getRandomCategoryExcuses(
      String category, int noe) async {
    try {
      final excuses =
          await remoteDataSource.getRandomCategoryExcuses(category, noe);
      return Right(excuses);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }
}
