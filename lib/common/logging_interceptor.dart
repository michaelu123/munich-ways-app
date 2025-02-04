import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:munich_ways/common/logger_setup.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    log.d("REQUEST");
    log.d(data.url);
    log.d(data.baseUrl);
    log.d(data.headers);
    log.d(data.body);
    log.d(data.method);
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    log.d("RESPONSE");
    log.d(data.statusCode);
    log.d(data.body);
    log.d(data.headers);
    return data;
  }
}
