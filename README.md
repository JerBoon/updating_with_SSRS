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

For this example, the SQL file is a script which sets up a little table and inserts a few rows of data - in this case it's
the 3 rows of data you see in the screenshot, recording a question and a respose. the SQL script leaves the responses empty.

Please note: it's a very simplified example, and obviously isn't configured for multiple user entry, addding questionnaires of your
own etc - it's just an example. The database design you'll use in reality falls in to the *use your imagination* category
I mentioned earlier...

### Building the report

There's not much to it really.

**Step 1**: First add the Data Source.

You know your way around this already, but there is one litle extra trick you need for this example to work.
In the Data Sources diagogue box, tick the box.

![tickbox](https://user-images.githubusercontent.com/23141865/38446803-eee0f872-39f1-11e8-833e-0439da43337d.png)

**Step 2**: Update statements

Then comes another little leap of imagination. You're going to add a couple of UPDATE statement datasets, but you have to write update statements that are only going to update the database when you want it to.

Create a dataset and insert a query:

![query1](https://user-images.githubusercontent.com/23141865/38446850-3c0f00b2-39f2-11e8-859f-0fcc4f7ed68a.png)

For the report you work you have to add some variable parameters here. You parameterise not just a the values you want to update (you want to update the answer to @Q with respnse QA)
but also a parameter which tells the query to do its job.

This parameter is called @Action

If you write the query as written above then click save, the Query input dialogue will prompt you for some parameter values in order to parse and verify the query. Just enter some randm values (DON'T enter the value "Update" for @Action) - the query will be accpeted and saved, but because you didn't enter "Update" it didn't actually update anyway...

Makes sense?

The second dataset we'll call "delete", and will do its job when the value of @Action is "Delete" - but it's actually another UPDATE
statement in SQL terms - it's just updating all your answers back to NULL.

![query2](https://user-images.githubusercontent.com/23141865/38447160-af9fe1bc-39f3-11e8-8c6b-1d1ea59b89f8.png)



![rep2](https://user-images.githubusercontent.com/23141865/38379098-98cd7028-38f7-11e8-8910-011167dcbdc5.png)

![rep3](https://user-images.githubusercontent.com/23141865/38379097-989a2146-38f7-11e8-920c-481581743462.png)
