// Déclaration d'une fonction principale obligatoire
void main() {
  // Déclaration de variables
  String nom = "Alice";
  String ville = "Bruxelles";
  int age = 28;
  double valeur = 99.9;

  // Interpolation de chaînes
  print("Nom: $nom, Ville: $ville, Age: $age, Valeur: $valeur");
  print("Bonjour, $nom !");

  // Condition simple
  if (age >= 18) {
    print("Majeur");
  } else {
    print("Mineur");
  }

  // Boucle for
  for (int i = 0; i < 3; i++) {
    print("Itération $i");
  }

  // Boucle while
  int compteur = 0;
  while (compteur < 2) {
    print("Age actuel: $age");
    compteur++;
  }

  // Listes
  List<String> fruits = ["pomme", "banane", "kiwi"];
  print(fruits);

  // Dictionnaire / Map
  Map<String, int> scores = {"Alice": 10, "Bob": 8};
  print(scores);

  // Ensembles / Set
  Set<int> nombres = {1, 2, 3};
  print(nombres);

  // Fonctions
  direBonjour(nom, age);

  // Classes et objets
  Produit prod = Produit("Chaise", 49.99);
  print("Produit: ${prod.nom}, Prix: ${prod.prix}");

  // Héritage
  Chien chien = Chien();
  chien.parler();

  Oiseau oiseau = Oiseau();
  oiseau.parler();

  // Null safety
  String? nomClient = null;
  nomClient ??= "Paul"; // assignation si null
  print(nomClient);

  // Async / Future
  chargerDonnees();
}

// Fonction simple
void direBonjour(String nom, int age) {
  print("$nom a $age ans");
}

// Définition d'une classe
class Produit {
  String nom;
  double prix;

  Produit(this.nom, this.prix);
}

// Héritage
abstract class Animal {
  void parler();
}

class Chien extends Animal {
  @override
  void parler() {
    print("Wouf !");
  }
}

class Oiseau extends Animal {
  @override
  void parler() {
    print("Je vole !");
  }
}

// Exemple de Future (asynchrone)
Future<void> chargerDonnees() async {
  await Future.delayed(Duration(seconds: 1));
  print("Données chargées");
}
