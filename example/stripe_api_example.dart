import 'package:http/http.dart';
import 'package:stripe_api/stripe_api.dart';

void main() async {
  var httpClient = Client();
  var api = StripeClient(httpClient, apiKey: 'xxx');

  var prices = await api.getPrices(body: {});
  print(prices);

  httpClient.close();
}
