X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2172" "Thursday" "17" "December" "2015" "15:27:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151217202749.7B90E42E1E7@smtpvbsrv1.mitre.org>" "59" "[oss-security] Re: Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0" nil nil nil "12" "2015121720:27:49" "[oss-security] Re: Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0" (number mark "U       cve-assign@m Dec 17   59/2172  " thread-indent "\"[oss-security] Re: Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0\"\n") "<CAMWaY3PThcg=yKHWYDJ7hQW15rqRX=C9yK6MS7mNCWhUT016Ag@mail.gmail.com>" ("<CAMWaY3PThcg=yKHWYDJ7hQW15rqRX=C9yK6MS7mNCWhUT016Ag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32154 invoked by uid 550); 17 Dec 2015 20:28:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32022 invoked from network); 17 Dec 2015 20:28:01 -0000
From: cve-assign@mitre.org
To: disclose@cybersecurityworks.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAMWaY3PThcg=yKHWYDJ7hQW15rqRX=C9yK6MS7mNCWhUT016Ag@mail.gmail.com>
Message-Id: <20151217202749.7B90E42E1E7@smtpvbsrv1.mitre.org>
Date: Thu, 17 Dec 2015 15:27:49 -0500 (EST)
Subject: [oss-security] Re: Cross site scripting vulnerability (XSS) in SilverStripe CMS & Framework v3.2.0

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.silverstripe.org/download/security-releases/ss-2015-026
> 
> A high level XSS risk has been identified in the encoding of
> validation messages in certain FormField classes.
> 
> Certain fields such as the NumericField and DropdownField have been
> identified, but any form field which presents any invalid content as a
> part of its validation response will be at risk.


> Proof of Concept URL:
> =================
> http://localhost/Silverstripe/admin/security/EditForm/field/Members/item/new/ItemEditForm/
> 
> Parameter
> ==============
> Locale
> FailedLoginCount

Use CVE-2015-8606.

Our understanding is that "Locale" and "FailedLoginCount" are a
different way of describing the same problem, relative to
"NumericField" and "DropdownField" above. For example, part of the
source code is:

                $fields->replaceField('Locale', new DropdownField (
                        'Locale',
                        $this->fieldLabel('Locale'),

In other words, mentioning "Locale" and "FailedLoginCount" does not
mean that the number of known independent attack vectors is being
increased from 2 to 4.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWcxpfAAoJEL54rhJi8gl5LgUP/iMvdIPTWjqz9ayl2/IuJ417
FoTsKYwgEowSc/i1/RdHFTwZ3qUwbZqVIPd9Zp2M90qs39CH6cdhsJN0icpmfMzm
LcXcV6dTYcA2QAeDVNJv/pGAUSS/S4YjLuvjcZ59ZJLpKjom7yAA/BQMpM1R60ea
ScIE3pNH02l/1Bl7eh31kBkoZcuHXN8dJdVwCnRyk384yu5JEWu2PoBF9hXkOdgq
sS1YJvtlpHmC79/oZuTH2ilQ5LoivXoCF8BAxpxqOU9TsD6hHRfq84YSd4wYfsge
TDRlxNInl/X3YSMZW4mUrMWrM1CXOpZWe5K+E/zNu84Dq0Co4rucNkKY2GXDFJnq
OI/dYnuZ3aatiC+YG00RFEh9XlLUTdIGwhhi4+OCbC3RmAxEsakaN6QbEmHTDLmL
XLzI4SRoV6w1yb8QpBdQwrAcNpGNlTZL+89vJGlH8c5VgGTc9nUoM5HYzcNCjvT0
gOUJIdX9TEV+D3dxBq1YwuHe+oLxdjLSxp9cGH/hxP6Fb+SHK9pXMf0RRaKo/0tZ
5OQ/CgR/ABWYanh2dMmLRpSFDEzoWyj+8XscswlYZUK4HtkgyltjKaVIcxGef7gY
q147GFV+Cw5wgGlxMDcJAe+oNQ5yPdV2AWI4l1tPWXVcDVSSC96pfuB4eDET2tpI
LJI6N6mT6Ln4AtAnbWKL
=v/y/
-----END PGP SIGNATURE-----
