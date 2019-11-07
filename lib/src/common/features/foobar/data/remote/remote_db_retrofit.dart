import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:telehealth/src/common/features/foobar/data/model/task.dart';

part 'remote_db_retrofit.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/tasks")
  Future<List<Task>> getTasks();
}

void main(List<String> args) {
  final dio = Dio(); // Provide a dio instance
  dio.options.headers["Demo-Header"] =
      "demo header"; // config your dio headers globally
  dio.options.headers["Content-Type"] = "application/json";
  final client = RestClient(dio);

  client.getTasks().then((tasks) {
    tasks.forEach((task) {
      print(task.name);
    });
  });
}
