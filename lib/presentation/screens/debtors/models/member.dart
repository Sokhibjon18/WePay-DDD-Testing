class Member {
  Member(this.name, this.expense);

  static late int average;
  late int difference;
  late final bool debtor;
  final String name;
  final int expense;

  static calculateAverage(List<Member> members) {
    var sum = 0;
    for (var member in members) {
      sum += member.expense;
    }
    average = sum ~/ members.length;
  }

  calculateDifference() {
    final difference = average - expense;
    if (difference > 0) {
      debtor = true;
      this.difference = difference;
    } else {
      debtor = false;
      this.difference = difference * -1;
    }
  }

  @override
  String toString() {
    return 'name: $name, expense: $expense, average: $average, debtor: $debtor, difference: $difference';
  }
}
