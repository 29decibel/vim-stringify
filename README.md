## vim-stringify
=============

Turn your raw template into concated string
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

---
Enjoy!
