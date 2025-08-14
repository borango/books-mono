# Figures: Line of Gravity

```js
dot`digraph{
ranksep=.5

{node [style=invis shape=none label=o]
 invis4
 invis0 invis1
 invis2 invis3
}

bottom [label="o" shape=none height=.3 fixedsize=true]


invis0 -> invis1 [style=invis]
invis1 -> bottom [style=dashed arrowhead=vee ]
bottom -> invis2 [style=invis]
{rank=same invis2 invis3 invis4}

}`
```

```js
dot`digraph{

ranksep=.6

{node [style=invis shape=none label=o]
 invis4
 invis0 
 invis2 invis3
}

invis0 -> A [style=invis]

A [shape=point]
 
G [label="" shape=none]

A -> G [color=grey style=dashed]
 
G -> invis2 [style=invis]
{rank=same invis2 invis3 invis4}

}`
```

```js
dot`digraph{

 A [shape=point]
 
 G [label=Gravity shape=none fontsize=20]

 A -> G [color=grey style=dashed label=" invisible\n line of..."  ]
 
}`
```


*(works ONLY in Observable Framework, not in Leanpub - TODO: extract to SVG)*
