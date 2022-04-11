class IntroModel {
  IntroModel({
    required this.introList,
  });

  List<IntroList> introList;

  factory IntroModel.fromJson(Map<String, dynamic> json) => IntroModel(
    introList:List<IntroList>.from(json["introList"].map((x) => IntroList.fromJson(x))),
  );

}

class IntroList {
  IntroList({
     this.img,
     this.text,
  });

  String? img;
  String? text;

  factory IntroList.fromJson(Map<String, dynamic> json) => IntroList(
    img: json["img"],
    text: json["text"],
  );
}
