import 'dart:convert';

import 'package:find_an_excuse/data/core/api_client.dart';
import 'package:get/get.dart';

import '../models/excuse_model.dart';

abstract class RemoteDataSource {
  Future<List<ExcuseModel>> getQuickExcuse();
  Future<List<ExcuseModel>> getRandomExcuses(int noe);
  Future<List<ExcuseModel>> getCategoryExcuse(String category);
  Future<List<ExcuseModel>> getRandomCategoryExcuses(String category, int noe);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<List<ExcuseModel>> getQuickExcuse() async {
    final Response response = await ApiClient().getResponse('', 0);
    final List<dynamic> parsed = jsonDecode(response.bodyString!);
    final excuse = parsed.map((v) => ExcuseModel.fromJson(v));
    return excuse.toList();
  }

  @override
  Future<List<ExcuseModel>> getRandomExcuses(int noe) async {
    final Response response = await ApiClient().getResponse('', noe);
    final List<dynamic> parsed = jsonDecode(response.bodyString!);
    final excuse = parsed.map((v) => ExcuseModel.fromJson(v));
    return excuse.toList();
  }

  @override
  Future<List<ExcuseModel>> getCategoryExcuse(String category) async {
    final Response response = await ApiClient().getResponse('/$category/', 0);
    final List<dynamic> parsed = jsonDecode(response.bodyString!);
    final excuse = parsed.map((v) => ExcuseModel.fromJson(v));
    return excuse.toList();
  }

  @override
  Future<List<ExcuseModel>> getRandomCategoryExcuses(
      String category, int noe) async {
    final Response response = await ApiClient().getResponse('/$category/', noe);
    final List<dynamic> parsed = jsonDecode(response.bodyString!);
    final excuse = parsed.map((v) => ExcuseModel.fromJson(v));
    return excuse.toList();
  }
}
