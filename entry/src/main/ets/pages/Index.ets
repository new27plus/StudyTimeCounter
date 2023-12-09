@Entry
@Component
struct Index {
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          Text('首页的内容').fontSize(30)
        }
        .tabBar('首页')

        TabContent() {
          Text('推荐的内容').fontSize(30)
        }
        .tabBar('数据')

        TabContent() {
          Text('发现的内容').fontSize(30)
        }
        .tabBar('设置')
      }

    }
    .width('100%')
    .height('100%')
  }
}