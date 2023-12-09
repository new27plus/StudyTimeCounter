@Component
export struct HomePage {
  @State getupTime: string = '--:--'
  @State sleepTime: string = '--:--'
  private selectTime: Date = new Date()

  build() {
    Column() {

      Row() {
        Row() {
          Image('/images/icon/icon_clock.svg')
            .width('6%')
          Text(`${this.getupTime}`)
        }
        .onClick(() => {
          TimePickerDialog.show({
            selected: this.selectTime,
            useMilitaryTime: true,
            onAccept: (value: TimePickerResult) => {
              this.selectTime.setHours(value.hour, value.minute)
              this.getupTime = '' + value.hour + ':' + value.minute
            },
            onCancel: () => {
              console.info("TimePickerDialog:onCancel()")
            },
            onChange: (value: TimePickerResult) => {
              console.info("TimePickerDialog:onChange()" + JSON.stringify(value))
            }
          })
        })

        Row() {
          Image('/images/icon/icon_bad.svg')
            .width('6%')
          Text(`${this.sleepTime}`)
        }
        .onClick(() => {
          TimePickerDialog.show({
            selected: this.selectTime,
            useMilitaryTime: true,
            onAccept: (value: TimePickerResult) => {
              this.selectTime.setHours(value.hour, value.minute)
              this.sleepTime = '' + value.hour + ':' + value.minute
            },
            onCancel: () => {
              console.info("TimePickerDialog:onCancel()")
            },
            onChange: (value: TimePickerResult) => {
              console.info("TimePickerDialog:onChange()" + JSON.stringify(value))
            }
          })
        })

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)

      Stack() {
        Progress({
          value: 10,
          type: ProgressType.Ring })
          .width('70%')
          .style({
            strokeWidth: 20
          })

        Column() {
          Row() {
            Text('10')
              .fontSize(50)
            Text('%')
              .fontSize(20)
          }

          Text('今天共学习了2个小时')
            .textAlign(20)
        }
      }
      .margin({ top: '15%', bottom: '40%' })

      Stack() {
        Button('')
          .type(ButtonType.Circle)
          .width('20%')
          .backgroundColor(0x3F99F6)

        Image('/images/icon/icon_play.svg')
          .width('13%')
      }

    }
    .width('100%')
    .height('100%')
    .padding({ top: '20%' })
    .alignItems(HorizontalAlign.Center)
  }
}