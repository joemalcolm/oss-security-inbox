X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/02/13/2
Message-ID: <52FC49E8.4060105@redhat.com>
Date: Thu, 13 Feb 2014 15:28:24 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
CC: cve-assign@...re.org
Subject: Re: information on "ImageMagick PSD Images Processing RLE Decoding Buffer Overflow Vulnerability"
Content-Type: text/plain; charset=utf-8

On 02/13/2014 03:11 AM, cve-assign@...re.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>> that's still 4 bytes too many
>
> Use CVE-2014-1947.

Thanks to everyone who explained this to me off-list.

Peter Hutterer of Red Hat has added some information about all of this 
to https://bugzilla.redhat.com/show_bug.cgi?id=1064098#c4

To summarize, what I posted here originally is 
http://trac.imagemagick.org/changeset/13736 and has been assigned 
CVE-2014-1947

The Secunia advisory (http://secunia.com/advisories/56844/) is referring 
to this commit:

http://trac.imagemagick.org/changeset/14801

Which as far as I know does not have a CVE yet.

Cheers,

--
Murray McAllister / Red Hat Security Response Team
