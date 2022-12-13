class ResepModel {
  String? title;
  String? thumb;
  String? key;
  String? times;
  String? serving;
  String? difficulty;

  ResepModel(
      {this.title,
      this.thumb,
      this.key,
      this.times,
      this.serving,
      this.difficulty});

  ResepModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumb = json['thumb'];
    key = json['key'];
    times = json['times'];
    serving = json['serving'];
    difficulty = json['difficulty'];
  }
}
