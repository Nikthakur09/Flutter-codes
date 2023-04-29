//This is something how stream works
import 'dart:async';
class Order{
  String type;
  Order(this.type);
}
class Cake {}
void main() {
 final sc = StreamController(); 
  final baker = StreamTransformer.fromHandlers(
  handleData: (cakeType,sink){
    if(cakeType == 'Chocklate'){
      sink.add(Cake);
    }else{
      print('I cant bake this type');
    }
    }
  ); 
final order = Order('Chocklate'); 
sc.sink.add(order);
  
  sc.stream.map((order) => order.type).
    transform(baker).
    listen(
    onError: (err)=> print(err),
    (cake) =>  print(cake.runtimeType),
    
  );
}
