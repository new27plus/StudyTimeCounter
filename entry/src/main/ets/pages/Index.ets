import { DataPage } from './DataPage'
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
          DataPage()
        }
        .tabBar('数据')

        TabContent() {
          SettingPage()
        }
        .tabBar('设置')
      }
      .scrollable(false)

    }
    .width('100%')
    .height('100%')
  }
}