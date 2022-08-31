import 'package:biblioteca_flutter/entities/tipoimovel.dart';

class ImovelData {
  int? id;
  String? titulo;
  String? descricao;
  DateTime? dataCriacao;
  String? valor;
  String? status;
  List<dynamic>? tipoImovel;

  ImovelData({
    this.id, this.titulo, this.descricao, this.dataCriacao, this.valor, this.status, this.tipoImovel
  });

  factory ImovelData.fromJson(Map<String, dynamic> json){
    return ImovelData(
        id: json['id'],
        titulo: json['titulo'],
        descricao: json['descricao'],
        dataCriacao: json['data_criacao'],
        valor: json['valor'],
        status: json['status'],
        tipoImovel: json['tipoImovel'].map((tipoimovel) => TipoImovelData.fromJson(tipoimovel)).toList());
  }

}