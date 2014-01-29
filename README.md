![screenshots](https://raw.github.com/29decibel/vim-stringify/master/vim-stringify.gif)
## About
__vim-stringify__ is a small plugin help turning your raw template into concated string.

Here is your raw template :
```html
<div class="post">
  <h1>By {{fullName author}}</h1>
  <div class="body">{{body}}</div>

  <h1>Comments</h1>

  {{#each comments}}
  <h2>By {{fullName author}}</h2>
  <div class="body">{{body}}</div>
  {{/each}}
</div>
```

```:call Strigify() ``` will turn it into this:

```javascript
'<div class="post">' +
  '<h1>By {{fullName author}}</h1>' +
  '<div class="body">{{body}}</div>' +

  '<h1>Comments</h1>' +

  '{{#each comments}}' +
  '<h2>By {{fullName author}}</h2>' +
  '<div class="body">{{body}}</div>' +
  '{{/each}}' +
'</div>'

```

## Installation
Install using [vundle](https://github.com/gmarik/vundle)
```viml
Bundle '29decibel/vim-stringify'
```

Key mapping
```viml
map <leader>g :call Stringify()<CR>
```
---
Enjoy!
