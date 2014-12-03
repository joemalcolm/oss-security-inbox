X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/03/3
Message-ID: <be8944dc58f20fb6a038aeac7ca87a93@mail.gmail.com>
Date: Wed, 3 Dec 2014 11:11:24 +0100
From: Nicolas Gaudin <nicolas.gaudin@...yconseil.fr>
To: oss-security@...ts.openwall.com
Subject: RE: CVE-2014-8104 - Critical OpenVPN DoS Vulnerability
Content-Type: text/plain; charset=utf-8

Hi,
Is this vulnerability really 'critical' if we consider that a malicious user
needs to be authenticated to crash the gateway?
I understand that the vulnerability is exploitable if a client is
compromised (certificate stolen).
In such a case (client compromised), the risk is greater as confidentiality
is breached.

Nicolas

-----Message d'origine-----
De : David White [mailto:dmwhite823@...il.com]
Envoyé : mercredi 3 décembre 2014 10:24
À : oss-security@...ts.openwall.com
Objet : [oss-security] CVE-2014-8104 - Critical OpenVPN DoS Vulnerability

I saw an email come through the pfSense list yesterday, but haven't seen
anything about it discussed here. So I'm bringing it to this list's
attention.

https://community.openvpn.net/openvpn/wiki/SecurityAnnouncement-97597e732b

[ As a side note, I mistakenly thought the OP on the pfSense list mistakenly
posted his link to a forum post on OpenVPN that was written in 2010, when in
fact, that user had joined in 2010 but posted to the pfSense forum
recently - https://forums.openvpn.net/topic17625.html ]


--
David
