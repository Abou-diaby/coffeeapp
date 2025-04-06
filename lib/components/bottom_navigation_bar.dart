import "package:flutter/material.dart";

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  final int _selectedIndex = 0;

  // static const TextStyle optionStyle = TextStyle(
  //   fontSize: 30,
  //   fontWeight: FontWeight.bold,
  // );

  static const List<String> options = ["home", "signup", "signin", "welcome"];

  void _onItemTapped(int index) {
    Navigator.pushNamed(context, "/${options[index]}");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        _buildBottomNavigationBarItem(icon: Icons.dashboard_outlined, index: 0),
        _buildBottomNavigationBarItem(
          icon: Icons.favorite_border_outlined,
          index: 1,
        ),
        _buildBottomNavigationBarItem(
          icon: Icons.local_mall_outlined,
          index: 2,
        ),
        _buildBottomNavigationBarItem(icon: Icons.person_outlined, index: 3),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xff131A2E),
      onTap: _onItemTapped,
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required IconData icon,
    required int index,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Stack(
        alignment: Alignment.center,
        children: [
          if (_selectedIndex ==
              index) // Affiche le background uniquement pour l'élément actif
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: const Color(
                  0xffA97C37,
                ), // Couleur de fond pour l'élément actif
                shape: BoxShape.circle,
              ),
            ),
          Icon(icon), // Icône de l'élément
        ],
      ),
      label: '',
    );
  }
}
