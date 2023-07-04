class Exam{
  Exam(
  {
    this.name,
    this.image,
    this.multy=const []
}
      );
  String? name;
  String?image;
  List<Multiexam> ?multy;
}
class Multiexam{
  Multiexam(
      {
        this.corr,
        this.Quet,
        this.multi=const []
      }
      );
  String? Quet;
  String ?corr;
  List<String> ?multi;
}
