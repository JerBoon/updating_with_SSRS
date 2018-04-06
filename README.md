# updating_with_SSRS
A quick example of a report which updates table data within SSRS

This is an example repot of how SSRS can be used *relatively* easily to run DML statements - i.e. to update
the contents of a database.

Since datasets are (in their basic form) just SQL statements, there's absolutely no reason why that statement can't be,
say, and UPDATE or an INSERT statement.

(N.B. I've no experience with this, but I'm assuming it could even be, say, a DROP DATABASE statement - but I'm not
sure I can really seea use for that sort of thing!)

### Limitations

1. Your imagination!

2. OK, well it's not really that great a tool for collecting and validating lots of user content. And to be honest, I've
only ever really tried using SSRS for "clicky" operations. In other words, information which can be captured by a mouse click.

But it does seem pretty good for that. Here's a screenshot of what the demo in this repository looks like on screen:

![rep1](https://user-images.githubusercontent.com/23141865/38379099-98f96278-38f7-11e8-81eb-6d9a38fc488c.png)

![rep2](https://user-images.githubusercontent.com/23141865/38379098-98cd7028-38f7-11e8-8910-011167dcbdc5.png)

![rep3](https://user-images.githubusercontent.com/23141865/38379097-989a2146-38f7-11e8-920c-481581743462.png)
