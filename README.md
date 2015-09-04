alfred-ciscocall (WIP)
======================

Simple Alfred workflow to initiate phone calls via a Cisco IP Phone. (Currently tested with a 7590 only)

![](http://up.frd.mn/9Ek4O.png)

![](http://up.frd.mn/TSMe3.png)

## Usage

`call [phone number]`  

for example

`call 01715595599` or `call 00491715595599` or `call 123` for an (internal) extension call.

#### Result

*nothing in Alfred*

The call should be establish immediately so you better be quick and pick up that handset :smile:

## Installation

1. Download the [`alfred-ciscocall.alfredworkflow`](https://github.com/frdmn/alfred-ciscocall/releases) file from GitHub releases
1. Double click to execute and import the workflow into Alfred
1. Download the default config file `.alfred-ciscocall.conf` into your home folder:  
`curl https://raw.githubusercontent.com/frdmn/alfred-ciscocall/master/.alfred-ciscocall.conf -o ~/.alfred-ciscocall.conf`
1. Adjust the credentials to your VoIP phone:  
`vi ~/.alfred-ciscocall.conf`

## Version

0.1.0

## License

[WTFPL](LICENSE)
