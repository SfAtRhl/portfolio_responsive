class Project {
  final String title;
  final String description;
  final String techStack;
  final String? livePreview;
  final String? viewGithub;
  final String imageAsset;

  Project({
    required this.title,
    required this.description,
    required this.techStack,
    this.livePreview,
    this.viewGithub,
    this.imageAsset = "assets/images/1.png",
  });
}

var Projects = [
  Project(
    title: "Ice Cream App",
    description:
        'IceScoop - Order ice cream, explore nearby spots, and enjoy popular flavors! 🍦',
    techStack: "Flutter",
    livePreview: "",
    viewGithub: "https://github.com/SfAtRhl/IceCreamApp",
    imageAsset: "assets/images/ui.png",
  ),
   Project(
    title: "Women Bag App",
    description:
        "Fashionista's Haven! Order stylish bags, explore popular picks & get personalized recommendations. 💼",
    techStack: "Flutter",
    livePreview: "",
    viewGithub: "https://github.com/SfAtRhl/womensbagapp",
    imageAsset: "assets/images/bag.png",
  ),
  Project(
    title: "Responsive Portfolio",
    description:
        'WPA Responsive Portfolio: Showcasing Projects, Contact Info, Tech Stack, About Me. Modern & Professional',
    techStack: "Flutter, Firebase",
    livePreview: "https://ait-rehail-soufyane.web.app/",
    viewGithub: "https://github.com/SfAtRhl/portfolio_responsive",
    imageAsset: "assets/images/ui3.png",
  ),Project(
    title: "Music App",
    description:
        'SongTrack: Discover & Control Music',
    techStack: "Flutter, Api",
    livePreview: "",
    viewGithub: "https://github.com/SfAtRhl/music_app",
    imageAsset: "assets/images/MusicApp.png",
  ),
];
