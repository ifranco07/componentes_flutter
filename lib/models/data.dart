class Data{
  String? nombre;
  bool? gustoFlutter;
  int? califFlutter;
  String? movilDev;
  bool? web;
  bool? emulator;
  bool? smartphone;

  Data({required String nomb, 
        required bool gusto, 
        required int calif,
        required String movil,
        required bool nav,
        required bool emul,
        required bool phone}) {
    nombre= nomb;
    gustoFlutter= gusto;
    califFlutter= calif;
    movilDev= movil;
    web= nav;
    emulator= emul;
    smartphone= phone;
  }
}
