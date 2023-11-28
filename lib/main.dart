import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My App',
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Route'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: const Size(400, 50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Open 1. route'),
                ),
                onPressed: () {
                  // pushing SecondRoute
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: const Size(400, 50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Open 2. route'),
                ),
                onPressed: () {
                  // pushing SecondRoute
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: const Size(400, 50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Open 3. route'),
                ),
                onPressed: () {
                  // pushing SecondRoute
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Route"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            fixedSize: const Size(400, 50),
          ),
          onPressed: () {
// Removing FirstRoute
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            fixedSize: const Size(400, 50),
          ),
          onPressed: () {
// Removing SecondRoute
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Route"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            fixedSize: const Size(400, 50),
          ),
          onPressed: () {
// Removing ThirdRoute
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
