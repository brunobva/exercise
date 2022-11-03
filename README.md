# Exercise 

Need to create a infrastructure at AWS using Terraform, using Makefile to call the commands to run and apply it. 

I know that is missing some configuration that was requested, but I hope you can get my knowledges with Terraform #Need to improve about modules

On this repo, you will find a Dockerfile, I've prepared a Dockerfile to run Terraform from it, so the host doesn't need to have Terraform installed just Docker #Need to include this verification

## How to use the Makefile
So, I am honest to say, that I've started use this today (shame on me, because it is so useful), but I've create the makefile to build the Docker image and after that start to run the Terraform commands.

`make apply`
    Using this command you will start the process of Docker build and also Terraform commands.


`make destroy`
    You will destroy with Terraform destroy command all the resources created.

* Please your need to replace your AWS_ACCESS_KEY and AWS_SECRET_KEY on this file before run it.

* Unfortunately I am not working with this kind operation on my daily jobs and I felt a little "rusty" 

* I really hope this files do not offend you guys, but if I got this opportunity, I'll do all efforts to became a "Master" on these things. For now, I need to study a lot on a thing that is not so enthusiastic for me... but lets see.

Really appreciate your help and attention on this opportunity.
Hope everythings works properly.

Bruno Moraes
git: https://git.com/brunobva