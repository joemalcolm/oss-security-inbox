X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/18/6
Message-ID: <Pine.GSO.4.64.1002181148000.1263@faron.mitre.org>
Date: Thu, 18 Feb 2010 11:53:30 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: kernel information leak via userspace USB interface
Content-Type: text/plain; charset=utf-8


On Thu, 18 Feb 2010, Marcus Meissner wrote:

> Are we considering "giving desktop local users unintended rights"
> a security issue or not?

from a CVE purist perspective, if the security model is that "users with 
physical access should not be able to read portions of kernel memory" then 
a violation of that is technically a vulnerability, even if the attack 
complexity is high - assuming that there isn't already some easier way 
that the attacker can get the same results through legitimate means. 
Being able to crash the system by plugging in a USB device (for example) 
is about as easy as the defenestration exploit - i.e. throwing the 
computer out the window - so in that case I wouldn't view it as a 
vulnerability.  If someone with physical access can read the kernel memory 
that's being leaked, if don't already own the box, that seems a little 
more like a vulnerability to me.

- Steve
