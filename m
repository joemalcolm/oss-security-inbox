X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/10
Message-ID: <644c2a9c395db103ad58ad55c6094ad8591b4fbd.camel@debian.org>
Date: Mon, 16 Nov 2026 20:58:32 +0100
From: Yves-Alexis Perez <corsac@...ian.org>
To: oss-security@...ts.openwall.com
Cc: Matko Zlatić <matko.zlatic@...il.com>, Joshua Peisach <jpeisach@...ntu.com>, Sean Davis <sean@...esabre.org>
Subject: Local Privilege Escalation in Debian with LightDM and GTK greeters
Content-Type: text/plain; charset=utf-8

Hi there,

I've just released Debian Security Advisory 6633-1 [0] fixing a local
privilege escalation from the lightdm user to root in LightDM (a login
manager, similar to GDM or KDM).

Matko Zlatić actually found a whole escalation from currently logged in user
to root (initially under Kali but it applies to Debian and Ubuntu as well).

I'll let Matko chime in on the whole process since it's their discovery, but I
have to admit it's an elegant vulnerability exploitation. I also wanted to
bring this here because the whole chain relies on multiple issues which I'm
not sure how it can be fixed and needed a bit of help from the community.

In the current LightDM architectures:
- LightDM runs as root, starts Xorg and manages the user authentication
- the greeters (lightdm-gtk-greeter, lightdm-qt-greeter etc.) run as the
unprivileged lightdm user and display the authentication window, the
background, provide session/langage/layout choice etc.

Upstream LightDM uses /var/lib/lightdm-data as USERS_DIR to host shared
directories between LightDM and the currently logging in user (I'm not
entirely sure why those repositories need to exists exactly). To make sure the
repository exists and is writable by that user, the greeter can send a dbus
command ENSURE_DIR("$user") to LightDM, which will make sure this repository
exists and is owned by that user (more or less `chown $user:lightdm $dir`,
[1])

Unfortunately, in 2014 I added a Debian patch [2] to LightDM to "simplify" the
number of directories used by LightDM ecosystem and put USERS_DIR in
/var/lib/lightdm/data, with /var/lib/lightdm the homedir for the lightdm user
(running the greeter processes). That means the lightdm user has write access
to /var/lib/lightdm while the LightDM process (running as root) will chown
directories in /var/lib/lightdm/data, thus leading to privilege escalation
from the lightdm user to root. This was just fixed in Debian by dropping the
patch, with /var/lib/lightdm-data beeing root:root and preventing the lightdm
users to write there.

I'm still concerned about other way to exploit [1] though because LightDM runs
as root (there's an open issue [3] to make it unprivileged but it's quite old
and the current maintainer just recently stepped up). I've tried adding some
security hardening to the systemd unit file but unfortunately since it starts
Xorg it needs a bit of privileges, and also privilege reduction is propagated
to the user session (so adding NoNewPrivileges or stuff like that will prevent
the user running su or stuff like that).

The initial escalation from graphical user to lightdm user relies on GtkModule
(and thus is shared accross GTK greeters, no idea if similar things exist with
Qt or other toolkits). A GTK process won't check if GtkModule are provided by
a different user than the one it's running and that can lead to code execution
under a different uid. I've found [4] (from 2001!) which is related but the
current issue doesn't use $GTK_MODULES but rather Xsettings (I'll let Matko
share the proof of concept when they see fit).

I'm unsure how to actually fix that and would welcome help from some more GTK-
knowledgeable people.

As a hardening measure I've added an AppArmor profile to lightdm-gtk-greeter
but it'd be nice to have more robust fixes.

Sorry for the long summary. I'd be interested in how to move further on this,
especially considering that both LightDM and lightdm-gtk-greeter are basically
volunteer projects with likely overwhelmed maintainers.

Again, thanks Matko for the disclosure.

Regards,

[1] https://github.com/ubuntu/lightdm/blob/main/src/shared-data-manager.c#L75
[2]
https://sources.debian.org/src/lightdm/1.32.0-6/debian/patches/06_change-user-dirs.patch
[3] https://github.com/ubuntu/lightdm/issues/18
[4] https://gtk.org/setuid.html
-- 
Yves-Alexis

Download attachment "signature.asc" of type "application/pgp-signature" (489 bytes)
