class FormularioRegistro {
  // int? idForm;
  String? idUsuarios;
  String? fecha;
  String? hora;
  int? idEstacion;
  String? idLinea;

  FormularioRegistro({
    // this.idForm,
    this.idUsuarios,
    this.fecha,
    this.hora,
    this.idEstacion,
    this.idLinea
  });

  factory FormularioRegistro.fromJson(Map<String, dynamic> json) {
    return FormularioRegistro(
      // idForm: json['identifacadorForm'],
      idUsuarios: json['idUsuarios'],
      fecha: json['fecha'],
      hora: json['hora'],
      idEstacion: json['idEstacion'],
      idLinea: json['idLinea'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (idUsuarios != null) {data['idUsuarios'] = idUsuarios;}
    data['fecha'] = fecha;
    data['hora'] = hora;
    data['idEstacion'] = idEstacion;
    data['idLinea'] = idLinea;
    return data;
  }
}

class Linea {
  String idLinea;
  String tipo;
  String nombreLinea;
  Estacion? estacion_;

  Linea({
    required this.idLinea,
    required this.tipo,
    required this.nombreLinea,
    this.estacion_
  });

  factory Linea.fromJson(Map<String, dynamic> json) {
    return Linea(
      idLinea: json['idLinea'],
      tipo: json['tipoLinea'],
      nombreLinea: json['nombreLinea'],
      estacion_: json['estacion_'] != null
        ? Estacion.fromJson(json['estacion_']) : null
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idLinea'] = idLinea;
    data['tipoLinea'] = tipo;
    data['nombreLinea'] = nombreLinea;
    return data;
  }
}

class Estacion {
  int idEstacion;
  String idLinea;
  String nombreEstacion;
  int? orden;

  Estacion({
    required this.idEstacion,
    required this.idLinea,
    required this.nombreEstacion,
    this.orden
  });

  factory Estacion.fromJson(Map<String, dynamic> json) {
    return Estacion(
      idEstacion: json['idEstacion'],
      idLinea: json['idLinea'],
      nombreEstacion: json['nombreEstacion'],
      orden: json['orden'] != null ? json['orden'] as int : 0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idEstacion'] = idEstacion;
    data['idLinea'] = idLinea;
    data['nombreEstacion'] = nombreEstacion;
    data['orden'] = orden;
    return data;
  }
}