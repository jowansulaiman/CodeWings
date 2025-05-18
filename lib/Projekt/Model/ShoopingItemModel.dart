

class ShoppingItem{
  final String name;
  bool done;

  ShoppingItem({required this.name,required this.done});

  void setDone(value){
    done = value;
  }
  ShoppingItem copyWith({String? name, bool? done}){
    return ShoppingItem(name: name ?? this.name, done: done ?? this.done);
  }

  
}