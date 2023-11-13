/// 绘画函数
/// 参数：x：0到500, y：0到500。（0, 0)对应画面左下角，(500, 500)对应画面右上角
/// 输出：三原色（红、绿、蓝）对应的三元数组，每个颜色对应值从0到255
/// 参考：https://baike.baidu.com/item/rgb/342517
fn draw(x : Int, y : Int) -> (Int, Int, Int) {
  // 1. 请在此处定义你的绘画函数
  // 例：这是一轮明月。你能补全月光下的景色吗？
  if (x - 350) * (x - 350) + (y - 400) * (y - 400) < 100 { (255, 255, 255) } else { (0, 0, 0) } 
}
// 2. 完成定义后，请将此文件编译为WASM（可在左侧资源管理器右击此文件）（每次修改需重复此步骤）
// 3(1). 之后，Github或Gitpod用户请安装live-preview插件，右击同一文件夹内的index.html，选择Show Preview
// 3(2). Coding.net用户请打开终端，并运行 python3 -m http.server 8000 ，并在新窗口中复制原窗口链接，并加上/proxy/8000
// 4. 最后找到“第三课/绘画练习1”进行访问
// 5. 如有其他疑问，请在论坛或群里反馈。也欢迎分享你的画作。

// -----请忽略以下内容-----

pub fn pixel(x : Int, y : Int, _width : Int, _height : Int) -> Int {
  let (r, g, b) = draw(x, y)
  r.land(255).lsl(16).lor(g.land(255).lsl(8).lor(b.land(255)))
}

