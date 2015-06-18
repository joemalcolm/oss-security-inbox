X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2753" "Thursday" "18" "June" "2015" "11:56:48" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55830660.5080405@redhat.com>" "71" "[oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable" nil nil nil "6" "2015061817:56:48" "[oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable" (number mark "U       kseifried@re Jun 18   71/2753  " thread-indent "\"[oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14333 invoked by uid 550); 18 Jun 2015 17:57:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14290 invoked from network); 18 Jun 2015 17:57:02 -0000
Message-ID: <55830660.5080405@redhat.com>
Date: Thu, 18 Jun 2015 11:56:48 -0600
From: Kurt Seifried <kseifried@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="XFME7BxKonIRcvrdItVIdeRPERcfv4auc"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE-2015-3243 rsyslog: some log files are created world-readable

--XFME7BxKonIRcvrdItVIdeRPERcfv4auc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So /var/log/cron is world readable in RHEL7 which means the complete
command line is logged (so --password=3D, hostnames, etc.).

In line with this I have made the following proposed change for Fedora
(and by extensions Red Hat products):

https://fedoraproject.org/wiki/Kurtseifried/secure_config_and_log_permissio=
ns

Have secure by default permissions for configuration and log files

Proposed change

All configuration files (e.g. files in /etc/) and all log files (e.g.
files in /var/log/) must not be set world-readable unless there is a
functional reason to do so. By default, configuration files should be
chmod 600 or 0640 and log files should be chmod 0600. This is due to a
continuing number of security issues with world readable files that
contain sensitive information (e.g. passwords and access tokens or
logged usernames and commands for example).

Rationale

The number of security issues created by lax permissions on
configuration and log files has resulted in a number of security issues
exploitable by local users. E.g.:

http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=3Dconfiguration+file+permis=
sions

http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=3Dlog+file+permissions

Please note that the above lists are by no means a complete listing of
the security flaws that have resulted from lax permissions.

I would invite other distros/etc to also do this.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--XFME7BxKonIRcvrdItVIdeRPERcfv4auc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVgwZgAAoJEBYNRVNeJnmTgB0P/0xH+J42kxDg/au6jiQ0vnDB
cp5+HtglRYsfM7Ksfws7G3qDl4rPryTLRl5LYDWEvw/u2mLxUiN+8tQhjTafYS6K
wtF1XY35tLI0xA/STJbOOuDYIkIYqRVeCPQwJmutTJY8J/GVR3PcuzfwGdgtl3hD
auetPVhpb+rQKeRo37HI8e6HYn62+7SUKqLTX16kQnyaSfjsDf9BV5gl7xZ1zwfE
HQT6LdlQZzRG5rrCVFJ0gaJb3FYMm154E8wRgI/tHvXI5+GvQ5hSKCRFnvjpIsli
nxgye83403/nlYu5LPbILp3bILG6I13FdSc66ogbaXFqDl7E1HhnUuOEw3SuaeBv
pnF0gvMp03cIk9pvUf/sVhyk9Bw4h6Lf5ORV0E4xt526FAB5hsjErBL8C9edrEID
4Gj0w+zKlHAEh/EjK4gsVSN6SgRSb9e37qWU/MBdD6tq5+Q/Q1tFBKvGoHz/PXtg
b8nCegYd/mzFO5fcMEinpotHbBoaAVkRtuYyOroFNvnoKhXTAKV5ANLM3hMmSFcL
VZMN6imewl57O/LSTF/ZZMtkzrAgWtNui/M86YQrVu+pVEnl9US+4jbi03VyiybV
AVqKfPe5isLrpCpTcAODr05t7Cu4ueoPMhN4mk3gse9U83hLtA+KKW3WJA8xeYPP
8VlEcq8M7hx05u7extcy
=jy9g
-----END PGP SIGNATURE-----

--XFME7BxKonIRcvrdItVIdeRPERcfv4auc--
