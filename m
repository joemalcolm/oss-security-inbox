X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1723" "Wednesday" "1" "July" "2015" "13:53:46" "+0000" "Seaman, Chad" "cseaman@akamai.com" "<000f424f.06fa3cdd38fab2ea@akamai.com>" "77" "Re: [oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3" nil nil nil "7" "2015070113:53:46" "[oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3" (number mark "U       cseaman@akam Jul  1   77/1723  " thread-indent "\"Re: [oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3\"\n") "<5592E886.5090208@hsasec.de>" ("<5592E886.5090208@hsasec.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30016 invoked by uid 550); 1 Jul 2015 13:54:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29998 invoked from network); 1 Jul 2015 13:53:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=akamai.com; s=a1;
	t=1435758827; bh=VqJoUixFBl7Z7OHtxjZ+Dpal1yB3VxjXrAImD9sKDt4=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=YN3jhpQcX+Nmh3wHlxrGXicHj6W6OWOCqNnw9o07hrIlEH91AL32cY3oXmMrsQ2ka
	 Vy0RTZP5csr/hmniXFAH8UqbkcpP9EXhtF88xta03uufiQnkNBR5l6iu2/tHVDW5QM
	 EgWg+uGKZrtZW5N2r6wU1y/DbB6StB06P/T/a+40=
From: "Seaman, Chad" <cseaman@akamai.com>
To: "disclosure@hsasec.de" <disclosure@hsasec.de>, "cve-assign@mitre.org"
	<cve-assign@mitre.org>, "oss-security@lists.openwall.com"
	<oss-security@lists.openwall.com>
Thread-Topic: [oss-security] CVE request: persistent XSS in Wordpress Plugin
 NewStatPress v.1.0.3
Thread-Index: AQHQs9NEEVQzt3CdMUq4m9rf8WFObp3Gow3v
Date: Wed, 1 Jul 2015 13:53:46 +0000
Message-ID: <000f424f.06fa3cdd38fab2ea@akamai.com>
References: <5592E886.5090208@hsasec.de>
In-Reply-To: <5592E886.5090208@hsasec.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
Content-Type: multipart/alternative;
	boundary="_000_000f424f06fa3cdd38fab2eaakamaicom_"
MIME-Version: 1.0
Subject: Re: [oss-security] CVE request: persistent XSS in Wordpress Plugin
 NewStatPress v.1.0.3

--_000_000f424f06fa3cdd38fab2eaakamaicom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Was recently told by mitre that http referer injections don't "count" becau=
se my PoC used the curl referer flag rather that a malicious redirect...


Curious to see what they say here.



- Chad


------ Original message------

From: Responsive Disclosure | HSASec

Date: Wed, Jul 1, 2015 3:55 AM

To: cve-assign@mitre.org;oss-security@lists.openwall.com;

Subject:[oss-security] CVE request: persistent XSS in Wordpress Plugin NewS=
tatPress v.1.0.3


OpenWallInfo
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Created Tuesday 30 June 2015

Dear Sir or Mam,

we want to inform you about a security vulnerability in one of the
plugins provided by you or one member of your company.
Please regard the information below.

Plugin:
NewStatPress (https://wordpress.org/plugins/newstatpress/)

Product-Type:
Wordpress-Plugin

Version:
1.0.3

Vendor:
ice00 (http://newstatpress.altervista.org/?page_id=3D2)

Fixed:
reported: 2015-06-30
fixed in version 1.04, 2015-06-30

Changelog:
https://wordpress.org/plugins/newstatpress/changelog/


Type of vulnerability:
persistent XSS via HTTP-Header (Referer) (no authentication required)

Description:
An unsifficent user input validation (of HTTP-Header: Referer) results
in a persistent XSS in the wordpress admin-panel. So an attacker may be
able to access any cookies, session tokens or other sensitive
information retained by the browser and used with that site.

Proof of Concept:
yes (internal)

Researchers:
* Michael Kapfer (Michael.Kapfer@hs-augsburg.de)

Best regards,
HSASec-Team (https://www.HSASec.de)


--_000_000f424f06fa3cdd38fab2eaakamaicom_--
