import 'dart:io';

import 'package:http/http.dart';

final _specUrl = Uri.parse(
    'https://raw.githubusercontent.com/stripe/openapi/refs/heads/master/openapi/spec3.yaml');

final specFile = File('tool/spec3.yaml');

void main() async {
  var content = await readBytes(_specUrl);
  await specFile.writeAsBytes(content);
}
