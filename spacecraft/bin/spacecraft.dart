class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate);
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);

  @override
  void describe() {
    print('Orbiter: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }

    print('At: $altitude meters high');
  }
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate, int astronauts)
      : super(name, launchDate) {
    this.astronauts = astronauts;
  }
}

void main() {
  Spacecraft challenger = Spacecraft('Challenger', DateTime(1983, 2, 10));
  challenger.describe();

  Orbiter o1 = Orbiter('TR', DateTime(1970, 2, 10), 10000);
  o1.describe();

  PilotedCraft p1 = PilotedCraft('PR', DateTime(2000, 9, 19), 2);

  p1.describe();
  p1.describeCrew();
}
