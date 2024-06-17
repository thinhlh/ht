import 'package:ht/services/rest_api/models/base_response.dart';

abstract class LoginSuccessService {
  Future<BaseResponse> logout();
}
