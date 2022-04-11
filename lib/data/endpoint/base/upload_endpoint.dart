import 'package:image_picker/image_picker.dart';

import 'endpoint.dart';

abstract class UploadEndpoint extends Endpoint {
  late List<XFile> xFiles;
  Future<dynamic> data();
}
