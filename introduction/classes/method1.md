# 円の計算をするクラスを作ろう

以下の条件を満たすクラスを作成してください。

## クラス名

Circle

## フィールド

| 論理名 | 物理名 | 型 | Getter | Setter | 備考 | 
|:-:|:-:|:-:|:-:|:-:|:-:|
|直径| diameter | double | ○ | ○ | - |

## コンストラクタ

### フィールドを初期化するコンストラクタ

#### 引数

| 論理名 | 物理名 | 型 | 備考 | 
|:-:|:-:|:-:|:-:|:-:|
|直径| diameter | double | - |

#### 処理内容

引数をそれぞれ対応する同名フィールドに代入する。

## メソッド

### 面積を求めるメソッド

|メソッド名 | 戻り値の型 | アクセス修飾子 | 静的 | 
|:-:|:-:|:-:|:-:|
| getArea | double | public | × | 

#### 引数

なし

#### 処理内容

フィールドの直径から面積を求めて返却する。  
面積は、半径 × 半径 × 3.14 で計算すること。

### 円周を求めるメソッド

|メソッド名 | 戻り値の型 | アクセス修飾子 | 静的 | 
|:-:|:-:|:-:|:-:|
| getCircumference | double | public | × | 

#### 引数

なし

#### 処理内容

フィールドの直径から演習の長さを求めて返却する。  
円周の長さは、直径 × 3.14で計算すること。

## テスト用のクラス

以下のコードを実行して確認しましょう。

```
Circle circle = new Circle(4.0);

System.out.println(circle.getArea()); // 12.56
System.out.println(circle.getCircumference()); // 12.56

Circle circle2 = new Circle(5.2);

System.out.println(circle.getArea()); // 21.2264
System.out.println(circle.getCircumference()); // 16.328
```