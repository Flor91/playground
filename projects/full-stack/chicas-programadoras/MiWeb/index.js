var variable = true;
var edad = prompt("Ingresa tu edad");
var mensaje
var dias = ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

if(edad >= 18){
  mensaje = "Bienvenido a mi sitio señor adulto";
} else if (edad < 13) {
  mensaje = "Bienvenido a mi sitio - con precaución";
} else {
  mensaje = "Bienvenido a mi sitio amigo!";
}
alert(mensaje);

// for(var i=0; i<6; i++){
//   alert(dias[i]);
// }
