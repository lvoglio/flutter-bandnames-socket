class Band {

  String id;    // El id es generado por el Bakend
  String name;  // Nombre de la banda
  int votes;    // Votos de la banda

  Band({
    required this.id,
    required this.name,
    required this.votes
  }); //Constructor

  // La APP y el Bakend se comunican mediante Sockets.
  // El Bakend respondera con un MAPA.
  // "factory" es un constructor que recibe argumentos y retorna una nueva instancia de mi clase
  factory Band.fromMap(Map<String, dynamic> obj) 
    =>Band(
      id: obj['id'],
      name: obj['name'],
      votes: obj['votes']
    );



}