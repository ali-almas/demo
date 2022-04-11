import 'selectable.dart';

abstract class Pageable implements Selectable {
  final String title;
  final String imagePath;

  Pageable({required this.title, required this.imagePath});
}
