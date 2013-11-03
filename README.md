#Quiz Form with Nested Attributes

* By James Chuang
* Rails Version 4.0.0
* Based on Ryan Bates' Nested Form Tutorial

##Description

A basic framework for a quiz creation app done with nested attributes in Rails 4. The application includes the use of nested strong parameters and is based off of Ryan Bates' Nested Model Form tutorial on Rails Cast Pro. It also includes a workaround to the turbo links suggested by [brookr][1]

##Rails 4 Differences
###Strong parameter nesting
In the parent controller you must pass in all of the attributes that the test controller will need to create your test, questions, and answers.
```shell
# in parent controller.rb
params.require(:parent).permit(:parent_variables, child_attributes: [:child_variables])
end
```
###turbo link workaround
In order for the javascript to load, you will need to include this in your javascript file.
```shell
# in javascript
 $(document).ready(ready)
 $(document).on('page:load', ready)
```

[1]: https://github.com/brookr
