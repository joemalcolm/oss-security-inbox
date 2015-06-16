X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1060" "Tuesday" "16" "June" "2015" "15:50:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150616195019.3F005132E1D2@smtpvbsrv1.mitre.org>" "31" "[oss-security] Re: Cross-Site Request Forgery in Spina CMS" nil nil nil "6" "2015061619:50:19" "[oss-security] Re: Cross-Site Request Forgery in Spina CMS" (number mark "U       cve-assign@m Jun 16   31/1060  " thread-indent "\"[oss-security] Re: Cross-Site Request Forgery in Spina CMS\"\n") "<AD3411DA-2668-4BF5-AD45-798DC686D806@matasano.com>" ("<AD3411DA-2668-4BF5-AD45-798DC686D806@matasano.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15628 invoked by uid 550); 16 Jun 2015 19:50:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15593 invoked from network); 16 Jun 2015 19:50:47 -0000
From: cve-assign@mitre.org
To: tomek@matasano.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <AD3411DA-2668-4BF5-AD45-798DC686D806@matasano.com>
Message-Id: <20150616195019.3F005132E1D2@smtpvbsrv1.mitre.org>
Date: Tue, 16 Jun 2015 15:50:19 -0400 (EDT)
Subject: [oss-security] Re: Cross-Site Request Forgery in Spina CMS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> CSRF vulnerability across the entire engine
> which includes administrative functionality such as creating users, changing
> passwords, and media management
> 
> https://github.com/denkGroot/Spina/commit/bfe44f289e336f80b6593032679300c493735e75

> app/controllers/spina/application_controller.rb
> 
> + protect_from_forgery

Use CVE-2015-4619.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgH1wAAoJEKllVAevmvmsmXEIAJrugn4wE5hSp5pLPpk0cWaM
Vn0s3Yp+Nw6bHntxDNBTjfjyfwGfaXPGjcllHKtH6DdRgAjaHKOd6vBFWxW/sG2C
oo9uSvA16Jaae7PdSP1jcWcFqNxIQelMmsVhVMAtwt/hhkSBZ/znBzLdoaM6euMI
6JLHcTbi+XGsWOSlTTQmLYY4iwOOBLsCuTR4M2A0SqG6cx7LzdhmTCTpjOA9N8Gs
0h+Rrv5P5E5WOc+NgRLfMo9Z5uNDp3BvPVA9kULsh44i43mj6SIk7Z8b5PzFhL1+
DTPb5HvCmp9cimdsIssPxWA/yvupaUsAJ4FWAz+/zWTBT51yCbAh6opk+XWoa1s=
=I+/h
-----END PGP SIGNATURE-----
