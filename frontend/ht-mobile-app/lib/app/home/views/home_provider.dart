import 'package:easy_localization/easy_localization.dart';
import 'package:ht/app/home/domain/services/home_service.dart';
import 'package:ht/base/presentation/providers/base_provider.dart';
import 'package:ht/generated/locale_keys.g.dart';
import 'package:ht/services/rest_api/models/base_response.dart';

class HomeProvider extends BaseProvider {
  final HomeService _homeService;

  HomeProvider(this._homeService);
  String title = tr(LocaleKeys.general);

  Future<BaseResponse<String>> checkConnection() async {
    final response = await _homeService.checkConnection();

    title = response.data ?? "";
    notifyListeners();

    return response;
  }

  Future<BaseResponse<String>> checkConnectionFailed() async {
    final response = await _homeService.checkConnectionFailed();

    if (response.success) {
      title = response.data ?? "";
    } else {
      title = response.message ?? "";
    }

    notifyListeners();

    return response;
  }
}
