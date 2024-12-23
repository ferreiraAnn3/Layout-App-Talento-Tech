import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

//Cabeçalho
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: ''),
    );
  }
}

//Classe que garante mudança durante a execução
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

//Classe que define colunas e linhas
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Layout superior
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromRGBO(84, 190, 98, 1),
              child: const Text('Talento Tech'),
            ),
          ),

          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Coluna 1
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: const Text(''),
                  ),
                ),

                // Coluna 2
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 3
                    0.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 131, 202, 221),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Text('UEPG'),
                  ),
                ),

                // Coluna 3
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
          ),

          // Layout inferior
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 13, 78, 15),
              child: const Text(''),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
