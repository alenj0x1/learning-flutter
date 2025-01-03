void main() async {
  print('starting');

  // easy to understand
  try {
    final value = await httpGet('https://takataka.com');
    print(value);
  } catch (err) {
    print(err);
  } finally {
    print('end try catch');
  }

  // specified exceptions
  try {
    final value = await httpGet('https://takataka.com');
    print(value);
  } on Exception catch (err) {
    print('a exception: $err');
  } catch (err) {
    print('error: $err');
  } finally {
    print('end try catch');
  }

  print('ending');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 4));

  throw Exception('taka');
  //throw 'a ocurred error';
  // return 'hello world';
}
