X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/04/10
Message-ID: <878ux4hwvo.fsf@windlord.stanford.edu>
Date: Mon, 04 Nov 2013 09:58:35 -0800
From: Russ Allbery <eagle@...ie.org>
To: oss-security@...ts.openwall.com
Subject: Re: openssl default ciphers
Content-Type: text/plain; charset=utf-8

Hanno Böck <hanno@...eck.de> writes:

> SSLCipherSuite HIGH:!MEDIUM:!LOW:!aNULL@...ENGTH
> should be fine. There are basically near zero browsers out there that
> should have any problems with that. Even dinosaurs like IE6 can work
> with this, you don't need "medium" ciphers as long as you don't want to
> make a site accessible to browser museums.

Just to data-point on compatibility, we've been using:

SSLProtocol all -SSLv2
SSLCipherSuite HIGH:MEDIUM:!ADH:!SSLv2:@STRENGTH

(not quite as strong as what you mention above; we should look at
changing) for all of Stanford's SSL web sites for years and years now, and
have never had a single complaint.

-- 
Russ Allbery (eagle@...ie.org)              <http://www.eyrie.org/~eagle/>
