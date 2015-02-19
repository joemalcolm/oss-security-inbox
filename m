X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/19/7
Message-ID: <54E62534.5060109@enovance.com>
Date: Thu, 19 Feb 2015 13:02:28 -0500
From: Tristan Cacqueray <tristan.cacqueray@...vance.com>
To: cve-assign@...re.org
CC: oss-security@...ts.openwall.com
Subject: Re: CVE request for vulnerability in OpenStack Glance
Content-Type: text/plain; charset=utf-8

On 02/19/2015 12:44 PM, cve-assign@...re.org wrote:
>> Title: Glance import task leaks image in backend
> 
> Is this about two separate findings, one in 2014 and one in 2015, that
> were ultimately fixed at the same time in Glance:
> 
>   https://review.openstack.org/#/c/122427/
>   Sep 18, 2014 ... an exception is raised and is not handled ...
>   the uploaded image file stays in a storage and clogs it
> 
>   https://review.openstack.org/#/c/156553
>   Feb 17, 2015 ... Import task does not update the location
>   of the image ... Image data remains in backend for
>   deleted image
> 
> ? If so, then it should have two CVE IDs.
> 
> 

That is correct, the former issue was indeed reported in 2014 here:
https://launchpad.net/bugs/1371118

Thanks,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team 


Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
