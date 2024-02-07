
//! errorModel for Api when error occur
import '../api_services/end_points.dart';

class ErrorModel {
  final int status;
  final String errorMessage;
  final String code;

  ErrorModel({required this.status, required this.errorMessage,required this.code});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      status: jsonData[ApiKey.status],
      code: jsonData[ApiKey.code],
      errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
