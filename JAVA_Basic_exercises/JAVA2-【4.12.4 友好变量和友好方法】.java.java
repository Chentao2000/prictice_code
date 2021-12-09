/***************************************************************************
友好变量和友好方法 ： 不用 private public protected 修饰符修饰的成员变量和方法 
称为  友好变量和友好方法
**************************************************************************/
class Tom{
    float weight;              // weight 是友好的float变量
    float f(float a,float b){ // 方法f是友好方法
        return a + b ;
    }
}

// 当在另一个类中用类TOM创建了一个对象后，如果这个类与TOM类在同一个包中
// 那么该对象能访问自己的友好变量和友好方法，在任何一个与TOM 同包的类中
// 也可以通过TOM类名访问TOM类的友好变量和类友好方法
class Jerry{
    void g(){
        Tom cat = new Tom();    
        cat.weight = 23f ;     // 合法
        float sum = cat.f(3,4); // 合法
    }
}


// 在一个源文件编写命名的类总是在同一包中，如果源文件使用import 语句引入了另一个包的类
// 则用该类创建了一个对象，那么该类这个对象将不能访问自己的友好变量和友好方法

