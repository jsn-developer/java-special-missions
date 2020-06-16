# コンテンツを操作するインターフェースを実装する
以下の処理を定義したインターフェースを実装した、クラスを作成します。

## インターフェース

```
public interface Player{

    /** 再生 */
    public void play();

    /** 一時停止 */
    public void pause();

    /** 停止 */
    public void stop();
}
```

## 作成するクラス
以下のクラスにインターフェースを実装しよう。
### Blu-rayプレイヤークラス

```
pulic class BlueRay{
    /**コンテンツ */
    String content;

    /**コンストラクタ */
    public BlueRay(String content){
        this.content = content
    }
}

```
#### メソッド
動画というコンテンツを指定して作成したインスタンスのplay()を実行した場合、以下の文字列を出力する。
```
動画を再生します。
```
動画というコンテンツを指定して作成したインスタンスのpause()を実行した場合、以下の文字列を出力する。
```
動画を一時停止します。
```
動画というコンテンツを指定して作成したインスタンスのstop()を実行した場合、以下の文字列を出力する。
```
動画の再生を停止します。
```
### Walkmanクラス

```
pulic class Walkman{
    /** コンテンツ */
    String content;

    /**コンストラクタ */
    public Walkman(String content){
        this.content = content
    }
}

```
#### メソッド
音楽というコンテンツを指定して作成したインスタンスのplay()を実行した場合、以下の文字列を出力する。
```
音楽を再生します。
```
音楽というコンテンツを指定して作成したインスタンスのpause()を実行した場合、以下の文字列を出力する。
```
音楽を一時停止します。
```
音楽というコンテンツを指定して作成したインスタンスのstop()を実行した場合、以下の文字列を出力する。
```
音楽の再生を停止します。
```
## 確認用クラス
以下のコードを実行して、作成したクラスにインターフェースが実装できているか確認してください。
```
Blueray blueray = new Blueray("動画");
blueray.play();
blueray.pause();
blueray.stop();

Walkman walkman = new Walkman("音楽");
walkman.play();
walkman.pause();
walkman.stop();

```