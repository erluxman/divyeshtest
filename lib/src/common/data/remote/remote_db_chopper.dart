import "dart:async";

import 'package:chopper/chopper.dart';

part "remote_db_chopper.chopper.dart";

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: 'search/repositories')
  Future<Response> getRepos({@Query('q') String path = 'flutter:featured'});

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://api.github.com/',
        services: [_$ApiService()],
        interceptors: [HttpLoggingInterceptor()],
        converter: JsonConverter());
    return _$ApiService(client);
  }
}


class ChopperAPITest{
  testChopper(){
    ApiService.create().getRepos().then((response) {
      print(response.body);
    });
  }
}
