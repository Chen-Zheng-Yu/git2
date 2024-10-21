void main() {
    //介紹資料型態的宣告方式
    String catName="mimi";
    catName = "meowmeow";
    //catName = 10;    <錯誤

    var a = 1000;
    a = 10;
    //a = "abc";    <錯誤

    var b = "hello";
    b = "hihi";
    //b = 10;   <錯誤

    //3種檢查資料型態的方法
    print(catName is String);
    print(catName == "meowmeow");
    print(catName.runtimeType);

    //object 宣告
    Object x;
    x = 'Hello';
    print(x.runtimeType);

    x = 10;
    print(x.runtimeType);

    //dynamic 宣告
dynamic y;
y = 1000;
print(y.runtimeType);

y = 'hihi';
print(y.runtimeType);


//dynamic 跟object不同的地方
//x: object
int i = x as int;
//y: dynamic=> 自動轉換成目標變數的資料型態
String s = y;

//Object無法顯示Null
dynamic d1 = null;
//Object o1 = null;   <錯誤error

//object 類別只擁有object的屬性
y.length;
x = "hello";
//x.length;   //錯誤error

//int
var i2 = 12;
//i2 = 1.2; //int沒辦法轉成double

    //num可表示int & double
num n = 12;
n = 1.2;



//字串中如何讀取變數資料
String s2 = "aiot";
print("這個班級是 $s2");
print("這個班級是 ${s2}");
print("aiot總共有幾個字母: ${s2.length}");  //4
print("aiot總共有幾個字母: $s2.length");  //aiot.length


//字串的加法運算: 字串的串接
String s3 = "hello";
String s4 = ", world!";
print(s3+s4);

//單行字串的表示 ' '，" "
String s5='hi';
String s6="hello";
//多行字串的表示'''...'''，"""..."""
String s7='''hello
        world''';
/*"""物聯網
        ai應用"""*/

//原始定義的字串: r
// \n: 換行符號 (Enter)
// \: 跳脫符號 Escape
String s8= 'hello \n world!';
String s9= r'hello \n world!';
String s10= 'hello1 \\n world!';
print(s8);
print(s9);
print(s10);

/*描述一個物件
    1.靜態:特徵(外型，樣式，內容物...)
    2.動態:功能(動作，服務...)

    EX手機:
    1.6"大小，3個鏡頭，A18晶片，4種顏色...
    2.打電話，聽音樂，傳訊息，AI運算...

手機.size => 6"
手機.call(0912345678);....
.:點符,操作物件的特徵/功能

現實世界 vs 電腦世界
特徵 => 屬性 attribute
功能 => 方法 method，後面接()
關於物件的定義:產品型錄 => 類別 class(藍圖)
真實可操作的物體:實體 => 物件 object

*/

"hello" . length; //length:屬性，字串物件有幾個字元 => 5


//split()用於分割字串，下列範例為 宣告l1"This is a class named AIOT"字串，用split'空白'做切割
var l1 = "This is a class named AIOT".split(' ');
print(l1);
List l2 = "This is a class named AIOT".split('s');
print(l2);

String s11 = "This is a class named AIOT".substring(3);
print(s11); //s is a class named AIOT
String s12 = "This is a class named AIOT".substring(3,8);
print(s12); //s is 

//常見資料格式的轉換 string <-> 數值 num, int, double
//str -> int
int one = int.parse('1');
print(one);
print(one.runtimeType);
//str -> double
double d2 = double.parse('1.2');
print(d2);
print(d2.runtimeType);

//int -> str
String s13 = 10.toString();
print(s13);

//double -> str
String pi = 3.14159326.toString();
print(pi);
//取幾位數  小數點進位
String pi_2 = 3.14159326.toStringAsFixed(3);
print(pi_2);

//boolean: true/false
bool b1 = false;
print(b1);
print("b1:$b1");
bool b2 = true;
print(b2);
print("b2:$b2");


//運算: 除0
var div0 =0/0;
print(div0);   //NaN

var div1 = 1/0;
print(div1);   //Infinity

//var 若宣告沒有給定初始值 => dynamic
var var_null;
print(var_null);

var_null = "hello";
print(var_null.runtimeType);
var_null = 123;
print(var_null.runtimeType);






}
