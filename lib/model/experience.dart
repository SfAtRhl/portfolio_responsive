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
    function: "Flutter Developper",
    startup: "CodingArt",
    location: "Tilila",
    periode: "20 November - 20 December",
    type: 'Intership',
  ),
  Exp(
      function: "Function",
      type: 'Intership',
      startup: "Choose Salon",
      location: "Tikiouin",
      periode: "20 November - 20 December"),
  Exp(
      function: "Function",
      type: 'Intership',
      startup: "Qualiprim",
      location: "Ait Amira",
      periode: "20 November - 20 December"),
];
var Education = [
  Exp(
    function: "Bachelor in Electronics & Communication",
    startup: "Higher School of Technology Agadir",
    // location: "location",
    periode: "20 November - 20 December",
    type: 'Full Time',
  ),
];
