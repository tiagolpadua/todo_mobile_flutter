import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:todomobile/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const SplashPage());
    r.child('/home', child: (context) => const HomePage());
    r.child('/detail/:id',
        child: (_) => DetailPage(id: int.parse(r.args.params['id'])));
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/home'),
          child: const Text('Navigate to Home Page'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/detail/88'),
              child: const Text('Navigate to Detail Page - 88'),
            ),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/detail/99'),
              child: const Text('Navigate to Detail Page - 99'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: Center(
        child: Column(
          children: [
            Text('Detalhando: $id'),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/home'),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
