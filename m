X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2971" "Monday" "28" "March" "2016" "13:12:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160328171244.795EE6C063B@smtpvmsrv1.mitre.org>" "68" "[oss-security] Re: CVE request - XStream: XXE vulnerability" nil nil nil "3" "2016032817:12:44" "[oss-security] Re: CVE request - XStream: XXE vulnerability" (number mark "U       cve-assign@m Mar 28   68/2971  " thread-indent "\"[oss-security] Re: CVE request - XStream: XXE vulnerability\"\n") "<nd3k26$2sr$1@ger.gmane.org>" ("<nd3k26$2sr$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20370 invoked by uid 550); 28 Mar 2016 17:12:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20352 invoked from network); 28 Mar 2016 17:12:56 -0000
From: cve-assign@mitre.org
To: joerg.schaible@gmx.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <nd3k26$2sr$1@ger.gmane.org>
Message-Id: <20160328171244.795EE6C063B@smtpvmsrv1.mitre.org>
Date: Mon, 28 Mar 2016 13:12:44 -0400 (EDT)
Subject: [oss-security] Re: CVE request - XStream: XXE vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> XStream (x-stream.github.io) ... An attacker could therefore provide
> manipulated XML as input to access data on the file system
> 
> Since XStream 1.4.9 all parsers are configured to ignore external entities
> by default as far as such behavior is configurable:
> http://x-stream.github.io/changes.html#1.4.9

Use CVE-2016-3674 for the XStream vulnerability that was resolved by
this change.


> Applications using XOM or explicitly BEA's old StAX reference parser are
> still vulnerable, we found no way to deactivate processing of external
> entities for those two.

These seem to be present in one or more Linux distributions and thus
might have widespread deployment, e.g.,

  http://pkgs.fedoraproject.org/cgit/rpms/xom.git
  http://pkgs.fedoraproject.org/cgit/rpms/bea-stax.git

Within the context of XStream itself, we do not feel that the
XomDriver or BEAStaxDriver behavior should have a CVE stating that
version 1.4.9 is vulnerable, because
http://x-stream.github.io/faq.html#Security_XXEVulnerability
explicitly documents the behavior, and XStream users could reasonably
be expected to look at that FAQ document before choosing XomDriver or
BEAStaxDriver for use with untrusted XML documents.

However, that FAQ document might suggest that the underlying problems
are upstream implementation errors, e.g., the design of these pieces
of code would be reasonably expected to support ignoring all external
entities but did not achieve that:

  https://java.net/projects/xom/sources/svn/content/trunk/src/nu/xom/tests/BuilderTest.java
  private static class NonEntityResolvingFilter extends XMLFilterImpl

  https://repository.jboss.org/nexus/content/groups/public-jboss/stax/stax-src/1.2.0/stax-src-1.2.0.distribution-zip
  src/com/bea/xml/stream/ConfigurationContextBase.java

Does anyone want to request two CVE IDs for these two products? (We
think that the StAX issue is more general than CVE-2013-7315.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW+WWhAAoJEL54rhJi8gl5ASUP/iZGOTiraYf0lVA5xgjcfbN6
7kqf5Oqlv/FH4Vrj5qe2irFrQ0bZuZbMoLtSUFWq/bBTPcxa8ITd/sJB6f9N5/tw
P/EseQRf/HfpzSSKPjuOUNIMYoJ7ik2UAdeClndCiHZtHqvp4and+pXk3yM3J4fV
BLXcecUhQf0qZuC4RIglK5VEe62hMiEMHSRglt7B1rNJimpBbID0ObNOUqKjjEQA
sIwbAl0Mm9Vebennxb7uJB5gCEbZKhL9APJay5NzBp3fPB0a2upHSNZ6gouCBha1
3CBqVdFQxYYEyQ0iB3A7kKTR7f5d8CtO8aBGwolkoH2dcRxpvMfdFV3EsxvDxiiZ
p6IM+VFa/SgxOeaDhlVZeqtlGvzgTMNSdi9l34352RQuniloGBq/GQvwh54PaaQy
netM0hUmKgR+O+WMC2gV+WFgTQYnUP94zx0D6P3Eq25S04RlQQIkK5aYP7iVsKRw
lxZGgjnTUG5MgFSec+bjKqCDcSTCg/BQ2rKGWsAvKV0tjePauQ9OHohumNvSVaxo
/ju9jZKNsKXBZPB6g1Tk8JG9WkifpdarfxAtlkBmbpJaqYbfIn6jlbYGE4ZD1ovl
Q2TQ0GRfMW2c8vKhYUB/FDT7hEcRjAe6gH9SXGMV9q94zPsgF72EHOqG+srT6+tQ
aHE6v/IZoJHc0cPvyGzy
=g/fx
-----END PGP SIGNATURE-----
