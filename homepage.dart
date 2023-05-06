import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future _launchURL(String url) async {
      final Uri uri = Uri(scheme: "https", host: url);
      if(!await launchUrl(
          uri,
        mode: LaunchMode.externalNonBrowserApplication,
      )
      ){
        throw 'Can not launch';
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Link App Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage('https://scontent.fada1-11.fna.fbcdn.net/v/t39.30808-6/345186145_1276093912977541_2520837923934708917_n.jpg?stp=dst-jpg_p526x296&_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_ohc=ckG0wQcvK7AAX-stQAk&_nc_ht=scontent.fada1-11.fna&oh=00_AfBzWodRp1nDv-n8jrPNpd_AFVKN_Rz0TCcXrqa2o6FdHA&oe=645BFE26'),
          ),
          const Text('My Social Media Accounts', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: ()async {
                const linkedin = 'https://www.linkedin.com/in/janberkaltay/';
                launch(linkedin);
              },
                  icon: const Icon(FontAwesomeIcons.linkedin, size: 36, color: Colors.blueAccent,)),
              IconButton(onPressed: () async {
                const instagram = 'https://www.instagram.com/janberkaltay/';
                launch(instagram);
              },
                  icon: const Icon(FontAwesomeIcons.instagram, size: 36, color: Colors.pinkAccent,)),
              IconButton(onPressed: ()async {
                const twitter = 'https://twitter.com/janberkaltay';
                launch(twitter);
              }, icon: const Icon(FontAwesomeIcons.twitter, size: 36, color: Colors.blue,)),
              IconButton(onPressed: ()async {
                const gitHub = 'https://github.com/janberkaltay';
                launch(gitHub);
              }, icon: const Icon(FontAwesomeIcons.github, size: 36, color: Colors.black,)),
              IconButton(onPressed: ()async {
                const YouTube = 'https://www.youtube.com/channel/UCgkNm9R0i3NftVxcBv_Jqmg';
                launch(YouTube);
              }, icon: const Icon(FontAwesomeIcons.youtube, size: 36, color: Colors.red,)),
              IconButton(onPressed: ()async {
                const facebook = 'https://www.facebook.com/profile.php?id=100010383726045';
                launch(facebook);
              }, icon: const Icon(FontAwesomeIcons.facebook, size: 36, color: Colors.blueAccent,)),
            ],
          )
        ],
      ),
    );
  }
}
