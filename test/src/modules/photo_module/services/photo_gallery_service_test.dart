import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:omni_pro_app/src/core/paths/lib_paths.dart';
import 'package:omni_pro_app/src/modules/http_provider_module/lib_http.dart';
import 'package:omni_pro_app/src/modules/photo_module/lib_photo.dart';
import 'photo_gallery_service_test.mocks.dart';

String _urlDomain = '';

@GenerateMocks([http.Client])
void main() async {
  await DotEnvPathTest.initTest();
  _urlDomain = dotenv.env['prod']!;

  _integrationTest();
}

void _integrationTest() {
  test('Get photo list', () async {
    final client = MockClient();

    final File file =
        File('test/src/modules/photo_module/services/response_test.json');

    String responseRaw = await file.readAsString();
    List listDecode = json.decode(responseRaw);
    Map<String, dynamic> expectedData = {'items': listDecode};

    Uri uri = Uri.https(_urlDomain, ServicesPaths.epPhotos, {
      '_limit': '10',
      '_page': '1',
    });

    when(client.get(uri))
        .thenAnswer((_) async => http.Response(responseRaw, 200));

    Map<String, dynamic> testData = await PhotoGalleryService.getGallery(
      1,
      testClient: client,
      requestTest: HttpRequestModel(
        endPoint: ServicesPaths.epPhotos,
        queryParams: {
          '_limit': '10',
          '_page': '1',
        },
      ),
    );

    expect(testData, expectedData);
  });
}
