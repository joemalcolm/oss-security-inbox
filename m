X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/22/13
Message-ID: <alpine.BSF.2.11.1412230500200.87591@aneurin.horsfall.org>
Date: Tue, 23 Dec 2014 05:18:20 +1100 (EST)
From: Dave Horsfall <dave@...sfall.org>
To: oss-security@...ts.openwall.com
Subject: Re: can we talk about secure time?
Content-Type: text/plain; charset=utf-8

On Mon, 22 Dec 2014, Hanno Böck wrote:

> I perfectly understand that some people need more accuracy than tlsdate 
> can give. However it's probably rare, right? I don't see any reason why 
> average consumer hardware (Desktop, smartphone etc.) would have any 
> problem with the 1-2 sec max inaccuracy of tlsdate.

Speaking as one who had to feed and water an OpenLDAP system that was 
replicating all over the world, I really cared whether *this* event 
happened before or after *that* event, but yeah, most users don't need to 
do that.

You haven't lived until you've debugged a replication problem; "Boss, are 
both these systems running NTP?"  "Yes, Dave."  "Right, in that case, I've 
found another obscure bug in OpenLDAP."  When you've got more than one 
person updating the same object at around the same time, it was really 
helpful, in an LDAP sense, to know the precise order of events, as the 
whole concept of replication depends upon it.

I suspect that we humans, the geekier we become, the more precise are our 
perceived needs; just listen to any time announcement over the telephone: 
"At the third stroke, it will be six o'clock precisely" (with the precise 
bit happening at the start of the third beep, and I was fanatic over 
that).

-- 
Dave Horsfall DTM (VK2KFU)  "Bliss is a MacBook with a FreeBSD server."
http://www.horsfall.org/spam.html (and check the home page whilst you're there)
