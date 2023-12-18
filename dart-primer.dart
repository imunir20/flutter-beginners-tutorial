

void main() {
  User u1 = User('Coop', 31);
  print(u1.username);
  print(u1.age);
  u1.login();

  SudoUser admin = SudoUser('Shee', 21);
  print(admin.username);
  admin.publish();
  admin.login();
  
}

class User {

  late String username;
  late int age;

  User(String username, int age) {
    this.username = username;
    this.age = age;
  }

  void login() {
    print('${username} logged in!');
  }

}

class SudoUser extends User {

  SudoUser(String username, int age) : super(username, age);

  void publish() {
    print('Published Update!');
  }
}