@Preview
@Component
export struct SettingPage {
  @State darkModel: boolean = false

  build() {
    Column() {
      Column() {
        Row() {
          Row() {
            Image('/images/icon/icon_moon.svg')
              .height(25)
            Text('黑夜模式')
              .fontSize(17)
              .margin({ left: 10 })
          }


          Toggle({ type: ToggleType.Switch, isOn: this.darkModel })
            .selectedColor('#007DFF')
            .switchPointColor('#FFFFFF')
            .onChange((isOn: boolean) => {
              this.darkModel = isOn
              console.info('Component status:' + isOn)
            })
            .height(20)


        }
        .width('100%')
        .height(40)
        .padding({ left: 40, right: 40 })
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Row() {
            Image('/images/icon/icon_idea.svg')
              .height(25)
            Text('问题反馈')
              .fontSize(17)
              .margin({ left: 10 })
          }

          Image('/images/icon/icon_arrow.svg')
            .height(20)
            .fillColor(0xAAAAAA)
            .margin({right: 10})
        }
        .width('100%')
        .height(40)
        .padding({ left: 40, right: 40 })
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Row() {
            Image('/images/icon/icon_fresh.svg')
              .height(25)
            Text('清除数据')
              .fontSize(17)
              .margin({ left: 10 })
          }

          Text('20MB')
            .height(15)
            .fontColor(0xAAAAAA)
        }
        .width('100%')
        .height(40)
        .padding({ left: 40, right: 40 })
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('85%')
      .borderRadius(15)
      .shadow({ radius: 15, color: 0xD1D1D1, offsetY: 5 })
      .margin({ top: 123 })
      .padding({top: 20, bottom: 20})
    }
    .width('100%')
    .height('100%')
  }
}