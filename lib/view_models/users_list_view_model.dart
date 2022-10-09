import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/models/users_list_model.dart';
import 'package:flutter_mvvm_providers_sample/network_service/apis.dart';
import '../network_service/base_api_service.dart';
import '../network_service/network_api_service.dart';
import '../network_service/response/api_response.dart';
import '../utilities/common_utilities.dart';

class UsersListViewModel with ChangeNotifier {
  ApiResponse<User> usersData = ApiResponse.none();
  final BaseApiService _apiService = NetworkApiService();

  void _setUsersResponse(ApiResponse<User> response) {
    CommonUtilities.printMsg("setUsersResponse :: $response");
    usersData = response;
    notifyListeners();
  }

  Future<ApiResponse<User>> wsUsersData() async {
    _setUsersResponse(ApiResponse.loading());
    try {
      dynamic response = await _apiService.getResponse(Apis.getAllUsers);

      CommonUtilities.printMsg("setUsersResponse :: RES:-- $response");
      final jsonData = response.map<User>((user) => User.fromJSON(user)).toList();
      _setUsersResponse(ApiResponse.success(jsonData));

      return ApiResponse.success(jsonData);
    } catch (e) {
      _setUsersResponse(ApiResponse.error(e.toString()));
      rethrow;
    }
  }
}