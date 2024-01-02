
class NetWorkResponse{
  final bool isSuccess;
  final int statusCode;
  final Map<String,dynamic> responseJson;

  NetWorkResponse(this.isSuccess, this.statusCode, this.responseJson);
}