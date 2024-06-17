import 'package:ht/app/login_success/domain/services/login_success_service.dart';
import 'package:ht/base/presentation/providers/base_provider.dart';
import 'package:ht/services/rest_api/models/base_response.dart';

class LoginSuccessProvider extends BaseProvider {
  final LoginSuccessService _loginSuccessService;

  LoginSuccessProvider(this._loginSuccessService);

  Future<BaseResponse> logout() async {
    return await _loginSuccessService.logout();
  }
}
