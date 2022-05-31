
// import 'package:get/get.dart';

// import '../api_endpoints.dart';
// import '../models/defaults/api_error_default_model.dart';
// import '../models/defaults/api_response_model.dart';
// import '../models/defaults/default_response_model.dart';

// class InfoCepRepository {
//   final GetConnect _connect;
//   const InfoCepRepository(this._connect);

//   Future<ApiResponseModel<List<ProfessionalResponseModel>>>
//       getInfoCep(String cep) async {
//     final _response = await _connect.get(
//       '${ApiEndpoints.infoCep}',
//     );

//     final _responseModel = DefaultResponseModel.fromMap(_response.body);
//     if (_responseModel.success) {
//       return ApiResponseModel(
//         data: List<ProfessionalResponseModel>.from(
//           _responseModel.data.map(
//             (professional) => ProfessionalResponseModel.fromMap(professional),
//           ),
//         ),
//       );
//     }

//     return ApiErrorDefaultModel(
//       message: 'Não foi possível buscar as informações',
//       response: _responseModel,
//     );
//   }
// }