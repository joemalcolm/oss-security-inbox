X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1280" "Monday" "14" "November" "2016" "14:46:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<5f7c61458c5f4f3d9c95c80a8da2521e@imshyb02.MITRE.ORG>" "34" "[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" nil nil nil "11" "2016111419:46:55" "[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" (number mark "U       cve-assign@m Nov 14   34/1280  " thread-indent "\"[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow\"\n") "<5147e375-7b26-a93d-b052-85cd8222c9fa@pipping.org>" ("<5147e375-7b26-a93d-b052-85cd8222c9fa@pipping.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5261 invoked by uid 550); 14 Nov 2016 19:47:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5243 invoked from network); 14 Nov 2016 19:47:06 -0000
From: <cve-assign@mitre.org>
To: <sebastian@pipping.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<aceballos@gmail.com>
In-Reply-To: <5147e375-7b26-a93d-b052-85cd8222c9fa@pipping.org>
Message-ID: <5f7c61458c5f4f3d9c95c80a8da2521e@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 14:46:55 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://lists.gnu.org/archive/html/bug-gnu-chess/2015-10/msg00002.html
> http://svn.savannah.gnu.org/viewvc?view=rev&root=chess&revision=134

> frontend/move.cc

>> ValidateMove function that is expecting 128

Use CVE-2015-8972.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKhRRAAoJEHb/MwWLVhi2DwcP/1juLQPRJva94HfwKmS+gZhL
yhKtVh9QtPrmwwBENu+m7q/DICQbzLMkm55OIxCqI/0IpH6UrSwV3ga1r1n8q6na
+6Z3hWSsl6AlIZ7ACWSsQikoc9xSRibIG4DIFR9yX6KpRcFX6SxvzZ2gxM5riU4m
sxreTblY5nqczyW7PT2gIOB93SBzsMnZDXf6eVJkNixuNb2zo0AAA32ccXjPCJJl
u2dU9q6z6PfuyMWymhXjY31NXzZlm8upMdyrvx/xqdy8Crpw/RYY67AEa1k2l15X
7C7v466fKnMmR3XYUVRLqnFjFdT2XAc11ITyl9HbXKPpsEbfTnUxiUgmpzIFU9y8
jrRNdRtsY469RPTxDjZTnfnu8blcTK9CfhzeSWva0SEc0phVtjjyPR6xrNuhUmKh
6714CVSSKtzbti2m2i/Aio6xfHef7RH7S8TcoEx5xnNHCJ77PPXEWPr2wkeSDeUc
NEZpw6IV3rhtyOrGNhEWxtU+NOYgK1qGCkpPWfZX3loNVihNETODLD1VsH6YYS0l
E5/wCzZ9Bu3k9qWgd9VTJQKZ/Jkfg/q4MCFcTqeqDNmEOrg+I8uJegsikwGnLij3
i79vBgnNt2nVmKIbNsX59zRlfgRS81Ok+zoLrjHEitGsfGYBh26vn7x2l/oFGEgU
l93Rb5Wp7wStDB4bzHHo
=Gg4P
-----END PGP SIGNATURE-----
