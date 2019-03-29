class ImageBean {
  String fromUrl;

  ///图片地址
  String imageUrl;

  ImageBean({this.fromUrl, this.imageUrl});
  factory ImageBean.fromJson(Map<String, dynamic> json) => ImageBean(
      fromUrl: json['fromUrl'] as String, imageUrl: json['imageUrl'] as String);

  Map<String, dynamic> toJson() =>
      {
        'fromUrl': fromUrl,
        'imageUrl': imageUrl,
      };
}