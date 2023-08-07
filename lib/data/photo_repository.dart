import 'package:test_project/domain/photo_model/photo_model.dart';

import '../domain/photo_interface.dart';

class PhotoRepository implements PhotoInterface {
  @override
  Future<PhotoModel> getPhoto() {
    return Future.value(
      PhotoModel(
        id: 2,
        url: 'https://via.placeholder.com/600/9881f3',
        title: 'reprehenderit est deserunt velit ipsam',
        albumId: 1,
        thumbnailUrl: 'https://via.placeholder.com/150/771796',
      ),
    );
  }
}
