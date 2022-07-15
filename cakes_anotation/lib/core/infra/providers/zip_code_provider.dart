
import 'package:project0/core/infra/models/defaults/provider_response_model.dart';
import 'package:project0/core/infra/models/response/zip_code_data_model.dart';

import '../models/defaults/app_error_model.dart';
import '../repositories/zip_code_repository.dart';

class ZipcodeProvider {
  final ZipCodeRepository _repository;
  ZipcodeProvider(this._repository);

  Future<ProviderResponseModel<ZipCodeDataModel?>> getAddressIdsByZipcode(
    String zipCode,
  ) async {
    try {
      final _response = await _repository.getInfoCep(zipCode);
      return ProviderResponseModel.fromMap(_response.toMap());
    } catch (e) {
      return AppErrorDefaultModel('ZipcodeProvider.getAddressIdsByZipcode() $e');
    }
  }
}
