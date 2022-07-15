import 'package:get/get.dart';
import 'package:project0/core/infra/models/response/zip_code_data_model.dart';

import '../api_endpoints.dart';
import '../models/defaults/api_error_default_model.dart';
import '../models/defaults/api_response_model.dart';
import '../models/defaults/default_response_model.dart';

class ZipCodeRepository {
  final GetConnect _connect;
  const ZipCodeRepository(this._connect);

  Future<ApiResponseModel<List<ZipCodeDataModel>>> getInfoCep(
    String zipCode,
  ) async {
    final _response = await _connect.get('${ApiEndpoints.zipCode}/$zipCode');

    final _responseModel = DefaultResponseModel.fromMap(_response.body);
    if (_responseModel.success) {
      return ApiResponseModel(
        data: List<ZipCodeDataModel>.from(
          _responseModel.data.map(
            (professional) => ZipCodeDataModel.fromMap(professional),
          ),
        ),
      );
    }

    return ApiErrorDefaultModel(
      message: 'Não foi possível buscar as informações',
      response: _responseModel,
    );
  }
}
