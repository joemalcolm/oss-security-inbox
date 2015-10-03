X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3093" "Saturday" "3" "October" "2015" "02:07:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151003060708.E1F076C0055@smtpvmsrv1.mitre.org>" "71" "[oss-security] Re: Qualys Security Advisory - OpenSMTPD Audit Report" nil nil nil "10" "2015100306:07:08" "[oss-security] Re: Qualys Security Advisory - OpenSMTPD Audit Report" (number mark "        cve-assign@m Oct  3   71/3093  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - OpenSMTPD Audit Report\"\n") "<20151002144933.GA10319@localhost.localdomain>" ("<20151002144933.GA10319@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7355 invoked by uid 550); 3 Oct 2015 06:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7237 invoked from network); 3 Oct 2015 06:07:20 -0000
In-Reply-To: <20151002144933.GA10319@localhost.localdomain>
Message-Id: <20151003060708.E1F076C0055@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  3 Oct 2015 02:07:08 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - OpenSMTPD Audit Report
To: qsa@qualys.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> (Sorry for the "CVE-2015-ABCD" place-holders in the report, but
> OpenSMTPD's developers were ready with the patches before MITRE was
> ready with the CVE-IDs.)

Qualys had previously sent MITRE a specific disclosure date for the
OpenSMTPD Audit Report that was later than 2015-10-02.

> However, the project is pretty much in its infancy (the first
> stable version, 5.3, was released on March 17, 2013), which explains why
> we discovered various vulnerabilities during our security assessment:

Here are our initial comments:

1. Historically, there have been very few, or perhaps no, other
research reports that identified this volume of distinct bugs and
presented the findings as a complex set of interrelationships among
the bugs.

2. Ideally, we would model this in the normal way (e.g., by
identifying primary and resultant weaknesses); however, it is possible
that we will choose a different approach so that something loosely
resembling a CVE mapping will be available sooner (and remain the
final CVE mapping for this one report).

3. With either of those two options, we feel it is unlikely that the
set of CVE IDs would correspond directly to the CVE-2015-ABCD labels
used in the report.

4. We have been studying some parts of the report and have reached a
tentative conclusion that the use-after-free bug is probably the most
important issue (or among the most important issues) for actual
OpenSMTPD users, because of its role in enabling remote code
execution. At present, this issue has a CVE ID; the remainder of the
report does not yet have a CVE mapping, and we will send another
message here when we have chosen a CVE mapping for it.

Specifically, for this finding:

  - In the IMSG_{SMTP,MTA}_SSL_VERIFY case, PROC_LKA does not reset the
    static pointer req_ca_vrfy_{smtp,mta} to NULL after free(), but trusts
    PROC_PONY to always send an IMSG_{SMTP,MTA}_SSL_VERIFY_CERT (which
    re-initializes this static pointer) before sending an
    IMSG_{SMTP,MTA}_SSL_VERIFY{_CHAIN,} (use-after-free

use CVE-2015-7687.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWD2/1AAoJEL54rhJi8gl5pEcQAL18JC5G0nxCznlCxy22odvc
TCDtrrRXlx6oa5JZebFBdndo1vqVLbe1HY9Mld2WEX+6EvhVaa7zVqXnmEdZbBfF
NXeQZF38hCmVc7JU8AbftfF8Q+au9n2gTBM2nlf07j0dNde7vr9pOS5Ri01O9sRI
vTXCF8b0Yb5qrpevnilp0lRs+A7DcJGciXf+gwQC6Os5isKdmI6L7k9w+g21c5n+
JxeeuuGdviHEl7V/HGu/RmtvfH+7RIi+9sHwkVCC0+/CLXa7FiQ2TGyhnNn4tQCQ
Vq55FKPBOdmya9jDOhRKB1i+pBydn6xS1NRHofIZ+DMg/fckEkI8xQOZaiyr1MoO
oPmbGLH+ZSmCBwuBJoG0NZyP+Tqc8lGsJbgjcAwFcPtz68O6p9l+eCg3qG8rNkEb
yFatKC7v5c8I4KnhahqhcCVbJj/H9Yms5btCcx363DptJlOiEhWl/1lSTggvn0m3
QuBexKBSqn6Cvt4p4CkDbua9QHqAZgQ7tkYJBrFw5x4tFZPvsmeM3gu70TdMCDWW
pWV+fViBcivs1N4anlBTRKRvw5c1lK8vDL+mYYrP2+znoRMYlFcN4zVKbt+UHbHH
wHCuT+jUcfSCw6lO2GMZaNpR2dve2GQe+Ghsz0vRwq9pJsyEU4dUnsw2DdjliE7V
VId8hoQ0y/ovTx8yi8p+
=p4wc
-----END PGP SIGNATURE-----
