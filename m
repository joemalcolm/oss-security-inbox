X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1680" "Monday" "23" "March" "2015" "13:44:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE requests for shibboleth service provider" nil nil nil "3" "2015032317:44:04" "[oss-security] Re: CVE requests for shibboleth service provider" (number mark "        cve-assign@m Mar 23   42/1680  " thread-indent "\"[oss-security] Re: CVE requests for shibboleth service provider\"\n") "<20150323105339.GA20750@balvenie>" ("<20150323105339.GA20750@balvenie>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8128 invoked by uid 550); 23 Mar 2015 17:44:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8110 invoked from network); 23 Mar 2015 17:44:16 -0000
In-Reply-To: <20150323105339.GA20750@balvenie>
Message-Id: <20150323174404.BDA286C0023@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, team@security.debian.org
Date: Mon, 23 Mar 2015 13:44:04 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests for shibboleth service provider
To: corsac@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://shibboleth.net/community/advisories/secadv_20150319.txt
> 
> The SP software contains an authenticated denial of service
> vulnerability that results in a crash on certain kinds of malformed
> SAML messages. The vulnerability is only triggered when special
> conditions are met and after a message or assertion signature
> has been verified, so exploitation requires a message produced
> under a trusted key
 
> Recommendations
> -----------------
> Update to V2.5.4 or later of the Shibboleth SP software

Use CVE-2015-2684 for this Shibboleth Service Provider issue. The
vendor's secadv_20150319.txt advisory is about this CVE in addition to
unrelated CVEs in two third-party components (Xerces-C and OpenSSL).

> https://issues.shibboleth.net/jira/issues/?filter=10771

We currently don't know whether CVE-2015-2684 is one of the above 24
issues on the "Shibboleth 2 SP 2.5.4 Fixes" list, or whether the
CVE-2015-2684 fix is separate from all of those.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVEFBmAAoJEKllVAevmvmsbCEH/2jB7DlY+p1/vTpCMHe3iTXk
HvSfm4Qkq89GmXiChEbGyWY0p4FztSIvX679SWZbgNjnr0RcGQ4HziP9AjV2+7n/
2FxfN/sATcIyTZpQM78S2g9oP5AUFV3WlO1U5cod+SzNYWAVgfcb3hyAHqp7ftzf
epWlNlLyW2ZPnhYJHXVF67kUGcLWab0PZINKtH1Z5x7ANIFzXkDNCiZqI2EFOFtg
m03OKQHCzZUZghOvbWeSic/VfXUwuG5yxzEwixce/euBdUF0b9miwnJy6fEfOwbH
7eRlTBaMRpf9+IVk9UVo+1JCtIUzq3Ww+9ULP1qhxX93FilRATD68DNWvILb2Mg=
=lPwL
-----END PGP SIGNATURE-----
