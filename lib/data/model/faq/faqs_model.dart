class FaqsModel {
  FaqsModel({
    required this.faqList,
  });

  List<Faq> faqList;

  factory FaqsModel.fromJson(Map<String, dynamic> json) => FaqsModel(
        faqList: List<Faq>.from(json["faqList"].map((x) => Faq.fromJson(x))),
      );
}

class Faq {
  Faq({
    required this.question,
    required this.answer,
  });

  String question;
  String answer;

  factory Faq.fromJson(Map<String, dynamic> json) => Faq(
        question: json["question"],
        answer: json["answer"],
      );
}
