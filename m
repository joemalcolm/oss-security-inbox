X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/07/12/5
Message-Id: <20130712154757.44A2F600AC@smtp.hushmail.com>
Date: Fri, 12 Jul 2013 15:47:57 +0000
From: "mancha" <mancha1@...h.com>
To: oss-security@...ts.openwall.com, solar@...nwall.com
Subject: Re: CVE request: Cyrus-sasl NULL ptr. dereference
Content-Type: text/plain; charset=utf-8

On Fri, 12 Jul 2013 15:35:22 +0000 "Solar Designer" wrote:
>Does this really crash the entire daemon process rather than
>just one of its children (where a new one would be spawned for
>another request)?
>
>I think this needs to be clarified, and the answer will affect 
>whether
>we have a security issue (CVE-worthy) or not.
>
>Alexander

That is a good question. The short answer is there isn't a
re-spawn of crashed processes. The longer answer is cyrus-sasl's
saslauthd defaults to starting up 5 round-robin listening
threads (configurable via -n switch).

Under a default scenario, authentication would continue to be
available until the 5th NULL ptr. dereference.

--mancha

