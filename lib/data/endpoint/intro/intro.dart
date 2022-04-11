import '../base/endpoint.dart';

class IntroEndpoint extends Endpoint {
  @override
  HttpMethod get httpMethod => HttpMethod.GET;

  @override
  String get route => "intro";
}
