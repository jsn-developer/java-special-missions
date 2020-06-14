# 動物の抽象クラスを扱う

以下の抽象クラスを用いて、動物を表すクラスを作成します。

## 抽象クラス

```java
public abstract class Animal {

    /** 名前 */
    protected String name;

    /** 種類 */
    protected String type;

    /**
     * コンストラクタ
     * @param name 動物の名前
     * @param type 動物の種類
     */
    protected Animal(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public abstract void cry();
}
```

## 作成するクラス

### 犬のクラス

ポチという名前を指定して生成したインスタンスのcry()を実行した場合、  
以下のような文字を表示する。

```
犬のポチは、「ワン！」となきます。
```

### 猫のクラス

タマという名前を指定して生成したインスタンスのcry()を実行した場合、
以下のような文字を表示する。

```
猫のタマは、「ニャーオ」となきます。
```

### カピバラのクラス

ホワイトさんという名前を指定した生成したインスタンスのcry()を実行した場合、
以下のような文字を表示する。

```
カピバラのホワイトさんは、「キュルルルルルル」となきます。
```

## 確認用のコード

以下のコードを実行し、それぞれの動物のクラスを作成できていることを確認してください。

```
List<Animal> animals = new ArrayList<>();

animals.add(Dog("ポチ"));
animals.add(Cat("タマ"));
animals.add(Kapibara("ホワイトさん"));

for(Animal a: animals) {
    a.cry();
}
```