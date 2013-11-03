#Quiz Form with Nested Attributes

* By James Chuang
* Rails Version 4.0.0
* Based on Ryan Bates' Nested Form Tutorial

##Description

A basic framework for a quiz creation app done with nested attributes in Rails 4. The application includes the use of nested strong parameters and is based off of Ryan Bates' Nested Model Form tutorial on Rails Cast Pro. It also includes a workaround to the turbo links suggested by [brookr][1]

##Rails 4 Differences
###Strong parameter nesting
```shell
params.require(:test).permit(:name, questions_attributes: [:id, :test_id, :content, '_destroy', answers_attributes: [:id, :question_id, :content, :correct, '_destroy' ] ])
end
```

[1]: https://github.com/brookr