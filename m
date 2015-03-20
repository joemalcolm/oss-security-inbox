X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1348" "Friday" "20" "March" "2015" "17:22:53" "+0100" "Pierre Schweitzer" "pierre@reactos.org" "<550C495D.9030204@reactos.org>" "36" "[oss-security] CVE request: denial of service in Quassel" nil nil nil "3" "2015032016:22:53" "[oss-security] CVE request: denial of service in Quassel" (number mark "        pierre@react Mar 20   36/1348  " thread-indent "\"[oss-security] CVE request: denial of service in Quassel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32263 invoked by uid 550); 20 Mar 2015 16:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32238 invoked from network); 20 Mar 2015 16:23:06 -0000
Message-ID: <550C495D.9030204@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 20 Mar 2015 17:22:53 +0100
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: denial of service in Quassel
To: OSS Security List <oss-security@lists.openwall.com>, 
 cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Dear all,

The following commit fixed a denial of service in quassel:
https://github.com/quassel/quassel/commit/b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8

It allows a connected client to cause a core crash by sending a CTCP
request which would be too long and multibyte.

This is mitigated by the fact that it requires an authed user.

With my best regards,
- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVDEldAAoJEHVFVWw9WFsLeaQP/0zUGaXiZUsJRbZod5ZqrMXb
oUJ+FVfhDTyWZNFbyNb6Pi76STyQHCZwggzR90ay/oBqn7toya9SLHASamjHSBY4
VeJI7q+KaM2/T9YwTVMU0WLB6gPjkR4/jQf0aE1Fdf5yRGejybybA5ffdvbJjYSs
du+uwsWOCztIohbm9vAH+bQCIPD+BjJzpAgsJ88SgfGMa3JZSah1pYfKh4StesYR
7SCx/R6WTJBqrrnfvUldUdcvF/5S8LGOtJoTAZi2QJZNZNBmZhntJ9QadCWuYTfX
mcxRZVuZrmcZ5mH4jiP4J8KoFdGzoHO4mTT2vc8g8EGkGcQ8aflAbA9Ngg4z/vyR
yZT0A+4fEYH5qh1QyIYiz2j+i4GXshcr/hS+NKStb30inj8fE5fnN8OAMjOPxd7O
gVZJv38XHurPtCDUuo/BTWX2CKgyRvikK33sJXN0eDx/tQCnMk+W+g1Ur+ujCgpO
vPW/Sv+301goGHZoobmWBic0gR2zUFeb/8FbTBnqA979DzUUCY712P/TX6vvhwnB
oryfwvuLNPGjsbT2KyLi9u3jyJnO5dAw2gmFsVSz2hk+874kkuV/cYq28HEdLTe/
1kSbEkEBZx7y5ksUZzp514j9RUUGNK/ZXZZz9GJkIEDlO19pmF/7SpgdFW/de6Kr
Jpv+YbGqoIljb8c79IbX
=GmZ8
-----END PGP SIGNATURE-----
