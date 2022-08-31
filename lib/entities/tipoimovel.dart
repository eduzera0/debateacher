class TipoImovelData {
  int? id;
  String? nome;

  TipoImovelData({
    this.id, this.nome
  });

  factory TipoImovelData.fromJson(Map<String, dynamic> json){
    return TipoImovelData(
      id: json['id'],
      nome: json['nome']
    );
  }
}