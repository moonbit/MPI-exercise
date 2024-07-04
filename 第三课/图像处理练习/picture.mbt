/// 绘画函数
/// 参数：x：0到500, y：0到500。（0, 0)对应画面左下角，(500, 500)对应画面右上角
/// 输出：三原色（红、绿、蓝）对应的三元数组，每个颜色对应值从0到255
/// 参考：https://baike.baidu.com/item/rgb/342517
/// 同时可以使用getPixel: (Int, Int) -> Option[(Int, Int, Int)]，获得上传图片给定坐标的红绿蓝数值
fn draw(x : Int, y : Int) -> (Int, Int, Int) {
  // 1. 请在此处定义你的图像函数
  // 例：这个图像操作对每个像素周围9个像素取平均值。你看到了什么效果？参考：图像卷积
  fn get_or_else(
    v : (Int, Int, Int)?,
    default : (Int, Int, Int)
  ) -> (Int, Int, Int) {
    match v {
      None => default
      Some(val) => val
    }
  }

  let l1b1 = get_or_else(getPixel(x - 1, y - 1), (0, 0, 0))
  let l1 = get_or_else(getPixel(x - 1, y), (0, 0, 0))
  let l1u1 = get_or_else(getPixel(x - 1, y + 1), (0, 0, 0))
  let b1 = get_or_else(getPixel(x, y - 1), (0, 0, 0))
  let p = get_or_else(getPixel(x, y), (0, 0, 0))
  let u1 = get_or_else(getPixel(x, y + 1), (0, 0, 0))
  let r1b1 = get_or_else(getPixel(x + 1, y - 1), (0, 0, 0))
  let r1 = get_or_else(getPixel(x + 1, y), (0, 0, 0))
  let r1u1 = get_or_else(getPixel(x + 1, y + 1), (0, 0, 0))
  (
    (l1b1.0 + l1.0 + l1u1.0 + b1.0 + p.0 + u1.0 + r1b1.0 + r1.0 + r1u1.0) / 9,
    (l1b1.1 + l1.1 + l1u1.1 + b1.1 + p.1 + u1.1 + r1b1.1 + r1.1 + r1u1.1) / 9,
    (l1b1.2 + l1.2 + l1u1.2 + b1.2 + p.2 + u1.2 + r1b1.2 + r1.2 + r1u1.2) / 9,
  )
}
// 2. 完成定义后，运行moon build --target js进行编译。
// 3(1). 之后，Github或Gitpod用户请安装live-preview插件，右击同一文件夹内的index.html，选择Show Preview
// 3(2). Coding.net用户请打开终端，并运行 python3 -m http.server 8000 ，并在新窗口中复制原窗口链接，并加上/proxy/8000
// 3(3). 本地开发用户请打开终端，并运行 python3 -m http.server 8000 ，并访问http://localhost:8000/第三课/图像处理练习/
// 4. 如有其他疑问，请在论坛或群里反馈。也欢迎分享你的画作。

// -----请忽略以下内容-----

pub fn pixel(x : Int, y : Int, _width : Int, _height : Int) -> Int {
  let (r, g, b) = draw(x, y)
  r.land(255).lsl(16).lor(g.land(255).lsl(8).lor(b.land(255)))
}

extern "js" fn getPixel0(x : Int, y : Int) -> Int =
  #|(x, y) => globalThis.getPixel(x, y)

fn getPixel(x : Int, y : Int) -> (Int, Int, Int)? {
  let val = getPixel0(x, y)
  if val == -1 {
    None
  } else {
    let r = val.lsr(16)
    let g = val.lsr(8).land(255)
    let b = val.land(255)
    Some((r, g, b))
  }
}
