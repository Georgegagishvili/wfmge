import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 4,
    errorMethodCount: 8,
    lineLength: 120,
    colors: true,
    printEmojis: false,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);


void logResponseToConsole(Response response, {int maxResponseLength = 2000}) {
  final request = response.requestOptions;
  final fullUrl = '${request.baseUrl}${request.path}';

  String prettyJson(dynamic data) {
    try {
      if (data is String) {
        data = json.decode(data);
      }
      return const JsonEncoder.withIndent('  ').convert(data);
    } catch (_) {
      return data.toString();
    }
  }

  String truncate(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}... (truncated, total ${text.length} chars)';
  }

  final buffer = StringBuffer()
    ..writeln('--- API REQUEST ---')
    ..writeln('Method:      ${request.method}')
    ..writeln('URL:         $fullUrl');

  if (request.queryParameters.isNotEmpty) {
    buffer.writeln('Query:       ${jsonEncode(request.queryParameters)}');
  }

  if (request.data != null) {
    buffer.writeln('Data:        ${prettyJson(request.data)}');
  }

  if (request.headers.isNotEmpty) {
    buffer.writeln('Headers:     ${jsonEncode(request.headers)}');
  }

  final prettyResponse = prettyJson(response.data);
  buffer
    ..writeln('--- API RESPONSE ---')
    ..writeln('Status Code: ${response.statusCode}')
    ..writeln('Response:    ${truncate(prettyResponse, maxResponseLength)}')
    ..writeln('--------------');

  logger.i(buffer.toString());
}
