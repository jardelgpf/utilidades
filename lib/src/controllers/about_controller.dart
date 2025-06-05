import 'package:flutter/material.dart';
import 'package:utilidades/src/models/about_model.dart';

class AboutController {
  AboutModel getAbout() {
    return AboutModel(
      photoUrl: 'https://avatars.githubusercontent.com/u/201950561?v=4',
      aboutMe: ['texto 1', 'texto 2', 'texto 3'],
      SociaLinks: [
        SocialLink(
          name: 'Github',
          icon: Icons.add,
          url: 'https://github.com/jardelgpf',
        ),
   
      SocialLink(
        name: 'Linkedin',
        icon: Icons.add,
        url: 'https://linkedin.com/in/jardel.thom',
      ),
      ],
    );
  }
}
