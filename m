Received: (qmail 1794 invoked by uid 550); 20 Apr 2023 11:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30417 invoked from network); 20 Apr 2023 10:57:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1681988238; bh=BwSthGZhiAUHyWODz6i6ihSoLKkNjG49PJGcXtoKUwA=;
	h=Subject:From:To:Date:Content-Type:Mime-Version;
	b=GL+MhpZoME4akJyGdTU7/NGuu8XrQ1xi7fy11g/NiEBwcEI2aO8TGADh+DBfa0aA4
	 AJZA61ritdbh5XHie4Oc60TWPoGr/LPIMPcgds6AWLl8ujXOW1EdGcrGpSQlswvKwe
	 wJm0AlDUzENpFQQ8yRUibt+E6wghxXMIIWBRLEsgGKJuIplPyOsrpIwVbxdWt3JTFD
	 c/pqHXKN2yvsmWDDbivDMPJms3Q/uBHK3Lyd12Fjhfrh3QI1uL/vj50au631076/iI
	 KSkJu6Ugw1JWV1gP0gJpWPqTUppbVzU3XuFt5bIUIcMJrIshyz+402MbaEqK6rkHrP
	 CVFEzD/2GgAwA==
Message-ID: <e5fcafc733c2fca7baf25537eca9837a6950beac.camel@wisec.it>
From: Stefano Di Paola <stefano.dipaola@wisec.it>
To: oss-security@lists.openwall.com
Date: Thu, 20 Apr 2023 12:57:18 +0200
In-Reply-To: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
References: 
	<CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfOwjJoI4z42olCU2lIlIm1u/kLvJLfSHM+IVBFHqs+7SZ/WLJhu/a5Fws9u+krR+vzBdcpyIzDphFgjW+/99f87anxyrdUQIuHGzHXpx+pi0CaAdaaVE
 JUsA5h8YbzjavFRTUUFcsf5En09dSV+BhDvIJ+L3X6h+iVLIXEGjPbRaxnRZyaxDJ+6DSUU5ztGsnWV9d0i84V1RrppeMc3+yo8=
Subject: Re: [oss-security] Checking existence of firewalled web servers in
 Firefox via iframe.onload

Hello George,

from time to time it happens to rediscover techniques issues.
This is one of those times :)

In 2006 there has been a lot of interest around browser based port
scans, in particular to pivot internal networks.

The following links are some of them:

http://web.archive.org/web/20060813034434/http://www.spidynamics.com/assets/documents/JSportscan.pdf

https://www.gnucitizen.org/blog/javascript-port-scanner/

https://www.blackhat.com/presentations/bh-usa-06/BH-US-06-Grossman.pdf


https://www.blackhat.com/presentations/bh-usa-07/Grossman/Whitepaper/bh-usa-07-grossman-WP.pdf

Some of those thecniques have been mitigated, and some it's still
there.

There are surely other resources IIRC, although some of them might have
been deleted, such as the ones on sla.cke.rs which is a real pity..

Cheers!
Stefano

Ps. this email applies to the other Script technique thread/email as
well.

On Tue, 2023-04-18 at 15:59 +0300, Georgi Guninski wrote:
> In short in Firefox 112, it is possible to check existence
> of firewalled web servers. This doesn't work in Chrome and Chromium
> 112
> for me.
> 
> If user A has tcp connection to web server B, then in the
> following html:
> 
> <iframe src="http://B" onload="load()" onerror="alert('error')"
> id="i1" />
> 
> the javascript function load() will get executed if B serves
> valid document to A's browser and will not be executed otherwise.
> 
> This work for both http and https, and for http it is allowed
> B to be IP address. Under some configurations of Apache2,
> it serves http despite having https configured.
> 
> In some sense, this is close to nmap via javascript in a browser.
> 
> Potential privacy implication is when the attacker guess the
> range of firewalled IPs and check them all in a loop.
> 
> For online test:
> https://j.ludost.net/onload1.html
> 
-- 
...oOOo...oOOo....
Stefano Di Paola
CTO/Chief Scientist IMQ Minded Security
Software & Security Engineer

Twitter: https://twitter.com/WisecWisec
Work: https://www.mindedsecurity.com 
..................

