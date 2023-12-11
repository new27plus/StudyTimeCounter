@Preview
@Component
export struct DataPage {
  private swiperController: SwiperController = new SwiperController()
  private data: number[] = [0, 1, 2]


  build() {
    Column() {
      List({ space: 20 }) {
        // 顶部当天数据
        ListItem() {

          Swiper(this.swiperController) {
            ForEach(this.data, (item: number) => {
              if (item == 0) {
                Column() {
                  Text('今日学习记录')
                    .fontSize(14)

                  Row() {
                    Text('7')
                      .fontSize(50)

                    Text('次')
                      .fontSize(25)
                  }

                  Text('单次最长时间为2小时')
                    .fontSize(16)
                }

              }
              if (item == 1) {
                Column() {
                  Text('今天的作息')
                    .fontSize(14)

                  Row({ space: 20 }) {
                    Text('07:30')
                      .fontSize(40)

                    Text('07:30')
                      .fontSize(40)
                  }

                  Text('到现在已经过了8个小时')
                    .fontSize(16)
                }
              }
              if (item == 2) {
                Column() {
                  Text('今天的总学习时长')
                    .fontSize(14)

                  Text('07:30')
                    .fontSize(50)

                  Text('相比上次多学了2小时')
                    .fontSize(16)
                }
              }

            })
          }
          .width('100%')
          .height(150)
          .padding({top: 20})
          .borderRadius(15)
          .shadow({ radius: 15, color: 0xD1D1D1, offsetY: 5, offsetX: 5 })
          .cachedCount(3)
          .index(0)
          .autoPlay(false)
          .interval(4000)
          .indicator(true)
          .indicatorStyle({bottom: 1})
          .loop(false)
          .duration(1000)
          .itemSpace(0)
          .curve(Curve.Linear)
        }


        // ListItem() {
        //   Column() {
        //
        //   }
        //   .width('100%')
        //   .height(600)
        //   .backgroundColor(Color.Blue)
        // }

      }
      .width('100%')
      .height('100%')
      .padding({ top: 40, right: 20, left: 20 })
      .edgeEffect(EdgeEffect.Spring)

    }
    .width('100%')
    .height('100%')

  }
}
