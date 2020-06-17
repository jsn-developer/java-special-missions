# 継承したクラスでオーバーライドを実装する
「図形を扱うクラスで継承を使おう」で作成したTriangleクラスで
Shapeクラスのメソッドをオーバーライドします。

## 親クラス

```Java
public class Shape{
    
    /** 図形名*/
    String name;
    
    /** コンストラクタ */
    public Shape(String name){
        this.name = name;
    }
    
    
    /** 図形名を表示するメソッド*/
    public void introduction(){
        System.out.println("これは"+name+"です");
    }
}
```

## 実装内容
Shapeクラスのintroductionをオーバーライドして以下の処理内容を満たす
メソッドをTriangleクラスに実装してください。

### 処理内容
図形名と、面積を表示する。

|メソッド名 | 戻り値の型 | アクセス修飾子 | 静的 | 
|:-:|:-:|:-:|:-:|
| introduction | void | public | × |

#### 引数

なし

## 確認
実装したクラスについて、以下の条件で動作確認をしてください。

### 条件

- ("三角形",12,2)を引数としたインスタンス変数を作成する。


### 確認内容
introductionを実行すると、以下の内容が表示される。
```
これは、三角形です
面積は、12平方センチメートルです
```
