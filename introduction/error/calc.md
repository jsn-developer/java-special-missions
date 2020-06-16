# 0除算による例外に対応しよう
以下のような四則演算を行うクラスを用意しました。
```
public class Calc {
    
    /** 加算 */
    public int plus(int a,int b){
            return a + b;
    }
    /** 減産 */
    public int minus(int a,int b){
        return a - b;
    }
    /** 乗算 */
    public int multiply(int a,int b){
        return a * b;
    }
    /** 除算 */
    public int divide(int a,int b){
            return a / b;
    }
}
```
## 例外の確認
Calcクラスのdivide()は、0で割る計算を行うと、例外が発生してしまいます。
まずは、例外の発生を以下のコードで確認してみましょう。
```
Calc calc = new Calc();
calc.divide(100,0);
System.out.println("戻り値は"+result+"です");
```
プログラムが以下のようなエラーを出力します。
```
Exception in thread "main" java.lang.ArithmeticException: / by zero
```

### 例外に対応する
divide()にtry-catch文を実装して、0除算が発生したら以下のメッセージを出力するように修正します。また、エラー発生時の戻り値は0を返すようにします。
```
0除算が発生しました
```

### 確認用のソースコード
以下のコードを実行して、期待値が出力されることを確認してください。

```
Calc calc = new Calc();
int result = calc.divide(100,0);
System.out.println("戻り値は"+result+"です");
```
#### 期待値
```
0除算が発生しました
戻り値は0です
```

