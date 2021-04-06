String formataFecha(String fechaEntrada){
  
  String parteFecha = fechaEntrada.split(" ")[0];
  String parteHora  = fechaEntrada.split(" ")[1];
  
  String ano = parteFecha.split("-")[0];
  String mes = parteFecha.split("-")[1];
  String dia = parteFecha.split("-")[2];
  
  String hora    = parteHora.split(":")[0];
  String minutos = parteHora.split(":")[1];
  
  return dia+"/"+mes+"/"+ano+" "+hora+":"+minutos;
}
