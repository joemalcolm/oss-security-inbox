X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2613" "Friday" "3" "April" "2015" "18:22:23" "+0100" "Iain R. Learmonth" "irl@fsfe.org" "<20150403172223.GA5593@shiftout.net>" "70" "[oss-security] Request CVE for LinuxNode - DoS vulnerability" nil nil nil "4" "2015040317:22:23" "[oss-security] Request CVE for LinuxNode - DoS vulnerability" (number mark "        irl@fsfe.org Apr  3   70/2613  " thread-indent "\"[oss-security] Request CVE for LinuxNode - DoS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15716 invoked by uid 550); 3 Apr 2015 17:32:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11475 invoked from network); 3 Apr 2015 17:22:41 -0000
X-Virus-Scanned: Debian amavisd-new at cavendish
Message-ID: <20150403172223.GA5593@shiftout.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
X-PGP-Key: http://irl.sdf.org/Iain_R_Learmonth.gpg
Hackerspace: 57North Hacklab <http://57north.co/>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Fri, 3 Apr 2015 18:22:23 +0100
From: "Iain R. Learmonth" <irl@fsfe.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Request CVE for LinuxNode - DoS vulnerability
To: oss-security@lists.openwall.com

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I'm a member of the Debian Hamradio Maintainer's team and a
denial-of-service bug has been reported on our package ax25-node. (Debian
bug: https://bugs.debian.org/777013) I would like to request a CVE for this
vulnerability.

The software in this package is identified as LinuxNode in the README
contained in the source package. The author is identified as Tomi Manninen
OH2BNS, <tomi.manninen@hut.fi> although attempts have been made to contact
the author and have been unsuccessful, as mentioned in the Debian bug
report.

https://sources.debian.net/src/node/0.3.2-7.4/README/

=46rom the bug report:

"The SIGQUIT routine fails to close the app leaving the IP sockets open and
in some cases DDOS the remote site if a user "ctrl-]+q" out of a telnet
session.  Also the app fails to close and more can be spawned by a crafty
malicious user thus bringing the system to a point of no memory available."

Brian N1URO on the bug report maintains a replacement node package and I am
confident that his report is accurate. He found this vulnerability in 2005,
but due to an unresponsive upstream this got lost. This is the first request
for a CVE for this vulnerability.

This appears to be an issue affecting multiple versions, although I can only
say that it is present in 0.3.2.

I am happy to provide more information if needed and I can be contacted at:

  irl@fsfe.org

Thanks,
Iain.

--=20
e: irl@fsfe.org            w: iain.learmonth.me
x: irl@jabber.fsfe.org     t: EPVPN 2105
c: 2M0STB                  g: IO87we
p: 1F72 607C 5FF2 CCD5 3F01 600D 56FF 9EA4 E984 6C49

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJVHsxPAAoJEAdZWpwDjyGuacsP/RuLmic3ErSZMlGbNRSaoGQH
6Y+Qc9OZqIPUVILiPLs+RPjGDwFdlbplWnJK99uJIlX5jPJQKihdVtSHyI+Y65wa
34YQKXrj4TQPdmyO7lTQpfp1Fh8wN6O5Uh2Dsad6gWgvO8mE6vZIlaOlcqKAYLF7
WU6X4pcNCFB+YXBkzjr4STPj713W+8V+M+isFQg1T/37GrsPA78fZkWH2xIFH5PQ
TaIBKGkQ2s6Z5AxaltzS4mVfpOxVSVevf7G61ZEn2nZX2JFKcBt212IgBd6pWyYO
+P1xCEPplAPSo2mWx5ZvyxuiElnNhaCnyPBzY6u+ACf39TGxLzvPNqMK7nuHZaF7
zNoOy40WtgU6YnEvzdhfrs/Uy/gRMF/5yfUqrn+72KvOJ8zIKcYpjvdzBvBsZnob
vv2ARQB7t9BVEsWD4Gs56SdTwn46njs+3VjTi9Ti3uIxXOHQ3i51TdKi2Vil43LF
/V/fJcVXhSf6HydPcWuJ+XZqTu6Vf8cs427ZDmsRJfxXY5HgrAAfz4s2H3fN0GEo
e7jfDeI+1AsKwos5P10xOlV9qv48qbQNzUr5HgQwwUehuZrIEZlvif3vJ4JOEGUB
yF255p9AxYBSdpW0E+pukpxM66TyW16emE4uW54ae8RaVxx2/PSmS0HZ4YHkevdf
3kVVNcxEi9SHxXSNev8J
=7DWU
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--
