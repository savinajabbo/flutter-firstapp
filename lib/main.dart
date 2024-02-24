import 'package:flutter/material.dart';
import 'package:myapp/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my app"),
        leading: const Icon(Icons.access_time),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            const Text("Sub-heading", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            const Text("Paragraph"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.network('https://i.pinimg.com/564x/5d/63/ac/5d63ac796dbb7852d40fc70afc818dbb.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
