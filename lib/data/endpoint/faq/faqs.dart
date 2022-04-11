import '../base/endpoint.dart';

class FaqsEndpoint extends Endpoint {
  @override
  HttpMethod get httpMethod => HttpMethod.GET;

  @override
  String get route => "faq";
}
