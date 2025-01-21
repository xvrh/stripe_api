import 'package:http/http.dart';
import 'package:stripe_api/stripe_api.dart';

void main() async {
  var httpClient = Client();
  var api = StripeClient(httpClient, apiKey: 'xxx');



  httpClient.close();
}
