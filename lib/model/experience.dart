class Exp {
  final String function;
  final String type;

  final String startup;

  final String? location;
  final String periode;

  Exp(
      {required this.function,
      required this.type,
      required this.startup,
      this.location = "",
      required this.periode});
}

var Experiences = [
  Exp(
    function: "Flutter/Laravel Developper",
    startup: "Freelance",
    // location: "Tilila",
    periode: "Mar 2023 - Present",
    type: 'Full Time',
  ),
  Exp(
    function: "Flutter/Laravel Developper",
    startup: "Metama",
    location: "Tilila, Agadir",
    periode: "Mar 2023 - May 2023",
    type: 'Part-Time',
  ),
  Exp(
    function: "Flutter Developper",
    startup: "Tweadup",
    location: "Dakhla, Agadir",
    periode: "Jan 2023 - Feb 2023",
    type: 'Intership',
  ),
  Exp(
    function: "Flutter Developper",
    startup: "CodingArt",
    location: "Tilila, Agadir",
    periode: "Sep 2022 - Dec 2022",
    type: 'Intership',
  ),
];
var Education = [
  Exp(
    function: "Associate's degree of Computer science",
    startup: "Higher School of Technology-Agadir",
    periode: "2020 - 2022",
    type: 'Full Time',
  ),
];
