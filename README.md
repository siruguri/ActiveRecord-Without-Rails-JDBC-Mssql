ActiveRecord Without Rails, JDBC-Mssql style
============================================

This is a mashup of:

* https://github.com/jwo/ActiveRecord-Without-Rails
* http://exposinggotchas.blogspot.jp/2011/02/activerecord-migrations-without-rails.html  

Configured for JRuby, JDBC, and Microsoft MSSQL server

---

Just a simple example of using ActiveRecord migrations without Rails

tasks you can do:

* `rake db:create`
* `rake db:migrate`
* `rake db:drop`
* `rake db:rollback`
* `rake db:version`


Or, you can run the thing to show that it'll connect

```
ruby ar-no-rails
```

Output:
> Count of Pages: 0

Lastly, you can IRB it to do stuff:

$ irb

```
>> require "./ar-no-rails"
=> true
>> Page.new
=> #<Page id: nil, content: nil, published: false>
>> Page.create content: "the-content"
=> #<Page id: 1, content: "the-content", published: false>
```

Copyright
---------
None. Really.
