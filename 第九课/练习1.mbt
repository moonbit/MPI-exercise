// 此练习参考Rust By Practice(https://practice.course.rs)

// 现对农场的动物做如下抽象：一个动物应当有名字，且会发出某种特定的叫声
trait Animal {
  make(String) -> Self // 命名一个动物
  get_name(Self) -> String // 获得动物名字
  get_noise(Self) -> String // 获得动物叫声
}

// 于是，我们可以说，一个动物会发出某种叫声
fn talk[T: Animal](animal : T) {
  let name = animal.get_name()
  let noise = animal.get_noise()
  println("\(name)发出了叫声：\(noise)")
}

// 现在牧场中养了一些羊
struct Sheep {
  // 请实现羊的数据结构
}
// 并且实现接口

fn init {
  println("===第九课练习1===")
  // let sheep = Sheep::make("小绵羊")
  // talk(sheep)
  println("===第九课练习1===")
}