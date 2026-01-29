class DtoShowQuestions {
  int? idSesionDto;
  String tipoRespuestaDto;
  String? identifEncuestaDto;
  int codPreguntaDto;
  String preguntaDto;
  String? codSubPreguntaDto;
  String? subPreguntaDto;
  bool estadoDto;
  String? rangoDto;

  DtoShowQuestions({
    this.idSesionDto,
    required this.tipoRespuestaDto,
    this.identifEncuestaDto,
    required this.codPreguntaDto,
    required this.preguntaDto,
    this.codSubPreguntaDto,
    this.subPreguntaDto,
    required this.estadoDto,
    this.rangoDto
  });

  factory DtoShowQuestions.fromJson(Map<String, dynamic> json) {
    return DtoShowQuestions(
      idSesionDto: json['idSesion'],
      tipoRespuestaDto: json['tipoRespuesta'],
      identifEncuestaDto: json['grupoTema'],
      codPreguntaDto: json['codPregunta'],
      preguntaDto: json['pregunta'],
      codSubPreguntaDto: json['codSubPregunta'],
      subPreguntaDto: json['subPregunta'],
      estadoDto: json['estado'],
      rangoDto: json['rango']
    );
  }
}