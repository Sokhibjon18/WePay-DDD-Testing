class MemberToMember {
  MemberToMember(this.giverMemberName, this.getterMemberName, this.cost);

  final String giverMemberName;
  final String getterMemberName;
  final int cost;

  @override
  String toString() {
    return 'giver: $giverMemberName, getter: $getterMemberName, amount: $cost';
  }
}
