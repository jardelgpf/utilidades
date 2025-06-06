import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utilidades/src/models/about_model.dart';

class AboutController {
  AboutModel getAbout() {
    return AboutModel(
      photoUrl: 'https://avatars.githubusercontent.com/u/201950561?v=4',
      aboutMe: ['texto 1', 'texto 2', 'texto 3'],
      SociaLinks: [
        SocialLink(
          name: 'Github',
          icon: FontAwesomeIcons.github,
          color: Colors.black,
          url: 'https://github.com/jardelgpf',
        ),
   
      SocialLink(
        name: 'Linkedin',
        icon: FontAwesomeIcons.linkedin,
        color: Colors.indigo,
        url: 'https://linkedin.com/in/jardel.thom',
      ),
      ],
    );
  }
}
