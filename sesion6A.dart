// Future
void main() {
  print("Inicio del programa");

  getHttpRequest("http://www.cesun.edu.mx").then((value) {
    print(value);
  });

  print("Fin del programa");
}

// API
Future getHttpRequest(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    return "Promesa asincrona finalizada";
  });
}
