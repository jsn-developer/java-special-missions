# リストの最小値と最大値を求めるメソッドを作る

以下の条件を満たすメソッドを作成してください。
メソッドは、mainメソッドをもつクラスと同じファイルに作成してください。

### 最小値を求めるメソッド

|メソッド名 | 戻り値の型 | アクセス修飾子 | 静的 | 
|:-:|:-:|:-:|:-:|
| getMin | int | public | ○ | 

#### 引数

| 論理名 | 物理名 | 型 | 備考 | 
|:-:|:-:|:-:|:-:|
|調査対象リスト | list | List<Integer> | - |

#### 処理内容

引数の調査対象リストの中の数値のうち、一番小さい値を返却する。

### 最大値を求めるメソッド

|メソッド名 | 戻り値の型 | アクセス修飾子 | 静的 | 
|:-:|:-:|:-:|:-:|
| getMax | int | public | ○ | 

#### 引数

| 論理名 | 物理名 | 型 | 備考 | 
|:-:|:-:|:-:|:-:|
|調査対象リスト | list | List<Integer> | - |

#### 処理内容

引数の調査対象リストの中の数値のうち、一番大きい値を返却する。


## 確認用のソースコード

以下のmainメソッドを作成して確認をしてください。

```
public static void main(String[] args) {
    List<Integer> list = new ArrayList<>();

    list.add(3);
    list.add(4);
    list.add(6);
    list.add(2);
    list.add(13);
    list.add(8);

    System.out.println(getMin(list)); // 2
    System.out.println(getMax(list)); // 13
}
```
