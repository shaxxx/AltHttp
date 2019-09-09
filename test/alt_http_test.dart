import 'dart:convert';

import 'package:test/test.dart';
import 'package:alt_http/alt_http.dart';

void main() {
  test('Send headers as case sensitive', () async {
    var request = await AltHttpClient().getUrl(
        Uri.parse('http://www.google.com')); // produces a request object
    request.headers.set('Authorization', 'Xbla');
    var response = await request.close(); // sends the request
    await response.transform(Utf8Decoder()).listen(print); // transforms
    // there is no way to actually test this since default HttpClient keeps
    // headers in a case sensitive maners, just silently sends them as lowercase
    // making this test pass even with default HttpClient.
    // You'll need some kind of network request monitor (ie. Fiddler or Wireshark)
    // to confirm this actually works.
    expect(request.headers.value('Authorization'), 'Xbla');
  });
}
