void main() async {
  print('starting');

  // easy to understand
  try {
    final value = await httpGet('https://takataka.com');
    print(value);
  } catch (err) {
    print(err);
  }

  print('ending');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 4));

  throw 'a ocurred error';
  // return 'hello world';
}
