X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2663" "Tuesday" "1" "December" "2015" "23:58:47" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151202045847.129B06C0063@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" "^Cc:" nil nil "12" "2015120204:58:47" "[oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" (number mark "        cve-assign@m Dec  1   57/2663  " thread-indent "\"[oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too\"\n") "<20151202015146.GJ24908@hunt>" ("<20151202015146.GJ24908@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13424 invoked by uid 550); 2 Dec 2015 04:58:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13406 invoked from network); 2 Dec 2015 04:58:58 -0000
In-Reply-To: <20151202015146.GJ24908@hunt>
Message-Id: <20151202045847.129B06C0063@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, guidovranken@gmail.com
Date: Tue,  1 Dec 2015 23:58:47 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too
To: seth.arnold@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Guido included a patch along with AFL-discovered inputs to trigger the
> issues:
> 
> https://launchpadlibrarian.net/228152582/dhcp.c.patch
> 
> Roy Marples has already addressed these issues in upstream dhcpcd
> packages; I believe these issues may require 2012-era CVE identifiers:
> 
> http://roy.marples.name/projects/dhcpcd/finfo?name=dhcp.c&ci=27a92c6a825d6e74
> 
> I believe this represents three distinct flaws: out of bounds reads beyond
> the end of the supplied packet, out of bounds write before the start of
> the 'out' parameter, and a use-after-free.

MITRE will assign CVE IDs. Do the above references mean that most of
the changed code lines in dhcp.c.patch correspond to out-of-bounds
reads shown in the
http://roy.marples.name/projects/dhcpcd/fdiff?sbs=1&v1=63689c50411b0920&v2=dad877391ea5b128
diff, the change from "(l = *q++)" to "(l = *q++) && q - p < len"
corresponds to an out-of-bounds write, the deletion of "free
(dhcp->dnssearch)" corresponds to a use-after-free, and nothing else
in the 2012 part of the http://roy.marples.name reference is a new
vulnerability? (This is just a guess.)

The reason we're asking this and not immediately sending three CVE IDs
is that someone at MITRE will ultimately use, or at least consider
using, both https://launchpadlibrarian.net/228152582/dhcp.c.patch and
http://roy.marples.name/projects/dhcpcd/finfo?name=dhcp.c&ci=27a92c6a825d6e74
to describe what the CVEs mean. If there's already information about
the equivalences between these references, that will make this process
easier, and also further confirm that three IDs is the right number.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWXnlaAAoJEL54rhJi8gl5Q/0QAJzOV3xnzo16eq+p9b8MJSC1
ZLSo7294EIeH1CzEDI4oQ2xS131awBKe8vBZl3zkp/LAaRyX6RJlIaaryAXKY6/v
UleGiE/PoEewBUzrP1CkavScF+u8u/xq3lhSWA21v7p5QQrTal90S/aOxkEErNNJ
OEnS8PEFBJLq3bI5K/jlUz0rlc3WA1yjIMws0rRjPwqJ+ZvHMKhfXRG8/pYgIyYi
UEvVF4IBZ015GQVuomkidtPJFB2R3a9YkAT2Kv7HER0Ub071uLU/J2+HeOV79KBu
Dg36gKbJDgXXBLP/UombCVgXZWURwPH/tUg62Ilq8J9GSJAaHuLStjdWXMwhFyJJ
bVTX6BJ5pM9qkZ3V0alTBBILVvqBNR6Pc/uMIsxVF38nr3aa2daUUXhAaMvKLgE0
1X+5oAvQE3GHn6i2aLCBziKNMx3y5n5kNdDfcmzEPSWnciOAcmWDxXjgh6I2X51r
/KmD/An5wkriQqCbzGAzB5lUw/OIYN5YrJIpkvJNC5aCWZOT/e7W1eswEvf0falx
Q1ZRmDU5HulEtyA5mKGenaNWfxs5BsDwhwwkTEvn9+Gi4gx9LoyNeGDTg7THzcdB
vOKOldjBEEgmr4Z5bFJulCMa38SZUw2Idiv2CR30i/YGFYZX2L8s1NOuG9W3J7YK
r8NaHJ5vFJeH+sNqOhZf
=jJ31
-----END PGP SIGNATURE-----
