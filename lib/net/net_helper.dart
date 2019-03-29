import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

class NetHelper {
  static String convertParamToString(Map<String, dynamic> params) {
    if (params.isEmpty) return '';
    //参数关键字排序
    var keys = params.keys.toList();
    keys.sort();
    String paramsString = '';
    keys.forEach((key) {
      var value = params[key];
      String valueString = '';
      if (value is Map) {
        //map类型不处理
      } else if (value is List) {
        //数组类型转为key=value1&key=value2模式
        String subValueString = '';
        value.forEach((subValue) {
          if (subValue is Map) {
            //map类型不处理
          } else if (subValue is List) {
            //数组中嵌套数组不处理
          } else {
            subValueString = key + '=' + subValue.toString() + '&';
          }
        });
        if (subValueString.length > 0) {
          valueString = key + '=' + subValueString + '&';
        }
      } else {
        valueString = key + '=' + value.toString() + '&';
      }
      paramsString += valueString;
    });
    return paramsString.substring(0, paramsString.length - 1);
  }

  static Map<String, dynamic> encodedParams(Map<String, dynamic> params) {
    Map<String, dynamic> encodedParams = {};
    var keys = params.keys.toList();
    keys.sort();
    keys.forEach((key) {
      var value = params[key];
      var encodedValue;
      if (value is Map) {
        //map类型不处理
      } else if (value is List) {
        List encodedSubValue = [];
        value.forEach((subValue) {
          if (subValue is Map) {
            //map类型不处理
          } else if (subValue is List) {
            //数组中嵌套数组不处理
          } else {
            encodedSubValue.add(Uri.encodeQueryComponent(subValue.toString()));
          }
        });
        encodedValue =  encodedSubValue;
      } else {
        encodedValue = value.toString();
      }
      encodedParams.addAll({key: Uri.encodeQueryComponent(encodedValue)});
    });
    return encodedParams;
  }

  // md5 converter
  static String generateMd5String(String data) {
    var content = new Utf8Encoder().convert(data);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }
}
