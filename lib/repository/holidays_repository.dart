import 'package:working_hours/model/arguments/arguments_model.dart';
import 'package:working_hours/service/holidays_api_client.dart';

class WorkdayRepository {
  final api = WorkdayApiClient();
  dynamic fetch(WorkdayArgs args) async {
    return await api.fetch(args.year, args.month);
  }
}
