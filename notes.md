






.welcome__title {
  font-weight: lighter;
  margin-bottom: 10px;

}

.welcome__window, .login__window, .signup__window {
  background-color: white;
  width: 100%;
  max-width: 550px;
  padding: 100px 50px;
  box-shadow:
  0 1.3px 3.6px rgba(0, 0, 0, 0.024),
  0 3.6px 10px rgba(0, 0, 0, 0.035),
  0 8.7px 24.1px rgba(0, 0, 0, 0.046),
  0 29px 80px rgba(0, 0, 0, 0.07)
;
border-radius: 10px;
}

.welcome__subtitle {
  margin-bottom: 30px;
}

.button, .button:link, .button:visited {
  background-color: lightcoral;
  color: white;
  display: block;
  width: max-content;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
  transition: opacity .3s ease;
  border: none;
  letter-spacing: 0.1em;
}

.button:hover {
  opacity: .7;
}

.welcome__buttons {
  display: flex;

}

.welcome__buttons > *:not(:last-child) {
  margin-right: 20px;
}

.login__window label, .signup__window label {
  display: grid;
  grid-template-columns: 100px 1fr;
  margin-bottom: 20px;
}

.login__window input, .signup__window input {
  max-width: 300px;
  display: block;
  justify-self: start;
  padding: 5px 10px;
  border: 2px solid rgb(129, 122, 122);
  border-radius: 5px;

}

.login__window input:focus, .signup__window input:focus{
  border-color: lightcoral;
  outline: none;
}

.login__window h2, .signup__window h2{
  margin-bottom: 20px;
  font-weight: 400;
}

