###### tags: `人工知能プログラミング`

# 末尾再帰
> 末尾再帰（まつびさいき）とは、再帰的な関数やプロシージャにおいて、自身の再帰呼び出しが、その計算における最後のステップになっているような再帰のパターンのことである。再帰にかかわらず一般に、そのような最後の呼び出しを末尾呼び出し （en:Tail call）という。呼び出しではなく、戻り先を保存しないジャンプに最適化できるという特徴がある（#末尾呼出し最適化）。
> 

```go
func factorial(n int) int {
	if n == 1 {
		return 1
	} else {
		return n*factorial(n-1)
	}
}
```

`factorial(5)`は次のコードとほぼ等価。

```go
func factorial5() int {
	return 5*facotiral4()
}
func factorial4() int {
	return 4*facotiral3()
}
func factorial3() int {
	return 3*facotiral2()
}
func factorial2() int {
	return 2*facotiral1()
}
func factorial1() int {
	return 1*facotiral0()
}
func factorial0() int {
	return 1
}
```

- 再帰が深くなると、「自分の分身がたくさん登場して、**そいつらの返事を待たないといけない**」ために、ダメ👎
	- 「そいつらの返事を待たないといけない」と言うのは`factorial()`の定義のコードの5行目のところを言っている。

- 「分身の返事を待たなくていいようにするにはどうすればいいか？」
	- 「自分、ここまでやったんでよろしく」と**途中結果を次のやつに伝えてやればいい**
		- そうすれば自分は消えることができる。

```go
func factorial(n int, result int) int {
	if n == 1 {
		return result
	} else {
		return factorial(n-1, (n-1)*result)
	}
}
```

- これが末尾再帰。
