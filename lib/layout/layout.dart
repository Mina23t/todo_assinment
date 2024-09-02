import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_assinment/core/providers/provider.dart';

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
              floatingActionButton: FloatingActionButton(backgroundColor:Color(0xff5D9CEC) ,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 4)),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              bottomNavigationBar: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: BottomAppBar(
                  shape: const CircularNotchedRectangle(),
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
                            Icons.settings_outlined,
                            size: 35,
                          ),
                          label: "settings")
                    ],
                  ),
                ),
              ),
              body: provider.Screens[index],
            );
          }),
    );
  }
}
