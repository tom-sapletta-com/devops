    ___  ____ _  _ ____ ___  ____ 
    |  \ |___ |  | |  | |__] [__  
    |__/ |___  \/  |__| |    ___] 
    
    DevOps Project Tool
[Story about Inspiration](INSPIRATION.md)

## Apicra
Apicra is ecosystem for DEVOPS services: Manager for installation, for install any Apicra Solutions, such DevOpsTool, DevopsGUI, Devops Examples, Tutorials, Courses
+ DOT = DevOpsTool
 

## Environment
The DevOps Tool is not depending from platform
What is Your Platform Today, what will be tommorow?


![Platform](doc/img/icons8-pallet-100.png) 
+ Windows [environment](doc/windows.md) 
+ Linux?
+ Mac OS?

### How to start
![Download](doc/img/icons8-download-100.png)

#### Install over auto-installator
https://github.com/tom-sapletta-com/do/

Download file install.bat from http://install.apicra.com
    
    powershell.exe -Command (iwr -outf install.bat http://install.apicra.com)
    install.bat
    
Another
    
    powershell.exe -Command (Invoke-WebRequest -OutFile install.bat http:\\install.apicra.com)
        
    wget ftp://install.apicra.com
    iwr -outf install.bat http://install.apicra.com
    http-ping.exe -n 1 http://www.google.com/ -f google.html
    ping -n 1 https://www.google.com -f google.html
    ping install.apicra.com -n 1 >> install.bat        
    powershell.exe -Command (Invoke-WebRequest -Uri install.apicra.com -OutFile)
    
    WebClient.DownloadFile("http://url",(pwd).path+"\relative-file.txt")

### Init
Create the 'do' shortcut with [PATH](PATH.md)
try to use own extension if 'do' is busy on your system
    
    init.bat
       
### First command 
Now, you can easy improve your skills at work day by day as a DevOps!
Let's start your new project and enjoy!
Just do it
     
    do
    do info
    do install composer
    do remove composer

### Architecture
The library give you scripts to execute step on your new PC with Windows or Linux the basic environment with examples

### Why Batch?

    Because it's simple: Everyone can read, modify or extend it
    It runs on every Windows system without any prerequisites
    It is closest to a real DevOps working on the command line


#### Layers
![layers](doc/img/icons8-layers-filled-100.png)

* System OS, Protocoll
* Task, Apk
* Script to execute
* Handler, Events to reuse

#### Script Application
![Apk](doc/img/icons8-apk-100.png)

Each Script works as an Application, whic can be started, stopped, ...

#### Commmands Example with Application Script for Composer
![Composer](doc/img/logo-composer-transparent2.png)

The basic command
 
##### Help
![Help](doc/img/icons8-apk-100.png)

    do composer help
    do composer info
    do composer doc
    do composer version
    
##### Install 
![Install](./doc/img/icons8-downloading-updates-96.png)
        
do **[application]** install

Example:

    do composer install
           
##### Remove
![remove](doc/img/icons8-close-window-100.png)

do **[application]** remove

Example:
    
    do composer remove
    
##### Start
![start](doc/img/icons8-start-100.png)

do **[application]** start

Example:

    do composer start
    
##### Stop
![stop](doc/img/icons8-home-button-100.png)

do **[application]** stop

Example:

    do composer stop 

##### ReStart
![restart](doc/img/icons8-restart-100.png)

do **[application]** restart

Example:

    do composer restart 

 
## Google API

url for browser [Documentation](https://github.com/tom-sapletta-com/devops) or command

    do doc

    do doc api
    
    do api google doc
    
    do api google searching doc
    
    do doc example
    
    do api google searching example
  

## How to use
What you can install

    devops.bat list

Documentaion the software which you want install

    devops.bat composer doc

Installation

    devops.bat composer install    

How to start Example project application
[EXAMPLE](EXAMPLE.md)

    
### Benefits

    Not depends platform and language
    Open concept solution, open for extensions, modular architekture
    Open Source 
    Transparent licence and policy
    For free
    The open concept give you more benefits with comunity
    Community: Help, Support
    
    Payable options
    First Step before automatisation for home, work with IoT and much more
    Without havy browser, etc
    
    
    Developer
        Can be install and used on IoT devices for faster implementation
    
    User
        Can be used day by day for many tasks, and audio support 
    
   
    
### Posibilities    
    
    Can be updated by documentation, half automatisation, with reviev and docker testing
    
## TODO
conribute
https://opencollective.com/opsdroid#backers
    
Contributors
    
https://github.com/opsdroid/opsdroid/blob/master/README.md


## What is DEVOPS    

+ https://gist.github.com/jpswade/4135841363e72ece8086146bd7bb5d91
+ https://github.com/TechBookHunter/Free-DevOps-Books
