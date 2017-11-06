X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/06/7
Message-ID: <a7e0e324-5126-4410-724e-af5576432d67@orlitzky.com>
Date: Mon, 6 Nov 2017 07:32:46 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: Fw: Security risk of vim swap files
Content-Type: text/plain; charset=utf-8

On 11/06/2017 02:08 AM, Christian Brabandt wrote:
> 
> On So, 05 Nov 2017, Jakub Wilk wrote:
> 
>> Couldn't vim create swapfiles with mode 0600 and be done with it?
> 
> Because then users of the group could not recover the file anymore, 
> although they are able to read the original file.
> 

It also breaks (default) ACLs, but maybe if we do that in enough
important applications, the next generation of ACLs won't try to use the
group bits as a permissions mask.
