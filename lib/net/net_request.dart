import 'package:flutter_app/net/net_constant.dart';
import 'package:flutter_app/net/net_helper.dart';
import 'package:flutter_app/net/net_url_vo.dart';
import 'package:flutter_app/tools/dio/dio.dart';

class NetRequest {
  Dio dio = new Dio();

  Future<Response> getHttp(NetUrlVo vo, Map<String, dynamic> params) async {
    Map<String, dynamic> netParams = params;
    if (vo.method != null) {
      netParams.addAll({'method': vo.method});
    }
    if (vo.version != null) {
      netParams.addAll({'version': vo.version});
    }

    if(netParams != null) {
      String paramsString = NetHelper.convertParamToString(netParams);
      paramsString += NetConstant.kLvmmSIGN_KEY;
      print('post 2 : $paramsString');
      netParams.addAll({'lvtukey' : NetHelper.generateMd5String(paramsString)});
    }
    netParams = NetHelper.encodedParams(netParams);

    String realUrl = vo.url + NetHelper.convertParamToString(netParams);
    print('post 2 : $realUrl');
    return await dio.get(realUrl);
  }

  Future<Response> postHttp(NetUrlVo vo, Map<String, dynamic> params) async {
    Map<String, dynamic> netParams = params;
    if (vo.method != null) {
      netParams.addAll({'method': vo.method});
    }
    if (vo.version != null) {
      netParams.addAll({'version': vo.version});
    }

    if(netParams != null) {
      String paramsString = NetHelper.convertParamToString(netParams);
      paramsString += NetConstant.kLvmmSIGN_KEY;
      print('post 2 : $paramsString');
      netParams.addAll({'lvtukey' : NetHelper.generateMd5String(paramsString)});
    }
    netParams = NetHelper.encodedParams(netParams);

    String realUrl = vo.url + NetHelper.convertParamToString(netParams);
    print('post 2 : $realUrl');
    return await dio.post(realUrl);
  }
}
