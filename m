X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4561" "Thursday" "23" "April" "2015" "13:05:07" "+0200" "Peter van Dijk" "peter.van.dijk@powerdns.com" "<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>" "110" "[oss-security] PowerDNS Security Advisory 2015-01" nil nil nil "4" "2015042311:05:07" "[oss-security] PowerDNS Security Advisory 2015-01" (number mark "        peter.van.di Apr 23  110/4561  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2015-01\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30509 invoked by uid 550); 23 Apr 2015 11:14:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22400 invoked from network); 23 Apr 2015 11:05:25 -0000
Content-Type: multipart/signed; boundary="Apple-Mail=_8D249D8F-1FEA-46BD-B76B-70131D93C8C5"; protocol="application/pgp-signature"; micalg=pgp-sha1
Message-Id: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Date: Thu, 23 Apr 2015 13:05:07 +0200
From: Peter van Dijk <peter.van.dijk@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PowerDNS Security Advisory 2015-01
To: pdns-dev@mailman.powerdns.com,
 pdns-users Users <pdns-users@mailman.powerdns.com>,
 pdns-announce@mailman.powerdns.com,
 oss-security@lists.openwall.com

--Apple-Mail=_8D249D8F-1FEA-46BD-B76B-70131D93C8C5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi everybody,

Please be aware of PowerDNS Security Advisory 2015-01
(http://doc.powerdns.com/md/security/powerdns-advisory-2015-01/), which you
can also find below. The good news is that as far as we have seen, only
specific builds for RHEL5 are affected, but just to be sure we are doing
full releases of all recent versions of our products.

Packages and distribution tar balls of Recursor 3.6.3, Recursor 3.7.2 and A=
uth
3.4.4 are available in the usual places, and release announcements will be =
sent
out right after this email.

If you prefer a minimal patch, please go to
https://downloads.powerdns.com/patches/2015-01/ and see README.txt there.

If you have problems upgrading, please either contact us on our mailing lis=
ts,
or privately via powerdns.support@powerdns.com (should you wish to make use=
 of
our SLA-backed support program).

We want to thank Aki Tuomi for finding this issue, and really digging into =
it.
We also want to thank Kees Monshouwer for assisting in debugging and fixing
the offending code. Finally we want to thank Kai Storbeck for putting an
earlier, broken version of the patch into production and being understanding
about the names that broke because of it.


PowerDNS Security Advisory 2015-01: Label decompression bug can cause crash=
es
on specific platforms

     * CVE: CVE-2015-1868
     * Date: 23rd of April 2015
     * Credit: Aki Tuomi
     * Affects: PowerDNS Recursor versions 3.5 and up; Authoritative
       Server 3.2 and up
     * Not affected: Recursor 3.6.3; Recursor 3.7.2; Auth 3.4.4
     * Severity: High
     * Impact: Degraded service
     * Exploit: This problem can be triggered by sending queries for
       specifically configured domains
     * Risk of system compromise: No
     * Solution: Upgrade to any of the non-affected versions
     * Workaround: Run your Recursor under a supervisor. Exposure can be
       limited by configuring the allow-from setting so only trusted
       users can query your nameserver.

   A bug was discovered in our label decompression code, making it
   possible for names to refer to themselves, thus causing a loop during
   decompression. This loop is capped at a 1000 iterations by a failsafe,
   making the issue harmless on most platforms.

   However, on specific platforms (so far, we are only aware of this
   happening on RHEL5/CentOS5), the recursion involved in these 1000 steps
   causes memory corruption leading to a quick crash, presumably because
   the default stack is too small.

   We recommend that all users upgrade to a corrected version if at all
   possible. Alternatively, if you want to apply a minimal fix to your own
   tree, please find patches here: https://downloads.powerdns.com/patches/2=
015-01/

   These should be trivial to backport to older versions by hand.

   As for workarounds, only clients in allow-from are able to trigger the
   degraded service, so this should be limited to your userbase; further,
   we recommend running your critical services under supervision such as
   systemd, supervisord, daemontools, etc.

   We want to thank Aki Tuomi for noticing this in production, and then
   digging until he got to the absolute bottom of what at the time
   appeared to be a random and spurious failure.


--Apple-Mail=_8D249D8F-1FEA-46BD-B76B-70131D93C8C5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIcBAEBAgAGBQJVONHjAAoJENz1E/p+7Rnzl1EP/3hlO3GsfFRBXQRZ6SCJggij
tPUipawJdwi4RVJn0ITgV3JwAm5S+dgJv+LmWOrFUrmuvxkdcmxFF2wcRBGx+ymd
gsRPVkIv8JdXsQ4T+fTGOfcxeHU8VMw+kwQhVWkbJTy4ynxQyloC1SRnp4i2NwjZ
EW1xFAtZErPXeyem/KGJ2Es4uFyJJ4dtypEKhcVlsnSr2yyLS8VbVXRpJpGCPc/e
eZxK4DYuR8xQPNKXnM9hYdnTVs2QX/gYO9YuNQ2ptBkS8dYGYAj7OViugbam44/L
VtRr40wz9XuKqLzDMLxNw8/Ffpa7a5hEhqJYaHgQxGHGxc5ftm6OywAw85Tz0wBm
oSLPmBaY3gTVzGa+gm/au8WdBqD7bdFLultSr2GtwOMqpdjWglRiUqCcJ9koYH5E
xYY4DBt6Ezr9tqelkOE3u7UI0ATFYO06Ghc6v4q6+nWsMjl1vB8ynFPaTQTurGqa
G6+s+OI0HYetKtuFhnQ2FjVCmcQtvbnZZb9p+TaxD4DsYh52ATdVGROUGzU+dSb9
9h5x5X6Rg6OjQ++Y8t104OnSEGjqJNWbFVZgq/5sj/uuVORN/upAZkjFUv2xbK+Q
QnN3GKs4vQHc08ffqF6TzWXAFQB+Pp3KVVcae0k7/ZMTwCkMm0R1VjwLVkJ82LkP
cxvEPh3GYr11/6RoX7vg
=X9nT
-----END PGP SIGNATURE-----

--Apple-Mail=_8D249D8F-1FEA-46BD-B76B-70131D93C8C5--
