class Note1 {
  int id;
  String nom;
  String ap;
  String am;
  String gen;
  String ocu;
  

  Note1({this.id, this.nom, this.ap, this.am,this.gen, this.ocu});

  Note1.empty();

  Map<String, dynamic> toMap() {
    return {'id': id, 'nom': nom, 'ap': ap, 'am': am,  'gen': gen, 'ocu': ocu  };
  }
}