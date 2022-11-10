import 'package:find_an_excuse/data/data_sources/remote_data_source.dart';
import 'package:find_an_excuse/data/repository/excuse_repository_impl.dart';
import 'package:find_an_excuse/domain/repository/excuse_repository.dart';
import 'package:find_an_excuse/domain/use_cases/get_quick_excuse.dart';
import 'package:find_an_excuse/presentation/controllers/excuse_controller.dart';
import 'package:find_an_excuse/presentation/controllers/theme_controller.dart';
import 'package:get/get.dart';

import '../../domain/use_cases/get_category_excuse.dart';
import '../../domain/use_cases/get_random_category_excuse.dart';
import '../../domain/use_cases/get_random_excuses.dart';

class ExcuseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController(), fenix: true);
    Get.lazyPut<RemoteDataSource>(() => RemoteDataSourceImpl());
    Get.lazyPut<ExcuseRepository>(() => ExcuseRepositoryImpl(Get.find()));
    Get.lazyPut<GetQuickExcuse>(() => GetQuickExcuse(Get.find()));
    Get.lazyPut<GetRandomExcuses>(() => GetRandomExcuses(Get.find()));
    Get.lazyPut<GetCategoryExcuse>(() => GetCategoryExcuse(Get.find()));
    Get.lazyPut<GetRandomCategoryExcuses>(
        () => GetRandomCategoryExcuses(Get.find()));

    Get.lazyPut(
        () => ExcuseController(
              Get.find(),
              Get.find(),
              Get.find(),
              Get.find(),
            ),
        fenix: true);
  }
}
