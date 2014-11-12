X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/12/6
Message-ID: <5463541F.1030304@redhat.com>
Date: Wed, 12 Nov 2014 13:35:43 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-request: systemd-resolved DNS cache poisoning
Content-Type: text/plain; charset=utf-8

On 11/12/2014 12:15 PM, Sebastian Krahmer wrote:
> At its simplest, an attacker triggers a query to a domain he controls
> via SMTP or SSH-login. Upon receipt of the question, he can just add
> any answer he wants to have cached to the legit answer he provides
> for the query, e.g. providing two anser RR's: One for the question asked
> and one for a question that has never been asked - even if the DNS server
> is not authoritative for this domain.

BIND 9 is supposed to filter such garbage from upstream answers, but 
there are other resolvers out there which will pass through such answers 
unchanged, so this is very much CVE-worthy.

(This systemd component is optional, I strongly recommend not to ship 
it.  It's not even possible right now to dump the cache contents to 
debug such issues.)

-- 
Florian Weimer / Red Hat Product Security
