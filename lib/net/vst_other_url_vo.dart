import 'package:flutter_app/net/net_url_vo.dart';

class VstOtherUrlVo extends NetUrlVo {
  static Map<String, dynamic> getGroupbuyDayList = {'method' : 'api.com.groupbuy.getGroupbuyDayList', 'version' : '1.0.0'};
  static Map<String, dynamic> getGroupbuyRecommendNames = {'method' : 'api.com.groupbuy.getGroupbuyRecommendNames', 'version' : '1.0.0'};

   VstOtherUrlVo.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
     url = ROOT_URL_VST + REQUEST_URL_VST_OTHER;
   }
}
