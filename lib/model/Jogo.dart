class Jogo {
  List<dynamic> images;
  String title;
  String link;

  Jogo(this.images, this.title, this.link);

  Jogo.fromJson(Map json):
      images = json['images'],
      title = json['title'],
      link = json ['link'];
}