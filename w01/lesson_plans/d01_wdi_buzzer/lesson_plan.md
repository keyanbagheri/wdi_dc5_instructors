# Installing and Configuring the WDI Buzzer

- github: https://github.com/itslenny/buzzer
- app: http://wdi-buzzer.herokuapp.com/login

Open your ~/.bash_profile.

```
$ atom ~/.bash_profile
```

Add these lines.


```
export GA_CLASS_NAME=wdi-dc-5ama
alias wdibuzz='_wdibuzz(){ curl "http://wdi-buzzer.herokuapp.com/api/buzz/do/$GA_CLASS_NAME/matt_806501bab6/$1" --silent | sed '\''s/[[:space:]]$//g'\''; return; }; _wdibuzz'
```

Save and close the file.

Close and reopen terminal.


## Try it out:

Type this in your newly opened terminal:

    wdibuzz

You can also pass a value (for a Fist to Five response).

    wdibuzz 3
