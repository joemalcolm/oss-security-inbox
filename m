X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/03/17/4
Message-Id: <201003171423.23403.ludwig.nussel@suse.de>
Date: Wed, 17 Mar 2010 14:23:22 +0100
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Cc: Brian Stafford <brian@...fford.uklinux.net>, libesmtp@...fford.uklinux.net, security@...ntu.com, Pawel Salek <pawsa@...ochem.kth.se>, jskarvad@...hat.com
Subject: Re: CVE Request: libesmtp does not check NULL bytes in commonName
Content-Type: text/plain; charset=utf-8

Brian Stafford wrote:
> Since both the original and patched versions of match_component() 
> implement wildcards rather less liberally than RFC 2818 implies, I 
> decided to move towards the approach in the I-D.  match_component() now 
> accepts either a string or a single wildcard '*'.  Matched characters 
> are validated against the set of valid domain name component characters 
> , that is, *.example.org will not match %.example.org, nor for that 
> matter will the pattern %.example.org.  Question: should underline '_' 
> be in the set of valid characters?

AFAIK underlines are not allowed in DNS. I'm sure someone knows the
RFC for that too :-)

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\   
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)
