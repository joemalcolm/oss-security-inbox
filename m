X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3400" "Wednesday" "27" "January" "2016" "12:24:06" "+0100" "Luca BRUNO" "lucab@debian.org" "<2413003.GtkKFizscD@chimera>" "92" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012711:24:06" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "  z     lucab@debian Jan 27   92/3400  " thread-indent "\"[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 9903 invoked by uid 550); 27 Jan 2016 11:25:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9880 invoked from network); 27 Jan 2016 11:25:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unstable.it; s=mail;
	t=1453893897; bh=PVbPqECOMn2GI5rKYQ49D9JYVSo4VfvE7qrvCK1w9f0=;
	h=From:To:Cc:Subject:Date:From;
	b=X6EKEg0FI3gOZrZhMBLAs/FoUeKlgOkUftzbynGF0XCG8PqDJUpT+SWcdNS7Wxw4L
	 WEunnqpnzwU14XneyAfK+wxmrdPgyINn5oxnIo9UC+V8Hh+ieiuVjj9EKQb3rP3RKY
	 l3wO3iHValSTlstDtzhl2EyPnZjKd5QN6gaO86r0=
Message-ID: <2413003.GtkKFizscD@chimera>
Organization: Debian
User-Agent: KMail/4.14.1 (Linux/4.3.0-0.bpo.1-amd64; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4930356.S6GWYfhott"; micalg="pgp-sha1"; protocol="application/pgp-signature"
Cc: team@security.debian.org, secalert@redhat.com
Date: Wed, 27 Jan 2016 12:24:06 +0100
From: Luca BRUNO <lucab@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes
To: pool@lists.ntp.org, oss-security@lists.openwall.com, linuxbrad@gmail.com

--nextPart4930356.S6GWYfhott
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

[cross-posted to pool-ntp and oss-sec]

Hi,
while reviewing network logs this morning I spotted some anomalies related
to scan probes, ntp.org pools and IPv6.

It looks like Brad already observed and blogged about this some days ago,
but I haven't seen this discussed in the usual ntp-pools, Debian and
oss-sec ML, so I'm reposting this here:
http://netpatterns.blogspot.de/2016/01/the-rising-sophistication-of-network=
.html

In summary, some machines (which seem related to the shodan.io scanning pro=
ject)
are actively participating in pool.ntp.org as IPv6 endpoints.
However, clients connecting to them for NTP timesync, are subsequently scan=
ned
by probes originating from *.scan6.shodan.io hosts.

Confirming original report from Brad, I can add that those scanners seem to
implement some kind of rate-limiting: they will timeout NTP and won't re-sc=
an
recent clients when doing multiple/subsequent NTP requests.
Moreover, this is not targeted/restricted to the Debian pool only, but plag=
ue
the whole IPv6 pool, as seen on a sample query to the RedHat pool:

```
$ dig +short -t AAAA 2.rhel.pool.ntp.org | grep -E ':[[:xdigit:]]00[[:xdigi=
t:]]$'
2a03:b0c0:3:d0::18:b001
$ dig +short -x 2a03:b0c0:3:d0::18:b001
analog.data.shodan.io.
```
(Upon querying this server for NTP, the machine immediately got IPv6-scanned
by rock.scan6.shodan.io)

pool.ntp.org services are the default NTP servers in many default configura=
tions
(at least most of Linux distro) and I guess that this kind of behavior is d=
angerously
increasing the exposure level of way too many systems.

For ntp.org admins: can those rogue server be expunged from the pools, and =
the whole
shodan.io situation clarified? (Brad's post has a comprehensive endpoints l=
ist and=20
helper tools for detection)

For oss-sec crowd: is there anything we can do to improve the situation and=
 avoid
similar cases in the future? Should crowd-sourced and fundamental services =
like this
be encouraged to move to a stronger WoT?

Ciao, Luca

--=20
 .''`.  ** Debian GNU/Linux **  | Luca Bruno (kaeso)
: :'  :   The Universal O.S.    | lucab (AT) debian.org
`. `'`                          | GPG: 0xBB1A3A854F3BBEBF
  `-     http://www.debian.org  | Debian GNU/Linux Developer

--nextPart4930356.S6GWYfhott
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABAgAGBQJWqKjWAAoJEKmDSiJSB45OcDYP/2GyHg0mPIksq0Flos0pS6v7
gPsO+JTuSnAA9HljkeifEaTdnJPWPbVtYc42iUGuHKIpTosSNJLhFsLm/kmJgoFT
HCrllgrHSj/P4ozUttMFF7U7XNjCzklLI97v6tg2WPahrdJVM/w/6+5lTRknMoNT
bVfndNm3vXB4VtcVb/L1AfwDW0PWy+dphlLVMXzQf5ghKeZOF/iY3WC5s1qibc7v
W0pO9p09w/EXwlLrbz0CmQRBklLEeGwbqfJ6M8JQ7O1vtRyoTggEJ278MN3O5KUP
vY6OS1ivJ0I5qor6D1RvI0xPU97Q1UaiKaDmp61X5K/oiQjIWIHQ5lhTKUcKCFfm
c1JXtCGpnOKx8SHkbH2D/cz20/1BWuCl3LLR+cXwfobNwmVgbyeqkK/yCEekC1aJ
B4oDrmFxegfgkOmIzzFsEaOoR19jyJuj19SKyMaYnU6fjL5X+xaa7QGqP/hLBuqq
5DO6UAUy0queAs0PjC21nhuLNCsyUtkwl+L2JOShd/NPvsFgywungSU1geGKFyWe
qPbZ2zS7hZDVPvrwQ+0IhNccqBY1rspAWHwod1ht4UH0CFwXQf4UY9aJ6kOKSmA6
xVVbBgsH9T1doNSIizBoyYB9chz3l6vFLCJtuS1LWq53rT8pMnRxjyOkxogXM8lZ
nTClf1RX+pqrP8RXmdn+
=3ArJ
-----END PGP SIGNATURE-----

--nextPart4930356.S6GWYfhott--

