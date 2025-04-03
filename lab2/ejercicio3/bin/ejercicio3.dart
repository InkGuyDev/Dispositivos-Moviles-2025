import 'package:ejercicio3/ejercicio3.dart' as ejercicio3;

void piramide(String brick, int h)
{
  String aux = ' ';
  
  for(int i = 0; i < h; i++)
  {
    aux += brick[0];
    
    print(aux);
  }
}

List<T> borrarRepetidos<T>(List<T> l)
{
  return l.toSet().toList();
}

void invertirTxt(String txt) 
{
  String newTxt = '';

  print("La palabra invertida es: ");

  for (int i = txt.length - 1; i >= 0; i--) 
  {
    newTxt += txt[i];
  }
  print(newTxt);
}

void esPalindromo(String txt)
{
  String newTxt = '';

  for (int i = txt.length - 1; i >= 0; i--) 
  {
    newTxt += txt[i];
  }
  
  if(newTxt == txt)
  {
    print(txt + " Es Palindromo");
  }
  else
  {
    print(txt + " No es Palindromo");
  }
}

void main() 
{
  var texto = "ana";
  
  var txt2 = "patty";

  piramide("*", 20);
  
  List<int> numList = [1, 1, 2, 3, 4, 5, 5];
  
  List<String> charList = ["a", "a", "b", "c", "b", "f", "g"];
  
  print(borrarRepetidos(numList));
  
  print(borrarRepetidos(charList));

  invertirTxt(txt2);

  esPalindromo(texto);
  
  esPalindromo(txt2);
}