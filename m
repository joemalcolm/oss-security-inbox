Received: (qmail 30298 invoked by uid 550); 16 May 2024 19:56:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21980 invoked from network); 16 May 2024 19:37:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1715888253; bh=f54UUu0yFq737rfCDftX0mLpkXrIAttKiwfiWeY2U3g=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=O6CIAr3n9vc7PFlEmYxNg9b/PMHyauh0tl6Hk8WUjRANXtHHfqH9gkT5JXEVhtpXK
	 0B5x047S72VnBSPqYSbIGwaEuV+d3cLlbCtz0csMvyN6iPL9gAIKXdbBmclGUOdjsZ
	 dwYqBTPoAwnat7rpQoRWuw8sV5cQ85fQ0ImSYAxVACvyYdz59cgZsjgBvOf0zjCYXU
	 iIx0SrBZQN+Ltv0q49YSa6I35adyPaMSpDljIBi+rbBsyQAnEUhToCULp/mHcakDC5
	 IgaRqfGTeGs5O//1tr9B5AunTsFIJTm7G4UacIZ190bf+Hvc3cDiUaUxaRLYxgzMBn
	 dg/ENWOf7yFIw==
Date: Thu, 16 May 2024 22:37:32 +0300
From: Andrea Intilangelo <andrea@intilangelo.it>
To: oss-security@lists.openwall.com
In-Reply-To: <20240430035913.XHeLj%cve-request@mitre.org>
References: <20240430035913.XHeLj%cve-request@mitre.org>
Message-ID: <24FB8424-5C27-487C-ADBD-FB7F5C61B841@intilangelo.it>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Autocrypt: addr=andrea@intilangelo.it; keydata=
 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
X-CMAE-Envelope: MS4xfHG9NF7pE663fjHC4eKHwNK1dFmY9UK0VRCYQlWgI/FL4lon2Me+a8CRaaotCQWpLlp8wbPxR+3kEx39xe2z+aYSeqZk2JHJlDS1rPpS3tVtaUpdinWS
 zeR9Xfj0vFT2Gg6ZjlfaEBVe7pcFL5hnWSq9gCCKatDE+2pa+QVKxsk0TjGgcybm995rvC2GtnE1z4xtoGbtW2COFXOAdtUoe1E=
Subject: [oss-security] =?US-ASCII?Q?CVE-2024-34058=3A_Nethserver_7_=26_8_stored_cr?=
 =?US-ASCII?Q?oss-site_scripting_=28XSS=29_in_WebTop_package?=

CVE-2024-34058: Nethserver 7 & 8 stored cross-site scripting (XSS) in WebTo=
p package

> [Suggested description]
> The WebTop package for NethServer 7 and 8 allows stored XSS (for example,=
 via the Subject field if an e-mail message).
>=20
> ------------------------------------------
>=20
> [Additional Information]
> NethServer module installed as WebTop, produced by Sonicle, is affected b=
y a stored cross-site scripting (XSS) vulnerability due to insufficient inp=
ut sanitization and output escaping which allows an attacker to store a mal=
icious payload as to execute arbitrary web scripts or HTML.
>=20
> If malicious payload code is inserted within the subject field (as an exa=
mple) of an email, it will be executed once the page is loaded through its =
frontend.
>=20
> Keep in extreme consideration and urgency that this vulnerability reside =
in the security-oriented server (and firewalling) distribution called NethS=
erver.
>=20
> ------------------------------------------
>=20
> [Vulnerability Type]
> Cross Site Scripting (XSS)
>=20
> ------------------------------------------
>=20
> [Vendor of Product]
> Nethesis / Sonicle
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> NethServer - 7
> NethServer - 8
>=20
> ------------------------------------------
>=20
> [Affected Component]
> Affected component: its mail/webmail module
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Remote
>=20
> ------------------------------------------
>=20
> [Impact Code execution]
> true
>=20
> ------------------------------------------
>=20
> [Impact Denial of Service]
> true
>=20
> ------------------------------------------
>=20
> [Impact Escalation of Privileges]
> true
>=20
> ------------------------------------------
>=20
> [Impact Information Disclosure]
> true
>=20
> ------------------------------------------
>=20
> [Attack Vectors]
> Malicious payload inserted within (in example) the subject field of an em=
ail will be executed once the page is loaded.
>=20
> ------------------------------------------
>=20
> [Reference]
> https://www.nethserver.org
> https://github.com/NethServer/webtop5
> https://github.com/NethServer/ns8-webtop
>=20
> ------------------------------------------
>=20
> [Discoverer]
> Intilangelo Andrea

Use CVE-2024-34058.

Additional info:

NethServer is an Open Source operating system for the Linux enthusiast, des=
igned for small offices and medium enterprises. From their website: "It's s=
imple, secure and flexible" and "ready to deliver your messages, to protect=
 your network with the built-in firewall, share your files and much more, e=
verything on the same system."

Unauthenticated stored XSS vulnerability due not adequately sanitized input=
 or escaped output for email subject exists in the provided Groupware, a co=
llaboration suite of services accessible via web through any HTML5 browser,=
 smartphone or tablet.
It can be leveraged for a nearly zero-click attack.

CVSS score: tbd* (but "High")
CVSS vector: tbd*
CWE: CWE-79

*Needs to be calculated, taking into consideration the initial partial base=
 string "CVSS:3.1/AV:N/AC:L/PR:N" since the Privileges Required of who send=
 the mail with the payload is none as well as User Interaction (who is rece=
iving the mail, just visualizing it could trigger the payload - like, for e=
xample, to grab session cookie) despite arguable by someone, Scope and C/I/=
A (surely from Low to High) must be contextualized from the perspective of =
the application, what it is used for, contains/impacts and is connected to =
it: indeed, being a sensitive component "through a modern user interface an=
d a single authentication, it allows access to company mail, calendars, con=
tacts, tasks, documents and much more, in a shared and secure platform" (qu=
oting the product description), that means any kind of highly confidential =
information, even connected cloud instance (also outside the private networ=
k) and mobile devices synchronization.

https://www.cve.org/CVERecord?id=3DCVE-2024-34058

Discovered and reported by Andrea Intilangelo


Timeline:

2024-01-03: Vulnerability discovered, kept as private 0day for further veri=
fication
2024-01-16: Request for CVE reservation & Multi-Party vulnerability coordin=
ation and disclosure
2024-04-23: Contacts with vendor for: details, acknowledgments and to coord=
inate the responsible disclosure
2024-04-30: Assigned CVE number: CVE-2024-34058
2024-05-06: Vendor agreed to the proposed responsible disclosure date (May =
17)
2024-05-10: Shared a PoC requested by the vendor showing the vulnerability
2024-05-17: Disclosure
