import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

import 'package:cognitive_face_flutter/src/common/request_method.dart';
import 'package:http_parser/http_parser.dart';

const String HEADER_KEY = "Ocp-Apim-Subscription-Key";
const String CONTENT_TYPE = "Content-Type";
const String APPLICATION_JSON = "application/json";
const String OCTET_STREAM = "octet-stream";
const String DATA = "data";

class WebServiceRequest {
  final String mSubscriptionKey;
  Client mClient = Client();

  WebServiceRequest(this.mSubscriptionKey);
  // Gson mGson = new Gson();

  Future<dynamic> request(
    String url, {
    RequestMethod method,
    Map<String, dynamic> data,
    String contentType,
  }) {
    switch (method) {
      case RequestMethod.HEAD:
      case RequestMethod.OPTIONS:
      case RequestMethod.TRACE:
        break;
      case RequestMethod.GET:
        return _get(url);
      case RequestMethod.POST:
        return _post(url, data, contentType);
      case RequestMethod.PATCH:
        return _patch(url, data, contentType);
      case RequestMethod.DELETE:
        return _delete(url);
      case RequestMethod.PUT:
        return _put(url, data, contentType);
    }
    return null;
  }

  Future<dynamic> _get(String url) async {
    Response response = await mClient.get(
      url,
      headers: {
        HEADER_KEY: mSubscriptionKey,
      },
    );

    final int statusCode = response.statusCode;
    final String reasonPhrase = response.reasonPhrase;
    final jsonResponse = json.decode(response.body);
    if (statusCode >= 400) {
      if (jsonResponse != null && jsonResponse['error'] != null) {
        throw ClientException(
          jsonResponse['error'],
        );
      }
      throw ClientException(
        'Network Error: $statusCode $reasonPhrase',
      );
    }

    return jsonResponse;
  }

  Future<dynamic> _patch(
      String url, Map<String, dynamic> data, String contentType) async {
    Response response = await mClient.patch(
      url,
      headers: {
        HEADER_KEY: mSubscriptionKey,
        CONTENT_TYPE: APPLICATION_JSON,
      },
      body: json.encode(data),
    );

    final int statusCode = response.statusCode;
    final String reasonPhrase = response.reasonPhrase;
    final jsonResponse = json.decode(response.body);
    if (statusCode >= 400) {
      if (jsonResponse != null && jsonResponse['error'] != null) {
        throw ClientException(
          jsonResponse['error'],
        );
      }
      throw ClientException(
        'Network Error: $statusCode $reasonPhrase',
      );
    }

    return jsonResponse;
  }

  Future<dynamic> _post(
      String url, Map<String, dynamic> data, String contentType) async {
    Response response;
    bool isStream = false;

    if (contentType != null &&
        contentType.isNotEmpty &&
        contentType.toLowerCase().contains(OCTET_STREAM)) {
      isStream = true;
    }

    if (!isStream) {
      response = await mClient.post(
        url,
        headers: {
          HEADER_KEY: mSubscriptionKey,
          CONTENT_TYPE: APPLICATION_JSON,
        },
        body: json.encode(data),
      );
    } else {
      response = await mClient.post(
        url,
        headers: {
          HEADER_KEY: mSubscriptionKey,
          CONTENT_TYPE: contentType,
        },
        body: data['data'],
      );
    }

    final int statusCode = response.statusCode;
    final String reasonPhrase = response.reasonPhrase;
    final jsonResponse = json.decode(response.body);

    if (statusCode >= 400) {
      if (jsonResponse != null && jsonResponse['error'] != null) {
        throw ClientException(
          jsonResponse['error'],
        );
      }
      throw ClientException(
        'Network Error: $statusCode $reasonPhrase',
      );
    }

    return jsonResponse;
  }

  Future<dynamic> _put(
      String url, Map<String, dynamic> data, String contentType) async {
    Response response = await mClient.put(
      url,
      headers: {
        HEADER_KEY: mSubscriptionKey,
        CONTENT_TYPE: APPLICATION_JSON,
      },
      body: json.encode(data),
    );

    final int statusCode = response.statusCode;
    final String reasonPhrase = response.reasonPhrase;
    final dynamic jsonResponse = json.decode(response.body);
    if (statusCode >= 400) {
      if (jsonResponse != null && jsonResponse['error'] != null) {
        throw ClientException(
          jsonResponse['error'],
        );
      }
      throw ClientException(
        'Network Error: $statusCode $reasonPhrase',
      );
    }

    return jsonResponse;
  }

  Future<dynamic> _delete(String url) async {
    Response response = await mClient.delete(
      url,
      headers: {
        HEADER_KEY: mSubscriptionKey,
        CONTENT_TYPE: APPLICATION_JSON,
      },
    );

    final int statusCode = response.statusCode;
    final String reasonPhrase = response.reasonPhrase;
    final jsonResponse = json.decode(response.body);
    if (statusCode >= 400) {
      if (jsonResponse != null && jsonResponse['error'] != null) {
        throw ClientException(
          jsonResponse['error'],
        );
      }
      throw ClientException(
        'Network Error: $statusCode $reasonPhrase',
      );
    }

    return jsonResponse;
  }

  static String getUrl(String path, Map<String, dynamic> params) {
    var buffer = StringBuffer(path);

    bool start = true;
    params.forEach((String key, dynamic value) {
      if (start) {
        buffer.write("?");
        start = false;
      } else {
        buffer.write("&");
      }

      buffer.write(key);
      buffer.write('=');
      buffer.write(Uri.decodeComponent(value.toString()));
    });

    return buffer.toString();
  }
}
