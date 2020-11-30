class Todo {
  final int id;
  final String content;
  final String title;
  final String cont1;
  static const String TABLENAME = "todos";

  Todo({this.id, this.content, this.title, this.cont1});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
      'title': title,
      'cont1': cont1,
    };
  }
}
