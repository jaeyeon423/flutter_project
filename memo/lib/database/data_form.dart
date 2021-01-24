class Memo {
  final int id;
  final String title;
  final String text;
  final String createTime;
  final String editTiem;

  Memo({this.id, this.title, this.text, this.createTime, this.editTiem});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'createTime': createTime,
      'editTiem': editTiem,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Memo{id: $id, title: $title, text: $text, createTime: $createTime, editTiem: $editTiem}';
  }
}
