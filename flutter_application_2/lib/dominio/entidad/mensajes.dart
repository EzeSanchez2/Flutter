enum FromWho{ mine,hers }

class Mensajes {
  final String text;
  final String? imgUrl;
  final FromWho fromWho;

  Mensajes({
  required this.text, 
  this.imgUrl, 
  required this.fromWho
  });
}