import 'package:agriculture_equipment_rental_system/features/presentation/screens/bottom_navigation_bar_screens/profile_screen/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: CircleAvatar(
                radius: 63,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const CircleAvatar(
                  radius: 60,
                  foregroundImage: AssetImage('assets/anita.jpg'),
                ),
              ),
            ),
            Text(
              'Anita Thapa',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              "anita@gmail.com",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            buildListTitleItem(
              title: 'My Orders',
              leadingIcon: IconlyLight.bag,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OrdersScreen(),
                  ),
                );
              },
            ),
            buildListTitleItem(
              title: 'About Us',
              leadingIcon: IconlyLight.infoSquare,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('About Us'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTeamMember(
                            context,
                            name: 'Anita Thapa',
                            role: 'Flutter Developer',
                            imageUrl: 'assets/anita.jpg',
                            linkedinUrl:
                                'https://www.linkedin.com/in/anita-thapa-483130309/',
                            githubUrl: 'https://github.com/Anita-aaa',
                            instagramUrl: 'https://instagram.com/anita.zip',
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            buildListTitleItem(
              title: 'Logout',
              leadingIcon: IconlyLight.logout,
              onTap: () {
                // Add logout functionality here
              },
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget customAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Profile'),
      centerTitle: true,
    );
  }

  Widget buildListTitleItem({
    required String title,
    required IconData leadingIcon,
    required VoidCallback onTap,
  }) =>
      ListTile(
        leading: Icon(leadingIcon),
        title: Text(title),
        onTap: onTap,
      );

  Widget buildTeamMember(
    BuildContext context, {
    required String name,
    required String role,
    required String imageUrl,
    required String linkedinUrl,
    required String githubUrl,
    required String instagramUrl,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  role,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () => _launchURL(linkedinUrl),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: () => _launchURL(githubUrl),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.instagram),
              onPressed: () => _launchURL(instagramUrl),
            ),
          ],
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
