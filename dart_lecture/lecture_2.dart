// Dart OOP

void main() {
  print('this is lecture_2');

  Idol blackpink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );
  Idol blackpink2 = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );
  print(blackpink.name);
  print(blackpink.members);
  blackpink.sayHello();
  blackpink.introduce();

  print('-----------');
  // if blackpink object is a const instance, it returns true.
  print(blackpink == blackpink2);

  Idol bts = Idol.fromList([
    ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
    'BTS',
  ]);
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  // getter
  print(blackpink.firstMember);
  print(bts.firstMember);
}

// Idol class
// member variables : name, members
// method : sayHello, introduce
class Idol {
  // for immutable variables, use final
  final String name;
  final List<String> members;

  // constructor
  // you can make instance const type.
  const Idol(this.name, this.members);

  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print("안녕하세요 ${this.name}입니다.");
  }

  void introduce() {
    print("저희 멤버는 ${this.members}가 있습니다.");
  }

  //getter
  String get firstMember {
    return this.members[0];
  }

  //setter
}
