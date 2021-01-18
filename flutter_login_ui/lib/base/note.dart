class Note {
  int id;
  String title;
  String content;
  String content1;
  String habi;
  String banos;
  String direc;
  String ciudad;
  String postal;
  String imagen;
  String extras;
  String maps; 

  Note({this.id, this.title, this.content, this.content1,this.habi, this.banos,
  this.direc, this.ciudad, this.postal, this.imagen, this.extras, this.maps});

  Note.empty();

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'content': content, 'content1': content1,  'habi': habi,
     'banos': banos,  'direc': direc,  'ciudad': ciudad, 'postal': postal, 'imagen': imagen, 'extras': extras, 'maps': maps, };
  }
}
