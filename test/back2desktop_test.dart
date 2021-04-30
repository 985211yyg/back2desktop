import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:back2desktop/back2desktop.dart';

void main() {
  const MethodChannel channel = MethodChannel('back2desktop');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Back2desktop.platformVersion, '42');
  });
}
