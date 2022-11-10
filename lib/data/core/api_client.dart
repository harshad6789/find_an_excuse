import 'package:get/get.dart';

import 'api_constants.dart';

class ApiClient extends GetConnect {
  Future<Response<dynamic>> getResponse(String category, int noe) async {
    final Response response = await get(getPath(category, noe));
    return response;
  }

  String getPath(String category, int noe) {
    if ((category.isEmpty) & (noe == 0)) {
      return ApiConstants.BASE_URL;
    } else if ((category.isEmpty) & (noe != 0)) {
      return '${ApiConstants.BASE_URL}/$noe';
    } else if ((category.isNotEmpty) & (noe == 0)) {
      return '${ApiConstants.BASE_URL}$category';
    } else {
      return '${ApiConstants.BASE_URL}$category$noe';
    }
  }
}
