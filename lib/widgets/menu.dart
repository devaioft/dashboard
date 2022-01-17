import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  'Travel UI',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            MenuCardList(
              title: "Dasboard",
              icon: Icons.dashboard,
              inActiveColor: true,
              onprees: () {},
            ),
            MenuCardList(
              title: "My Tickets",
              icon: Icons.card_giftcard,
              onprees: () {},
            ),
            MenuCardList(
              title: "Favourite",
              icon: Icons.favorite_outline,
              onprees: () {},
            ),
            MenuCardList(
              title: "Message",
              icon: Icons.email_outlined,
              onprees: () {},
            ),
            MenuCardList(
              title: "Transaction",
              icon: Icons.account_balance_wallet_outlined,
              onprees: () {},
            ),
            MenuCardList(
              title: "Setting",
              icon: Icons.settings,
              onprees: () {},
            )
          ],
        ),
      ),
    );
  }
}

class MenuCardList extends StatelessWidget {
  const MenuCardList({
    Key? key,
    this.title,
    this.icon,
    this.onprees,
    this.inActiveColor = false,
  }) : super(key: key);

  final String? title;
  final IconData? icon;
  final void Function()? onprees;
  final bool? inActiveColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onprees,
      child: Container(
        color: inActiveColor! ? Colors.green : Colors.transparent,
        child: ListTile(
          leading:
              Icon(icon!, color: inActiveColor! ? Colors.white : Colors.grey),
          horizontalTitleGap: 1 / 2,
          title: Text(
            title!,
            style: TextStyle(
              color: inActiveColor! ? Colors.white : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
