X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/24/12
Message-ID: <1327441032.27688.66.camel@new-desktop>
Date: Tue, 24 Jan 2012 22:37:12 +0100
From: Nicolas Grégoire <nicolas.gregoire@...rri.fr>
To: oss-security@...ts.openwall.com
Subject: Re: XSLT issue in MoinMoin
Content-Type: text/plain; charset=utf-8


> How exactly does the attacker get access to the filesystem using XSLT?

An attacker can read files using either the doc-as-string() extension
function or a XML External Entity attack. Write access is done via the
<exsl:document> extension element.

Depending of your policy, you may want to affect one, two or three CVE
(one by vector ? by impact ? by type of bug ?).

> Does everything using 4Suite have this issue?

Yes. Unless an obscure and undocumented option allows to deactivate this
behavior :-(

My XSLT Wiki has some additional details, including PoC code :
- http://goo.gl/3A7h2 (4Suite)
- http://goo.gl/GI5NK (MoinMoin)

Regards,
Nicolas

