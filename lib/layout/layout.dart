import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assinment/layout/provider.dart';

class Layout extends StatelessWidget {
  static const String routeName = "layout_screen";

  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      child: Selector<MainProvider, int>(
          selector: (p0, p1) => p1.index,
          builder: (context, index, child) {
            var provider = Provider.of<MainProvider>(context, listen: false);
            return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: FloatingActionButton(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white, width: 4)),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              bottomNavigationBar: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: BottomAppBar(
                  shape: CircularNotchedRectangle(),
                  notchMargin: 6,
                  color: Colors.white,
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    currentIndex: index,
                    onTap: provider.setIndex,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.list_sharp,
                            size: 35,
                          ),
                          label: "tasks"),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.settings,
                            size: 35,
                          ),
                          label: "settings")
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
