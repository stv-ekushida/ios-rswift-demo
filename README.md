# ios-rswift-demo
iOS R.swiftを利用したサンプル(Swift3.0)

## 1. PodFile

```
pod 'R.swift', '3.2.0'
```

## 2. .gitignore
```
# R.swift
R.generated.swift
```

## 3. runscript作成
1. <プロジェクト名>.xcodeprojを選択<br>
2. Build Phasesを選択<br>
3. 「+」選択し、New Run Script Phaseを選択<br>
4. 作成したRun Scriptを「R.swift」にリネームし、以下をコピペ
`"$PODS_ROOT/R.swift/rswift" "$SRCROOT"`
5. 作成したRun Script 「R.swift」をCheckPodsManifest.lockの下、CompileSourcesの上に移動する

## 4. R.generated.swift生成
1. Buildをして、R.generated.swiftを生成する
2. 生成されたR.generated.swiftをXcodeの適切なGroupに紐付ける

## 5. Usage

```
// storyboardを取得して、viewControllerのインスタンス生成
let secondVC = R.storyboard.secondViewController().instantiateInitialViewController()

// 画像を取得
R.image.next_64()

// tableViewにnibを登録
tableView.register(R.nib.secondListCell(), forCellReuseIdentifier: R.reuseIdentifier.secondListCell.identifier)

// tableViewCellを生成
let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.secondListCell, for: indexPath)
```

## 環境

|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2.1 |
| Cocoa Pods | 1.2.0 |
| iOS | 10.0〜 |

## OSS

|OSS name | Version| 
|---|---|
| R.swift | 3.2.0 |
