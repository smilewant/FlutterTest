import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:flutter_app/net/net_request.dart';
import 'package:flutter_app/net/net_url.dart';
import 'package:flutter_app/net/vst_other_url_vo.dart';
import 'package:flutter_app/tools/dio/src/dio.dart';
import 'package:flutter_app/tools/dio/src/form_data.dart';
import 'package:flutter_app/tools/dio/src/response.dart';

class Log {
  static void log(var tag, var str) {
    print("flutter $tag \n\t : $str");
  }

  static void net() async {
//    String url = "https://api3g2.lvmama.com/route/router/rest.do?method=api.com.route.common.product.getRouteDetails&productId=1550627&productDestId=0&version=2.0.0&clientTimestamp=1551690754570&BSFIT_DEVICEID=QW8WgSd2Gp8IxuCGJMcRO-pZIyfe9z5P3sQhdHyoZ9-REln_yxbHeND_rO9FKZqeRv_TccRNtzxfkjjCPqT_xhU4l4qiCPXS5WQni-UubHB1VQap_qp1SrtJJjCuA509PZgAddPw0QEhHxfsxCvHyf8x6vK481QK&udid=862750030495722&lvsessionid=86dc5cc0-5abb-4410-9950-8795504bc68e&iuf=1551690754570210760&globalLatitude=31.23498&globalLongitude=121.323037&lvtukey=4d3ce40224b6c323d5e921ec2ac6acd6&osVersion=6.0&lvversionCode=117&lvversion=8.2.30&firstChannel=ANDROID&deviceName=M5&formate=json&secondChannel=LVMM";
    String url = "https://api3g2.lvmama.com/other/router/rest.do?BSFIT_DEVICEID=iocjfTOEtnxfqNu7nl6wJF3EvI8AQCY8decRLLpbt1hghAhrar6YTnuVwnDCFINO1jz23greXmejImymWOcJHa3hccnq0pbKSJJW-z8pTQUKKVeiM194h3-pqxOGGP6kSHZS5wpyE08YY4Rs1rAWHicP3ymN_Apz&debug=true&deviceName=M5&firstChannel=ANDROID&format=json&globalLatitude=31.235&globalLongitude=121.322911&lvsessionid=&lvtukey=b0b9e03b8d850dd88460eeca93f0c69d&lvversion=8.2.30&method=api.com.groupbuy.getGroupbuyDayList&netWorkType=WIFI&osVersion=6.0&secondChannel=LVMM&stationName=%E4%B8%8A%E6%B5%B7&udid=862750030495722&version=1.0.0";

    Dio dio = new Dio();
    FormData formData = new FormData.from({
      "secondChannel": "LVMM",
    });
//    Response response = await dio.post(
//        'https://api3g2.lvmama.com/route/router/rest.do?method=api.com.route.common.product.getRouteDetails&productId=1550627&productDestId=0&version=2.0.0&clientTimestamp=1551690754570&BSFIT_DEVICEID=QW8WgSd2Gp8IxuCGJMcRO-pZIyfe9z5P3sQhdHyoZ9-REln_yxbHeND_rO9FKZqeRv_TccRNtzxfkjjCPqT_xhU4l4qiCPXS5WQni-UubHB1VQap_qp1SrtJJjCuA509PZgAddPw0QEhHxfsxCvHyf8x6vK481QK&udid=862750030495722&lvsessionid=86dc5cc0-5abb-4410-9950-8795504bc68e&iuf=1551690754570210760&globalLatitude=31.23498&globalLongitude=121.323037&lvtukey=4d3ce40224b6c323d5e921ec2ac6acd6&osVersion=6.0&lvversionCode=117&lvversion=8.2.30&firstChannel=ANDROID&deviceName=M5&formate=json', data:formData);
    print('post 1');
    Map<String, dynamic> map = Map();
    map.addAll({
      'BSFIT_DEVICEID':
          'k_tx2UlOtSqhy0ItMUXgdpsQNvpxnvyYqqeytqgYeT0a_dzvElWxZ7ZY4AottqLg68NJchINdIyq-UggFsVxP-mmJ2OUeyD4C5BjB5we3KE7MqCqRCWkxMmiTMeXbvLYuOCPzyvTnJ7iQ8oTsLDkiFC3mkDU2MX_',
      'debug': 'true',
      'deviceName': 'M5',
      'firstChannel': 'ANDROID',
      'format': 'json',
      'globalLatitude': '31.234846',
      'globalLongitude': '121.322962',
      'lvsessionid': '',
      'lvversion': '8.2.70',
      'netWorkType': 'WIFI',
      'osVersion': '6.0',
      'secondChannel': 'LVMM',
      'stationName': '上海市',
      'udid': '862750030495722'
    });
    Response response =
        await NetRequest().postHttp(Url.getUrl(VstOtherUrlVo.getGroupbuyRecommendNames), map);
    print('post 1 ${response.data}');

//    HttpClient _client = new HttpClient();
//    HttpClientRequest request = await _client.openUrl("POST",  Uri.parse(url).normalizePath());
//    HttpClientResponse responseStream = await request.close();
//    print('responseStream ${responseStream.contentLength}');
  }

  static String generateMd5String(String data) {
    var content = new Utf8Encoder().convert(data);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    log("MD5", hex.encode(digest.bytes));
    return hex.encode(digest.bytes);
  }
}
