void main(List<String> args) {
  print('Life');
  // print('never flat');
  delayedPrint(1, 'never flat');
  print('is');
}

Future delayedPrint(int seconds, String message) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((_) => print(message));
}
