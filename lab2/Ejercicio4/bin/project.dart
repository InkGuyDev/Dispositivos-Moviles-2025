import 'package:project/project.dart' as project;

class Libro
{
  String autor;
  String titulo;
  double precio;
  
  Libro(this.autor, this.titulo, this.precio);
  
  void mostrarInfo()
  {
    print("Libro: $titulo");
    print("Autor: $autor");
    print("Precio: $precio");
  }
  
  void aplicarDescuento(double dctoPorciento)
  {
    double dcto = this.precio * dctoPorciento;
    
    this.precio -= dcto;
  }
  
  void cambiarAutor(String newNom)
  {
    this.autor = newNom;
  }
}

class Comic extends Libro
{
  String dibujante;
  
  Comic(String autor, String titulo, double precio, this.dibujante) : super(autor, titulo, precio);
  
  @override
  void mostrarInfo()
  {
    print("Libro: $titulo");
    print("Autor: $autor");
    print("Precio: $precio");
    print("Dibujante: $dibujante");
  }
}


void main() 
{
  Libro libro = Libro("Dante", "Divina Comedia", 10000);
  Comic comic = Comic("Stan lee", "Spiderman", 20000, "Alguien?");
  
  print("hola");
  libro.mostrarInfo();
  libro.aplicarDescuento(0.20);
  libro.mostrarInfo();
  libro.cambiarAutor("Kratos");
  libro.mostrarInfo();
  comic.mostrarInfo();
}