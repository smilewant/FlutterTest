class NetUrlVo {
  int STATUS_ROOT = 1;
  int STATUS_CMS = 2;
  int STATUS_VST = 3;
  int STATUS_TRIP = 4;
  int STATUS_ABSOLUTELY = 5;
  int STATUS_CUSTOMER_SERVICE = 6; //客服机器人 huweiqiang
  int STATUS_VST_TICKET = 7; // 门票拆分
  int STATUS_VST_ROUTE = 8; // yantinggeng 线路拆分
  int STATUS_VST_USER = 9; // huweiqiang 会员拆分
  final int STATUS_VST_OTHER = 10; // 794 hukuan 特卖拆分
  int STATUS_CMS_BASIC = 11; // 797 added by Jinlin
  int STATUS_VST_PAY = 12; //7.10.4 支付拆分
  int STATUS_VST_SEARCH = 13; //7.10.7 门票搜索拆分

  final String ROOT_URL_VST = "https://api3g2.lvmama.com/";
  final String REQUEST_URL_VST_OTHER = "other/router/rest.do?";


  int status;
  String url;
  String version;
  String method;



  //json to vo
   NetUrlVo.fromJson(Map<String, dynamic> json) {
     url = json['url'];
     version = json['version'];
     method = json['method'];
   }

  //vo to json
  Map<String, dynamic> toJson() =>
      {
        'url': url,
        'method': method,
        'version': version,
      };

}
