# Q0: Why is this error being thrown?

The Pokemon model is unitialized.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are the only Pokemon that have been created.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

capture_path sets the URI pattern to be capture, and :method indicates that the button will route to a patch method.

# Question 3: What would you name your own Pokemon?

Frato

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

a path needing the trainer id

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It adds the errors to the messages that will be displayed

# Give us feedback on the project and decal below!

Fun!

# Extra credit: Link your Heroku deployed app

Nah