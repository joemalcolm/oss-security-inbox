X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/24/20
Message-ID: <56CE1991.2030906@redhat.com>
Date: Wed, 24 Feb 2016 13:58:57 -0700
From: Eric Blake <eblake@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: bash-completion: dequote command injection
Content-Type: text/plain; charset=utf-8

On 02/24/2016 12:08 PM, Fernando Muñoz wrote:
> Marcelo Echeverria and Fernando Muñoz discovered that the dequote
> function included in bash-completion allows to execute arbitrary
> commands since it uses the eval function to call printf and perform
> the actual dequoting. bash-completion is included on Debian, Ubuntu
> OpenSuse [1] and probably other distros.

But what is the privilege escalation?  This is no different than
incorrectly using 'eval' in a shell script - you may have buggy code,
and have an easy-to-trigger bug, but if you can't escalate privileges,
how it is a CVE?

-- 
Eric Blake   eblake redhat com    +1-919-301-3266
Libvirt virtualization library http://libvirt.org


Download attachment "signature.asc" of type "application/pgp-signature" (605 bytes)
