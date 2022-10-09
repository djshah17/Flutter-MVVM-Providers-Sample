import 'status.dart';

class ApiResponse<T> {

  Status? status;
  List<T>? data;
  String? message;

  ApiResponse(this.status,this.data,this.message);

  ApiResponse.none() : status = Status.NONE;

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.success(this.data) : status = Status.SUCCESS;

  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}