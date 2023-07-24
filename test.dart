//Base class là lớp cơ sở mà các lớp khác kế thừa từ nó
//convariant dùng để ghi đè tham số

//abstract (Trừu tượng)
////không yêu cầu triển khai cụ thể, chứa các thuộc tính or phuong thức chung
////Các lớp cụ thể có thể kế thừa từ lớp này và triển khai các thuộc tính cụ thể

//super để tham chiếu tới lớp cha
abstract class HinhHoc{
  String name;
  double ChuVi(double canh );
  //factory 
  factory HinhHoc(String name){
    return name;
  }
  //void Name(String name);
}

//extend để tạo 1 lớp con
class HCN extends HinhHoc{
  double chieudai = 2, chieurong =3;
  @override
  static double ChuVi(){
    super.ChuVi();
    return (chieudai + chieurong)*2;
  }
}

//implement để triển khai giao diện
class HV implements HinhHoc{
  @override
  double ChuVi(double canh){
    return canh * 4;
  }
}
///as
HinhHoc hinhHoc;
HCN hcn;

if (hinhHoc is HCN){
  hcn = hinhHoc as HCN;
}

List <HCN> list= [2, 3]

////if-else
if(hcn.ChuVi() == 10){
  return true;
} else{
  return false;
}

////if-case
// if(list case [int x, int y]){
//   print(x, y);
// }

//enum (Liệt kê)

enum Color{red, blue, black}
final myFavorite = Color.black;

//For
for(int i = 0; i<5; i++){
  print(i);
}
//while and do-while
int i = 0;
while(i){
  if (i < 5) break;
  i++;
}

do{
  print(i);
  i++;
}while(i);

//assert là câu lệnh khẳng định
assert (hcn.ChuVi() == 10);

//Xuất các thành phần từ 1 file để có thể import ở file khác
// part dùng để chia nhỏ thư viện thành nhiều tệp nhỏ
//import được sử dụng trong 1 namespace từ 1 thư viện của 1 thư viện khác

// sync sử dụng để khẳng định hàm là đồng bộ 
// async sử dụng để khẳng định hàm là bất đồng bộ và sẽ trả về 1 Future
// await chờ để xuất kết quả của Future và hàm bất đồng bộ sẽ bị pause
Future<void> fetchData() {
  print("Delay 2s");
}

Function<void> result() async{
  String result = await fetchData();
  print("Success");
}

//try-catch dùng để bắt 1 exception
//cho phép nhìn thấy exception trong lúc xử lý bằng try-catch
//dynamic là kiểu dữ liệu đặc biệt cho phép biến có thể giữ bất kì giá trị và kiểu dữ liệu
void misbehave() {
  try {
    dynamic foo = true; //foo thuộc kiểu dữ liệu bool
    print(foo++); // Runtime error
  } on Exception catch (e) { //chỉ định loại execption
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}
//throw được sử dụng để ném 1 exception
throw FormatException('');
//late khai báo 1 biến không null mà được khởi tạo sau khi khai báo
//mixins kết hợp các tính năng của nhiều lớp vào 1 lớp, sử dụng từ khóa with trong khai báo mixins
//required đánh dấu tham số khai báo là bắt buộc

class Person{
  String name;
  int age;
  Person({required this.name, required this.age});
}

Person person = Person(name: name, age: age);

//sealed ngăn 1 class được triển khai hoặc mở rộng bên ngoài thư viện của nó
sealed class Viehical{}
class car extends Viehical{}
Viehical myVehical = Viehical(); //Error
Viehical myVehical = car();

//getter and setter cung cấp quyền đọc và ghi các thuộc tính của đối tượng
 class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

// yield, typedef ?