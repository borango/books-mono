# Figures: Line of Gravity

```js
dot`digraph{

A [shape=point]
 
G [label=Gravity  shape=none]

I [label=illusion shape=none]

{node [style=invis label=""]
 invis0 [label=illusion]
}

A -> G [color=grey style=dashed]
A -> I [color=grey style=dotted]

{ edge [style=invis] 
invis0 -> I
invis0 -> G
}
 
}`
```

... and with some padding around
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

alternative design with some padding around
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


design with typography integrated
```js
dot`digraph{

 A [shape=point]
 
 G [label=Gravity shape=none fontsize=20]

 A -> G [color=grey style=dashed label=" invisible\n line of..."  ]
 
}`
```

- - -

*(all the above works ONLY in Observable Framework, not in Leanpub - TODO: extract to SVG)*
