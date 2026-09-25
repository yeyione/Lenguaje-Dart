void main() {
  print("Sesion 06");

  Circulo fig = Circulo(0.0, 0.0, "VERDE", 5);
  print(fig.render());

  List<Figura> figuras = <Figura>[
    Cuadrado(10, 0, "Azul", 10),
    Circulo(20, 0, "Rojo", 7),
  ];

  for (var figura in figuras) {
    print("El area es: ${figura.getArea()}");
    print(figura.render());
  }
}

// Clase abstracta
abstract class Figura {
  double x;
  double y;
  String color;

  Figura(this.x, this.y, this.color); // Constructor de clase

  // Metodo abstraco
  double getArea();

  //Metodo concreto
  String render() {
    return "Dibujando la figura de color: $color, en el punto P($x, $y)";
  }
}

class Circulo extends Figura {
  double radio;

  Circulo(double x, double y, String color, this.radio) : super(x, y, color);

  @override
  double getArea() {
    return 3.1416 * radio * radio;
  }
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(double x, double y, String color, this.lado) : super(x, y, color);

  @override
  double getArea() {
    return lado * lado;
  }

  @override
  String render() {
    return "Dibujando un Cuadrado de color: $color, en punto P( $x, $y ), con medida de lado: $lado";
  }
}
