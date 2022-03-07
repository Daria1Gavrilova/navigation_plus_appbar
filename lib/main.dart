import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationPlusAppbar());
}

class NavigationPlusAppbar extends StatefulWidget {
const NavigationPlusAppbar({Key? key}) : super(key: key);

  @override
  _NavigationPlusAppbar createState() => _NavigationPlusAppbar();
}
class _NavigationPlusAppbar extends State<NavigationPlusAppbar> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {

    final ButtonStyle buttonStyle =
    TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xFF606060),
            title: const Text("AppBar -->"),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert_sharp)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.announcement_sharp)),
              TextButton(
                onPressed: () {},
                child: const Text("Кнопочка"),
                style: buttonStyle,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.white12,
                    ),
                    child: Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height : 60,
                            child: Image(image: AssetImage('assets/flowers.png'),),
                          ),
                          SizedBox(height: 30),
                          const Text("Место под логотип с подписью"),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.ac_unit_outlined),
                    title: const Text("Пункт первый"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Переход 1')));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.wb_sunny),
                    title: const Text("Пункт второй"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Переход 2')));
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.anchor),
                    title: const Text("Пункт третий"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text('Переход 3')));
                    },
                  ),
          ListTile(
              leading: const Icon(Icons.wb_cloudy),
              title: const Text("Пункт четвертый"),
              onTap: () {
                _messengerKey.currentState!.showSnackBar(
                    const SnackBar(content: Text('Переход 4')));
              },
          ),]
            ),
          ),
          body: const Center(child: Text("Какой-то текст посередине",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
        )
    ));
  }
}