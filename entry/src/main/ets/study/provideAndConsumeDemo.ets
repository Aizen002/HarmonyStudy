
@Entry
@Component
struct Level1Demo{
  @Provide count:number = 0

  build() {
    Column(){
      Level2Demo()
      Button('点击').onClick(() => {
        this.count ++;
      })
    }
  }
}

@Component
struct Level2Demo{
  build() {
    Column() {
      Level3Demo()
      Level3Demo()
    }
  }
}


@Component
struct Level3Demo{

  @Consume count:number

  build() {
    Text(this.count.toString())
  }
}