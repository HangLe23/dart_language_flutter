//cấu trúc của 1 class bình thường
//class
//void chỉ ra 1 giá trị không bao giờ được sử dụng
class ClassName{
	final String name;
	ClassName(requird this.name); //this đánh dấu thuộc tính hiện tại
}
void main(){
	ClassName(name: '');
}

//Abstract -- khi đánh dấu sẽ tự hiểu là class trừu tượng
/////thuộc tính, hàm định nghĩa không chính xác
abstract class Loai{
	dynamic name;
	dynamic gioitinh;
}
class Person extends Loai{
	@override
	late final dynamic name;
	name = gioitinh;
}

//else-if
////điều kiện trong dấu ngoặc đơn sau if phải có giá trị boolen
void hcn(){
  double chieudai, chieurong;
  if (chieudai != 0 && chieurong != 0){
    print ("True");
  } else if (chieudai != chieurong){
    print("object");
  }else {
    print("False");
  }
}
//import (ctrl + .) - export giúp hạn chế import quá nhiều lần

//Enum: liệt kê thành phần muốn khai báo
enum Bocuc{tittle, body}
class NewPage extend StatelessWidget{
	@override
	Widget build(BuildContext context){
			return ListView.bulder(itemBuilder: item,
														itemCount: Bocuc.values.length);
	}
	Widget item(BuildContext context, int index){
    //switch - case: thay đổi giá trị dựa trên các trường hợp
			switch (Bocuc.values[index]){
				case Bocuc.tittle:
					return Row(
								children:
										Text('');
										MaterialButton();
								);
				case Bocuc.body:
					return;
				default:  //được thực thi khi không có trường hợp nào khớp
					Container();		
			}
	}
}
//Signleton là 1 loại design pattern
//Stactic để đánh dấu phương thức là biến tĩnh và phải được gọi mới được thực thi
class Signleton{
	Signleton._();
	static Future<String> getData(){
		String data = '';
		return Future.value(data);
	}
	static Future<String> putData(){
		String data = '';
		return Future.value(data);
	}
}
//async - async* - future - await
////đánh dấu là hàm bất đồng bộ
///async - future - await thường đi chung với nhau
///async* return 1 stream
///sync* return 1 Iterable
Future<String> tich() async{
	int a = 5, b =10, c;
	c = await a*b;
	return c.toString();
}

//extends được sử dụng để tạo 1 lớp con, super được sử dụng khi lớp B kế thừa lớp A và muốn sử dụng 1 function từ lớp A
abstract class Loai{
	dynamic name;
	dynamic gioitinh;
	void gioitinh();
}
class Person extends Loai{
	@Override
	late final dynamic name;
	void kethua(){
		super.gioitinh();
	}
}

//in-for
void vonglap(){
	var list = [];
	
	for (var item in list){
		if(item > 0){
			break; // dung vong lap 
		}
	}
}

//try-catch
void chuvi() {
	try {
		//xu li call api
		//neu dung thi chay
		//neu sai thi loi
	} catch(e){
		e.toString();
		//hien thi loi
	}
}

//final - const
////biến đánh dấu final thì khi sử dụng ở 1 thời điểm khác có thể thay đổi giá trị theo thời gian đc set.
///biến đánh dấu const thì khi sử dụng ở 1 thời điểm khác không thể thay đổi giá trị

//mixin

//library: cung cấp các api được sử dụng






