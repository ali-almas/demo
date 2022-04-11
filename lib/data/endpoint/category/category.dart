import '../base/endpoint.dart';

class CategoryEndpoint extends Endpoint {
  @override
  HttpMethod get httpMethod => HttpMethod.GET;

  @override
  String get route => "category";
}
