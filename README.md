# Sprinter : Minimalist Pomodoro For Linux

## What is Sprinter ?

This is a simple, yet efficient, script that help you to use Pomodoro technique directly on your computer. With no more need to use your smartphone, you get a knew way to deep work while avoiding those tempting social medias.

## How to use it ?

Developped with minimalism in mind, such is the way to use it :

```bash
./splinter.sh <time_in_minutes> <time_in_minutes> <number_of_rushes>
```

If you want to make 3 rushes of 50 minutes of work, 10 minutes break, the command will be :

```bash
./splinter.sh 50 10 5
```

> By default, it's set to 4 rushes of 20 minutes of work and 5 minutes break.

Which leads us to :

```mermaid

graph LR

subgraph rush1["Rush 1 - 60 minutes"]
    sprint1["Sprint 1 - 50 minutes"]
    break1["Break 1 - 10 minutes"]
end
subgraph rush2["Rush 2 - 60 minutes"]
    sprint2["Sprint 2 - 50 minutes"]
    break2["Break 2 - 10 minutes"]
end
subgraph rush3["Rush 3 - 60 minutes"]
    sprint3["Sprint 3 - 50 minutes"]
    break3["Break 3 - 10 minutes"]
end

rush1-->rush2-->rush3

```

In this exemple, you work 2h30 out of 3h chunk so you deep work for 83% of the given time.

## Future features

- #001 : Implementing long break between large chunks of rushes