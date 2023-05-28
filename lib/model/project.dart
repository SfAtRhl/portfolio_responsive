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
    this.imageAsset="assets/images/1.png",
  });
}

var Projects = [
  // Project(
  //   title: "title",
  //   description: 'description',
  //   techStack: "techStack",
  //   livePreview: "",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ),
  // Project(
  //   title: "Title",
  //   description: 'description',
  //   techStack: "techStack",
  //   livePreview: "kk",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ),
  // Project(
  //   title: "Title",
  //   description: 'description',
  //   techStack: "techStack",
  //   livePreview: "",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ),
  //  Project(
  //   title: "Title",
  //   description: 'description',
  //   techStack: "techStack",
  //   livePreview: "",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ), Project(
  //   title: "Title",
  //   description: 'description',
  //   techStack: "techStack",
  //   livePreview: "",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ), Project(
  //   title: "Title",
  //   description: 'description',
  //   techStack: "techStack,html,css,js",
  //   livePreview: "",
  //   viewGithub: "ll",
  //   imageAsset:"assets/images/2.png",
  // ),
];
