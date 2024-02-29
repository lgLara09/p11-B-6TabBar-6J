import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("LibreriaLG Lizbeth Garcia"),
            bottom: TabBar(tabs: [
              Tab(
                text: "l1",
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: "pdf",
                icon: Icon(Icons.account_balance_outlined),
              ),
              Tab(
                text: "l3",
                icon: Icon(Icons.abc_sharp),
              ),
              Tab(
                text: "l4",
                icon: Icon(Icons.abc),
              ),
              Tab(
                text: "l5",
                icon: Icon(Icons.castle_sharp),
              ),
            ] //texto icono),
                ),
          ),
          body: TabBarView(
            children: const <Widget>[
              Center(
                child: Icon(Icons.auto_stories_outlined,
                    size: 350, color: Colors.brown),
              ),
              Center(
                child:
                    Icon(Icons.account_balance, size: 350, color: Colors.cyan),
              ),
              Center(
                child: Icon(Icons.add_card, size: 350, color: Colors.green),
              ),
              Center(
                child: Icon(Icons.account_circle,
                    size: 350, color: Colors.blueAccent),
              ),
              Center(
                child: Icon(Icons.add_alert_outlined,
                    size: 350, color: Colors.pink),
              ),
            ],
          ),
        ));
  } //widgets
}
