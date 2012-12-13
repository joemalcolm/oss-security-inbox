X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/12/13/15
Message-ID: <50CA1967.6080903@pre-sense.de>
Date: Thu, 13 Dec 2012 19:07:35 +0100
From: Timo Warns <warns@...-sense.de>
To: oss-security@...ts.openwall.com
Subject: Re: Robust XML validation
Content-Type: text/plain; charset=utf-8

Am 13.12.2012 17:19, schrieb Tim:
> 
>> Validating against trusted schemas/DTDs would not be sufficient in my
>> opinion. For example, such validations are not effective against the
>> billion laughs attack (http://en.wikipedia.org/wiki/Billion_laughs).
> 
> But... isn't the point that you'd never accept a DTD or schema from an
> untrusted source?  That is, never even bother to parse it and
> arguably, reject documents from users that contain them.

What I wanted to say is that validating an XML document against a
trusted schema/DTD may already exhaust resources (e.g,. due to
expansions necessary for a validation).

Regards, Timo


