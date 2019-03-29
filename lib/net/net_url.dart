

import 'package:flutter_app/net/net_url_vo.dart';
import 'package:flutter_app/net/vst_other_url_vo.dart';

class Url {

  NetUrlVo getGroupbuyDayList() {

    return VstOtherUrlVo.fromJson(VstOtherUrlVo.getGroupbuyDayList);
  }

  static NetUrlVo getUrl(Map map) {

    return VstOtherUrlVo.fromJson(map);
  }
}
