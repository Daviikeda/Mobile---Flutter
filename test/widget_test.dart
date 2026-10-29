import 'package:flutter_test/flutter_test.dart';

import 'package:gunners_app/main.dart';

void main() {
  testWidgets('Home page shows main texts', (WidgetTester tester) async {
    await tester.pumpWidget(const GunnersApp());

    expect(find.text('GUNNERS'), findsOneWidget);
    expect(find.text('Bem-vindo, Gunner!'), findsOneWidget);
    expect(find.text('Próxima Partida'), findsOneWidget);
  });
}
