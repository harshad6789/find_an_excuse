import 'package:find_an_excuse/domain/entities/app_error.dart';
import 'package:find_an_excuse/domain/entities/excuse_params.dart';
import 'package:find_an_excuse/domain/entities/no_params.dart';
import 'package:find_an_excuse/domain/use_cases/get_category_excuse.dart';
import 'package:find_an_excuse/domain/use_cases/get_random_category_excuse.dart';
import 'package:find_an_excuse/domain/use_cases/get_random_excuses.dart';
import 'package:get/state_manager.dart';

import '../../data/models/excuse_model.dart';
import '../../domain/use_cases/get_quick_excuse.dart';

class ExcuseController extends GetxController with StateMixin {
  var category = ''.obs;
  var noe = 0.obs;
  var excuse = const <ExcuseModel>[].obs;
  final GetQuickExcuse getQuickExcuse;
  final GetRandomExcuses getRandomExcuses;
  final GetCategoryExcuse getCategoryExcuse;
  final GetRandomCategoryExcuses getRandomCategoryExcuse;

  ExcuseController(
    this.getCategoryExcuse,
    this.getRandomExcuses,
    this.getQuickExcuse,
    this.getRandomCategoryExcuse,
  );

  @override
  void onInit() {
    super.onInit();
    loadQuickExcuse();
  }

  void loadQuickExcuse() async {
    excuse.value = [];
    await getQuickExcuse(NoParams()).then((response) {
      response.fold(
          (l) => AppErrorType.api,
          (r) => [
                for (var v in r) {excuse.add(v)}
              ]);
      change(excuse, status: RxStatus.success());
    }, onError: (appErrorType) {
      change(excuse, status: RxStatus.error(appErrorType.toString()));
    });
  }

  void loadRandomExcuses(int newNoe) async {
    excuse.value = [];
    noe.value = newNoe;
    await getRandomExcuses(ExcuseParams('', noe.value)).then((response) {
      response.fold(
          (l) => AppErrorType.api,
          (r) => {
                for (var v in r) {excuse.add(v)},
              });
      change(excuse, status: RxStatus.success());
    }, onError: (appErrorType) {
      change(excuse, status: RxStatus.error(appErrorType.toString()));
    });
  }

  void loadCategoryExcuse(String newCategory) async {
    excuse.value = [];
    category.value = newCategory.toLowerCase();
    await getCategoryExcuse(ExcuseParams(category.value, 0)).then((response) {
      response.fold(
          (l) => AppErrorType.api,
          (r) => {
                for (var v in r) {excuse.add(v)},
              });
      change(excuse, status: RxStatus.success());
    }, onError: (appErrorType) {
      change(excuse, status: RxStatus.error(appErrorType.toString()));
    });
  }

  void loadRandomCategoryExcuses(String newCategory, int newNoe) async {
    excuse.value = [];
    category.value = newCategory.toLowerCase();
    noe.value = newNoe;
    await getRandomCategoryExcuse(ExcuseParams(category.value, noe.value)).then(
        (response) {
      response.fold(
          (l) => AppErrorType.api,
          (r) => [
                for (var v in r) {excuse.add(v)}
              ]);
      change(excuse, status: RxStatus.success());
    }, onError: (appErrorType) {
      change(excuse, status: RxStatus.error(appErrorType.toString()));
    });
  }
}
