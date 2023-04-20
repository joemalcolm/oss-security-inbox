Received: (qmail 22470 invoked by uid 550); 20 Apr 2023 13:13:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18300 invoked from network); 20 Apr 2023 13:06:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1681995956; bh=u5OfYbKVrpK406dkMTVMyX/ZzyWaDgy3GjZoPQd56pA=;
	h=Subject:From:To:Date:Content-Type:Mime-Version;
	b=apNx3w6FvjkS5jwPhp4vyeKOghdgvMa2Rd2trA2KNFEkAu/lWYkhlE2EdtYLbg7wR
	 RpuvfO9udwh5g2tieco7SJ9k7TJck15+8Zo8GTkt2r7aYpPk3fXETalt9VVF82aK+z
	 H2yYTZ5hkA7c2lEzzeJ70ntvJpktTvsqttN9bDizRiRiFtJIKCSQrGzMmfXu8PntjD
	 gDp9Vv+Tw5UrOWmqzv1U9xqMcbUmIzMfInAmWDxYZ9cMxTJPXxc73dtyvV2YdE9CYo
	 q+Soif2l0odpTyOt6PdavEZTj/hvLaYUo3c3h51B/JzEN6fDN9Xh9L9QSkCzKU35LN
	 1CDbn2PS+rd9Q==
Message-ID: <12d8c448b765754601b3af0ea7242a01655eb232.camel@wisec.it>
From: Stefano Di Paola <stefano.dipaola@wisec.it>
To: oss-security@lists.openwall.com
Date: Thu, 20 Apr 2023 15:05:55 +0200
In-Reply-To: <f7586453-d83d-26a6-7d9a-e7a54009209f@innerheight.com>
References: 
	<CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
	 <e5fcafc733c2fca7baf25537eca9837a6950beac.camel@wisec.it>
	 <f7586453-d83d-26a6-7d9a-e7a54009209f@innerheight.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfMlQXtLMKNzxX/Z8s+Jc6CQ1iwNrlK389w2BfoPF207ovKDnlP+zaf9hufka9bS8X/nQ0viXahW5jbzanDp6SOGZHb+oyUXg0fwp7kVybF275ENDDL5Y
 egIQb/iT9Q5rnZDEFv7QiuX/sWQoUrcno6Jo1z8oaReCwe/eU+PrvqO1QP9eiOBfRyaya+8JnZpAu7G0G9EdsicOZpMM0nYkImM=
Subject: Re: [oss-security] Checking existence of firewalled web servers in
 Firefox via iframe.onload

Absolutely agreed!

What I actually see now as the most effective mitigation is the Chrome
decision to implement preflight on private network access:

https://developer.chrome.com/blog/private-network-access-preflight/

I hope to see that implemented by Firefox and other browsers as well.

As a side note, 3 years ago I released a proof of concept browser
extension that alerts the user when a website tries to perform port
scans or DNS Rebinding attacks.
https://github.com/mindedsecurity/behave


https://blog.mindedsecurity.com/2020/06/behave-monitoring-browser-extension-for.html

About the rediscovering I know it happens and I've no problem about it,
but I wish researchers to spend some time checking for previous work
and give credits ;).

Cheers,
Stefano

On Thu, 2023-04-20 at 13:15 +0200, Jan Klopper wrote:
> Hi
> 
> The topic is still relevant.
> 
> Combining this attack with webservices that might be present behind
> a 
> NAT network, eg IOT or appliances can result in various serious
> issues.
> 
> There are loads of devices that do not require csrf, or even POST
> for 
> requests that update settings or even firmware.
> 
> Performing GET requests on those internal ip's, even though no
> content 
> will be returned is still plenty dangerous.
> Knowing which ip to perform these attacks on, can be found by looking
> at 
> the timing of various ready/error calls.
> 
> However, it begs the question, is it the browser that is in the
> wrong 
> here, or those appliances/devices. And, should the browser be
> guarding 
> users against flaws in those appliances? And where then does the
> scope 
> of the browsers security features stop?
> 
> I'm also expecting heaps of these issues to re-discovered when
> looking 
> at the whole websockets domain.
> 
> With regards
> Jan Klopper
> 
> 
> On 20-04-2023 12:57, Stefano Di Paola wrote:
> > Hello George,
> > 
> > from time to time it happens to rediscover techniques issues.
> > This is one of those times :)
> > 
> > In 2006 there has been a lot of interest around browser based port
> > scans, in particular to pivot internal networks.
> > 
> > The following links are some of them:
> > 
> > 
http://web.archive.org/web/20060813034434/http://www.spidynamics.com/assets/documents/JSportscan.pdf
> > 
> > https://www.gnucitizen.org/blog/javascript-port-scanner/
> > 
> > 
https://www.blackhat.com/presentations/bh-usa-06/BH-US-06-Grossman.pdf
> > 
> > 
> > 
https://www.blackhat.com/presentations/bh-usa-07/Grossman/Whitepaper/bh-usa-07-grossman-WP.pdf
> > 
> > Some of those thecniques have been mitigated, and some it's still
> > there.
> > 
> > There are surely other resources IIRC, although some of them might
> > have
> > been deleted, such as the ones on sla.cke.rs which is a real pity..
> > 
> > Cheers!
> > Stefano
> > 
> > Ps. this email applies to the other Script technique thread/email
> > as
> > well.
> > 
> > On Tue, 2023-04-18 at 15:59 +0300, Georgi Guninski wrote:
> > > In short in Firefox 112, it is possible to check existence
> > > of firewalled web servers. This doesn't work in Chrome and
> > > Chromium
> > > 112
> > > for me.
> > > 
> > > If user A has tcp connection to web server B, then in the
> > > following html:
> > > 
> > > <iframe src="http://B" onload="load()" onerror="alert('error')"
> > > id="i1" />
> > > 
> > > the javascript function load() will get executed if B serves
> > > valid document to A's browser and will not be executed otherwise.
> > > 
> > > This work for both http and https, and for http it is allowed
> > > B to be IP address. Under some configurations of Apache2,
> > > it serves http despite having https configured.
> > > 
> > > In some sense, this is close to nmap via javascript in a browser.
> > > 
> > > Potential privacy implication is when the attacker guess the
> > > range of firewalled IPs and check them all in a loop.
> > > 
> > > For online test:
> > > https://j.ludost.net/onload1.html
> > > 
-- 
...oOOo...oOOo....
Stefano Di Paola
Software & Security Engineer

Owasp Italy R&D Director

Web: www.wisec.it
Twitter: http://twitter.com/WisecWisec
..................

