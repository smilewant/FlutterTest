class NativeVo {
  String pageName;
  String productId;
  String suppGoodsId;
  String branchType;

  String url;

  String urlName;

  NativeVo(
      {this.pageName,
        this.productId,
        this.suppGoodsId,
        this.branchType,
        this.url,
        this.urlName});

  factory NativeVo.fromJson(Map<String, dynamic> json) => NativeVo(
    pageName: json['pageName'] as String,
    productId: json['productId'] as String,
    suppGoodsId: json['suppGoodsId'] as String,
    branchType: json['branchType'] as String,
    url: json['url'] as String,
    urlName: json['urlName'] as String,
  );

  Map<String, dynamic> toJson() => {
    'pageName': pageName,
    'productId': productId,
    'suppGoodsId': suppGoodsId,
    'branchType': branchType,
    'url': url,
    'urlName': urlName,
  };
}
