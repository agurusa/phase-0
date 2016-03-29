Release 2

![schema image]
(imgs/one_to_one_schema.png)

This is a one to one relationship because it is possible to have a lot of information about a book (title, publishing date, etc.), but the author of a book wasn't always recorded. The author's name could therefore be NULL.

![schema image]
(imgs/many_to_many_schema.png)
Many to many schema

Reflection:

What is a one-to-one database?

A one-to-one database is a relationship where something can only have one of another thing. For example, a book can only have one title, and that title can only belong to one book (assuming that multiple books can't have the same title).

When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You use a one to one relationship when you have a value of Null for some of the items in the relationship. For example, a piece of art can only have one title, and that title can only belong to one piece of art. However, not all art has a title, so the value of some titles would be "Null."

What is a many-to-many database?

A many to many database exists when thing A has many of thing B, and thing B has many of thing A. For example, actors are in many movies, and movies have many actors.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).

You use a many-to-many database when you have a relationship between two things where many things from the first list apply to many things on the second list.

What is confusing about database schemas? What makes sense?

I'm a little confused about keys and how to properly model complex relationships.One to one relationships and many to many relationships actually make a little more sense to me theoretically than practically, but one to many relationships make more sense to me practically.