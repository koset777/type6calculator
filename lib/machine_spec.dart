

// todo Map型リストで台のスペックを保管する
class MachineSpec {
  final id;
  final name;
  final maxGame;
  final expectedValue;
  const MachineSpec(this.id, this.name, this.maxGame, this.expectedValue);

  List machineList = {
    MachineSpec(
      '001', 'God', '900', '400'),
  };
}

class MachineList {
  List machineList = [];
  List machineList2 = [
    'God',
    'コードギアス',
    '絆',
    'パチスロ渡辺'
  ];
}

List getMachineList(){
  List machineList = [];
  machineList.add(MachineSpec(
      '001', 'God', '900', '400'));
  machineList.add(MachineSpec(
      '002', 'コードギアス', '900', '400'));
  machineList.add(MachineSpec(
      '003', '絆', '900', '400'));
  machineList.add(MachineSpec(
      '004', 'パチスロ渡辺', '900', '400'));
  machineList.add(MachineSpec(
      '005', 'CR入山〜甘デジ〜', '900', '400'));

  return machineList;
}
