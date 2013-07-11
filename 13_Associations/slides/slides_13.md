![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

#BEWD - Associations

###Bobby T.


---


##Agenda

*	Finding Associations
*	Coding Associations

---

# ONWARD!!!!

![](http://cdn.lamborghini.com/content/models/aventador_lp700-4/av_lp700-4_ov1_1920x1080.jpg)

---

## Resources (incase you didn't know)

* Slides have resources at the end of them.
* These slides have a ton of resources at the end to help you outside of class.
* Today is somewhat Abstract so outside practice is a __*MUST*__

---


##Rewsly
###New  Feature

We want to track which user posted a specific story.
````Story.find_by_user_id()````

The `Story` model does not have a `user_id` attribute..... yet.

---


##Associations

Users need to be __associated__ to a Story.
Stories need to be __associated__ to a User.

---


##Associations
###Definition

Model associations are how models interact with each other.

Adding associations will help us know which user posted which story.

With associations its best to step away from the code and understand conceptually what is happening.

---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Twitter Associations


---


##Associations
###Rails Active Record Associations

```
belongs_to
has_many
has_many :through
has_one
has_one :through
has_and_belongs_to_many
```

We will cover the first three.

---

##Associations

User has_many Tweets

Tweet `belongs_to` User

![](../../assets/rails/has_many_belongs_to.png)

---


##Associations

Tweet `has_many` hash_tags `through` hash_tagging


![](../../assets/rails/has_many_through.png)

---


##Associations
### Primary Keys

A unique key (field) that can uniquely identify each row in a table


---


##Associations
### Foreign Keys

… a foreign key is a column or a combination of columns that is used to establish and enforce a link between the data in two tables. - __Wikipedia__

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Netflix Associations

---

##Associations
### Coding Associations

Now that we know how to identify associations, lets see how to add them in code.


---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Rewsly

*	We need to add new features to Rewsly.
*	Stories must be associated to users.
*	Users can comment on stories.

---


## Homework

Project Milestone:

*	List all models needed for your final project.
*	Draw a diagram to show how they will be associated.

Due lesson 15.

---

<div id="resources">
## Resources

###Cheat Sheet

No cheat sheet this class. Remember, Google is your friend!


###Tips, Tricks & Advanced Reading

*	[Implementing users and followers relationship](http://blog.teamtreehouse.com/what-is-a-has_many-through-association-in-ruby-on-rails-treehouse-quick-tip)

*	[Rails Naming Conventions](http://itsignals.cascadia.com.au/?p=7)

*	What's The Difference Between has_one and belongs_to - [Stack overflow](http://stackoverflow.com/questions/3808926/whats-the-difference-between-belongs-to-and-has-one belongs_to vs has_one)

*	Advanced Rails Forms and nested attributes - [tutorial](http://rubysource.com/complex-rails-forms-with-nested-attributes/)

http://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html




###Still Feel Lost?
####Catch Up With These Resources

*	[Michael Hartl Chapter 10](http://ruby.railstutorial.org/chapters/user-microposts#top)


*	[Associations Tutorial](http://net.tutsplus.com/tutorials/ruby/active-record-the-rails-database-bridge/)


*	[Rails Guides - Associations](http://guides.rubyonrails.org/association_basics.html)


*	[Differences in primary and foreign keys](http://www.programmerinterview.com/index.php/database-sql/differences-between-primary-and-foreign-keys/)
