class Data {
  String? nombre;
  bool? gustoFluttrer;
  int? califflutter;
  String? movilDev;
  bool web;
  bool emulador;
  bool smartphone;

  Data({
    required String nomb,
    required bool gusto,
    required int calif,
    required String movil,
    required this.web,
    required this.emulador,
    required this.smartphone,
  }) {
    nombre = nomb;
    gustoFluttrer = gusto;
    califflutter = calif;
    movilDev = movil;
  }
}
