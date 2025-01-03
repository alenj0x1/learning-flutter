void main() {
  print('starting');

  // difficul to understand
  httpGet('https://takataka.com').then((value) {
    print(value);
  }).catchError((err) {
    print('error: $err');
  });

  print('ending');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 4), () {
    throw Exception('a ocurred error');

    // return 'hello world';
  });
}
