Documentation (incomplete at this time, contribute if you can!) may be found at
http://gluon.readthedocs.org/

If you're new to Gluon and ready to get your feet wet, have a look at the
[Getting Started Guide](http://gluon.readthedocs.org/en/latest/user/getting_started.html).

**Gluon IRC channel: `#gluon` in [hackint](http://hackint.org/)**

## Use a release!

Please refrain from using the master branch for anything else but development purposes!
Use the most recent release instead. You can list all relaseses by running `git branch -a`
and switch to one by running `git checkout v0.6.1beta1`.

To select one of our sites, use first `./get-sites` and select one out of `sites-repo` with e.g. `./set-site vfnnrw/leverkusen`.

To make a stable-build for e.g. leverkusen run:  
`git clone https://github.com/VfN-NRW/gluon.git vfnnrw-gluon`  
`cd vfnnrw-gluon`  
`git checkout v0.6.1beta1`  
`./set-site vfnnrw/leverkusen`  
`make update`  
`make -j4 GLUON_BRANCH=stable`  

If you're using the autoupdater, do not autoupdate nodes with anything but releases.
If you upgrade using random master commits the nodes *will break* eventually.

## Mailinglist (mostly for announcements)

I can handle administrative requests automatically. Please
do not send them to the list address! Instead, send
your message to the correct command address:

For help and a description of available commands, send a message to:

    gluon-help@luebeck.freifunk.net

To subscribe to the list, send a message to:

    gluon-subscribe@luebeck.freifunk.net

To remove your address from the list, just send a message to
the address in the `List-Unsubscribe` header of any list
message. If you haven't changed addresses since subscribing,
you can also send a message to:

    gluon-unsubscribe@luebeck.freifunk.net

or for the digest to:

    gluon-digest-unsubscribe@luebeck.freifunk.net

If you need to get in touch with the human owner of this list,
please send a message to:

     gluon-owner@luebeck.freifunk.net

Please include a FORWARDED list message with ALL HEADERS intact
to make it easier to help you.
