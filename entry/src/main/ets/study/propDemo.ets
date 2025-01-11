

@Entry
@Component
struct ParentDemo{

  @State message:string = '你好'

  build() {
    Column(){
      Text(this.message)
      Button('parent点击').onClick(() => {
        this.message = '你也好'
      })
      ChildDemo({childMsg:this.message,changeMsg:(msg:string) => {
        this.message = msg
      }})

      ChildDemo02({childMsg:this.message})

    }
  }
}

@Component
struct ChildDemo{

  @Prop childMsg:string = '哈哈'

  changeMsg = (msg:string):void => {}

  build() {
    Column(){
      Text(this.childMsg)
      Button('prop点击').onClick(() => {
        this.changeMsg('你在干什么')
      })
    }
  }
}

@Component
struct ChildDemo02{

  @Link childMsg:string

  build() {
    Column(){
      Text(this.childMsg)
      Button('link点击').onClick(() => {
        this.childMsg = '哈哈哈 2222'
      })

    }
  }
}