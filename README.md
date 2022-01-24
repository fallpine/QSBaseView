# QSBaseView
视图控件基类

使用方法：直接用Pod导入，pod 'QSBaseView'

在项目开发中，经常会自定义视图控件，一般都会重写系统的initWithFrame方法，但在swift中，重写init方法，都必须要重写
```
required init?(coder aDecoder: NSCoder) {
  fatalError("init(coder:) has not been implemented")
}
```
为了不每次都重写上述方法，对几个常用的控件写了基类，以后子自定义控件时，只需集成对应的基类，然后直接重写qs_setupSubViews和qs_binding方法即可，这个两个方法都会在initWithFrame方法中调用

```
protocol QSBaseViewProtocol {
    /// 设置界面
    func qs_setupSubViews()
    /// 用于数据绑定
    func qs_binding()
}
```
