X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Tuesday" "10" "November" "2020" "15:36:50" "-0800" "Dave Fisher" "wave@apache.org" "<A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>" "62" "[oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" nil nil nil "11" "2020111023:36:50" "[oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" (number mark "U       wave@apache. Nov 10   62/1761  " thread-indent "\"[oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents\"\n") "<A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org>" ("<A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to arbitrary code execution in crafted documents" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22412 invoked by uid 550); 11 Nov 2020 06:38:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5562 invoked from network); 10 Nov 2020 23:37:04 -0000
From: Dave Fisher <wave@apache.org>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_50EFB2F7-503D-4E36-861D-348EA4F3EC32"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Tue, 10 Nov 2020 15:36:50 -0800
References: <A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org>
To: oss-security@lists.openwall.com
In-Reply-To: <A59B8270-B4D2-4ADC-B721-51B5E4741487@apache.org>
Message-Id: <A3E2C6BA-99BC-4A5F-B341-D5DB69CF04BF@apache.org>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [oss-security] [CVE-2020-13958] Apache OpenOffice - Unrestricted actions leads to
 arbitrary code execution in crafted documents

--Apple-Mail=_50EFB2F7-503D-4E36-861D-348EA4F3EC32
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-13958 Unrestricted actions leads to arbitrary code execution in cr=
afted documents

Fixed in Apache OpenOffice 4.1.8

Description

A vulnerability in Apache OpenOffice scripting events allows an attacker to=
 construct=20
documents containing hyperlinks pointing to an executable on the target use=
rs file system.
These hyperlinks can be triggered unconditionally. In fixed versions no int=
ernal protocol=20
may be called from the document event handler and other hyperlinks require =
a control-click.

Severity: Low

There are no known exploits of this vulnerability.
A proof-of-concept demonstration exists.

Vendor: The Apache Software Foundation

Versions Affected

Apache OpenOffice 4.0.0, 4.0.1, 4.1.0, 4.1.1, 4.1.2, 4.1.3, 4.1.4, 4.1.5, 4=
.1.6, and 4.1.7
OpenOffice.org versions may also be affected.

Mitigation

Install Apache OpenOffice 4.1.8 for the latest maintenance and cumulative s=
ecurity fixes.
Use the Apache OpenOffice download page (https://www.openoffice.org/downloa=
d/).

Acknowledgments

The Apache OpenOffice Security Team would like to thank Imre Rad for discov=
ering and
reporting this attack vector.

Further Information

For additional information and assistance, consult the Apache OpenOffice Co=
mmunity Forums
(https://forum.openoffice.org) or make requests to the users@openoffice.apa=
che.org
(mailto:users@openoffice.apache.org) public mailing list.

The latest information on Apache OpenOffice security bulletins can be found=
 at the
Bulletin Archive page (https://www.openoffice.org/security/bulletin.html).
>=20


--Apple-Mail=_50EFB2F7-503D-4E36-861D-348EA4F3EC32--
