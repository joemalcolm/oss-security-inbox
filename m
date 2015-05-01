X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5501" "Friday" "1" "May" "2015" "11:39:45" "+0200" "Peter van Dijk" "peter.van.dijk@powerdns.com" "<3CAC50C1-98F4-461A-8AA9-BFFA65497CC3@powerdns.com>" "134" "[oss-security] Re: [Pdns-announce] PowerDNS Security Advisory 2015-01" nil nil nil "5" "2015050109:39:45" "[oss-security] Re: [Pdns-announce] PowerDNS Security Advisory 2015-01" (number mark "        peter.van.di May  1  134/5501  " thread-indent "\"[oss-security] Re: [Pdns-announce] PowerDNS Security Advisory 2015-01\"\n") "<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>" ("<AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13967 invoked by uid 550); 1 May 2015 09:40:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13840 invoked from network); 1 May 2015 09:40:04 -0000
Message-ID: <3CAC50C1-98F4-461A-8AA9-BFFA65497CC3@powerdns.com>
In-Reply-To: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
References: <AA393026-8E41-4892-9900-2074DCBF314D@powerdns.com>
MIME-Version: 1.0
Content-Type: multipart/signed;
 boundary="=_MailMate_EE6E6941-8D22-4C76-950F-67275A5A366D_=";
 micalg=pgp-sha1; protocol="application/pgp-signature"
X-Mailer: MailMate (1.9.1r5084)
Date: Fri, 01 May 2015 11:39:45 +0200
From: "Peter van Dijk" <peter.van.dijk@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Pdns-announce] PowerDNS Security Advisory 2015-01
To: pdns-dev@mailman.powerdns.com,
 "pdns-users Users" <pdns-users@mailman.powerdns.com>,
 pdns-announce@mailman.powerdns.com, oss-security@lists.openwall.com

--=_MailMate_EE6E6941-8D22-4C76-950F-67275A5A366D_=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi everybody,

Last week, we released Security Advisory 2015-01 (https://doc.powerdns.com/=
md/security/powerdns-advisory-2015-01/), with text suggesting that only spe=
cific platforms were seriously affected. We must now report that this was i=
ncorrect: all platforms are impacted. The advisory has been updated to that=
 effect.

Furthermore, by popular demand, we have released Authoritative Server 3.3.2=
, an update to version 3.3.1 which includes DNSSEC improvements and of cour=
se a patch for the security issue. Please see http://blog.powerdns.com/2015=
/05/01/important-update-for-security-advisory-2015-01/ for links.

Kind regards,
--=20
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

On 23 Apr 2015, at 13:05, Peter van Dijk wrote:

> Hi everybody,
>
> Please be aware of PowerDNS Security Advisory 2015-01
> (http://doc.powerdns.com/md/security/powerdns-advisory-2015-01/), which y=
ou
> can also find below. The good news is that as far as we have seen, only
> specific builds for RHEL5 are affected, but just to be sure we are doing
> full releases of all recent versions of our products.
>
> Packages and distribution tar balls of Recursor 3.6.3, Recursor 3.7.2 and=
 Auth
> 3.4.4 are available in the usual places, and release announcements will b=
e sent
> out right after this email.
>
> If you prefer a minimal patch, please go to
> https://downloads.powerdns.com/patches/2015-01/ and see README.txt there.
>
> If you have problems upgrading, please either contact us on our mailing l=
ists,
> or privately via powerdns.support@powerdns.com (should you wish to make u=
se of
> our SLA-backed support program).
>
> We want to thank Aki Tuomi for finding this issue, and really digging int=
o it.
> We also want to thank Kees Monshouwer for assisting in debugging and fixi=
ng
> the offending code. Finally we want to thank Kai Storbeck for putting an
> earlier, broken version of the patch into production and being understand=
ing
> about the names that broke because of it.
>
>
> PowerDNS Security Advisory 2015-01: Label decompression bug can cause cra=
shes
> on specific platforms
>
>   * CVE: CVE-2015-1868
>   * Date: 23rd of April 2015
>   * Credit: Aki Tuomi
>   * Affects: PowerDNS Recursor versions 3.5 and up; Authoritative
>     Server 3.2 and up
>   * Not affected: Recursor 3.6.3; Recursor 3.7.2; Auth 3.4.4
>   * Severity: High
>   * Impact: Degraded service
>   * Exploit: This problem can be triggered by sending queries for
>     specifically configured domains
>   * Risk of system compromise: No
>   * Solution: Upgrade to any of the non-affected versions
>   * Workaround: Run your Recursor under a supervisor. Exposure can be
>     limited by configuring the allow-from setting so only trusted
>     users can query your nameserver.
>
> A bug was discovered in our label decompression code, making it
> possible for names to refer to themselves, thus causing a loop during
> decompression. This loop is capped at a 1000 iterations by a failsafe,
> making the issue harmless on most platforms.
>
> However, on specific platforms (so far, we are only aware of this
> happening on RHEL5/CentOS5), the recursion involved in these 1000 steps
> causes memory corruption leading to a quick crash, presumably because
> the default stack is too small.
>
> We recommend that all users upgrade to a corrected version if at all
> possible. Alternatively, if you want to apply a minimal fix to your own
> tree, please find patches here: https://downloads.powerdns.com/patches/20=
15-01/
>
> These should be trivial to backport to older versions by hand.
>
> As for workarounds, only clients in allow-from are able to trigger the
> degraded service, so this should be limited to your userbase; further,
> we recommend running your critical services under supervision such as
> systemd, supervisord, daemontools, etc.
>
> We want to thank Aki Tuomi for noticing this in production, and then
> digging until he got to the absolute bottom of what at the time
> appeared to be a random and spurious failure.
>
> _______________________________________________
> Pdns-announce mailing list
> Pdns-announce@mailman.powerdns.com
> http://mailman.powerdns.com/mailman/listinfo/pdns-announce

--=_MailMate_EE6E6941-8D22-4C76-950F-67275A5A366D_=
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - http://gpgtools.org

iQIcBAEBAgAGBQJVQ0nhAAoJENz1E/p+7Rnz260P/RWjgVT7QkrPPMWHvhgtiOcN
odPH0xKLo+5ts1w07JA4R0l4hjqUqSC+u6vqc/nPWOOR0iIbAJQy6WSgXBl1+rl+
HqV7OJ2jmD9fyZRhN60UWgBZTP6laij9TalvOLHjA/vipSlwN+U2isGswNJS6AFL
14MJUEcTp4JN38u4FTOzeV52Qx2330zLBQrLtQgjKwLOEej0/ToBy0aOy9MEis/5
Ic4CcGePcIpWxElnSLUBcxaGsFHyu2XZcY68mr16uVosbCceokMTo7JX8BK3KF3V
xgDii/yZFEaKEZqPiY5gN9/ZoKoH1ohx6zTrjGtmBojJiB47Zf/sv6eFGpo7iHf1
ePxa8yVz5vUCZ8s0D2pf+7QAkta7UOoiAaq/2O2OAGM18IheCeKLINd/W08Mcsx+
bIPgV3mp8R3CZ2IC2ycMLJh/GeICVH8Dd457MKvy1HBhBfuGnykkuczn5tSWxFps
3JW2yQQdspNAlrr/pRFED+MC2/kxt0+ZJJha2BAW1q6H8SAhvpKsJq49tDCN+fa+
oBMloAk2+ijKLCyv6kCkvlta+TUJhjt1LEHZ/T+K7eaEmsAxsCfb+zRsccJfwXaY
QNY+wZVG+7AyU//j2hO7uwB7jM28AhfU5ox5zA0gIaVEkkZvCct44VHjJVf7L3g0
wijQtJ/F4kh6ZUATh18T
=K2wq
-----END PGP SIGNATURE-----

--=_MailMate_EE6E6941-8D22-4C76-950F-67275A5A366D_=--
