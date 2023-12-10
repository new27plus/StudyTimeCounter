import { HomePage } from './HomePage'
import { SettingPage } from './SettingPage'
@Entry
@Component
struct Index {
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          HomePage()
        }
        .tabBar('首页')

        TabContent() {
          Text('推荐的内容').fontSize(30)
        }
        .tabBar('数据')

        TabContent() {
          SettingPage()
        }
        .tabBar('设置')
      }

    }
    .width('100%')
    .height('100%')
  }
}