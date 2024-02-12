import 'package:dio/dio.dart';
import 'package:working_hours/model/workday_response/workday_response_model.dart';

class WorkdayApiClient {
  DateTime now = DateTime.now();
  Future fetch(int year, int month) async {
    final dio = Dio();
    final url = 'https://app.udcxx.me/api/workday/?y=$year&m=$month';
    final response = await dio.get(url);

    try {
      // final data = response.data;
      // final list = data.map((e) => Workday.fromJson(e));
      // // final data = Workday.fromData(list);
      final datas = response.data;
      final data = Workday.fromJson(datas);
      return data;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
