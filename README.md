blog
====

blog para la tutoria de ruby

###TODO:

blog users/new (creo que es el sign up)

1. user sccaffold (email, password)
  new#sign_up
  
2. solo un controller SessionsController (new (formulario para sign in, email, 
  password), create (sign in, comprobar usuario y password), delete (log out))

para logear

session[:user_id] = @user.id

para deslogear

session[:user_id] = nil

