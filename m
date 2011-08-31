X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/31/1
Message-ID: <Pine.GSO.4.64.1108311823180.26123@faron.mitre.org>
Date: Wed, 31 Aug 2011 18:35:45 -0400 (EDT)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: heap overflow in tcptrack < 1.4.2
Content-Type: text/plain; charset=utf-8


I'm wondering if this should have received a CVE.

https://bugs.gentoo.org/show_bug.cgi?id=377917 quotes upstream:

    "This fixes a heap overflow in the parsing of the command line...
     this may have security repercussions if
     tcptrack is configured as a handler for other applications that can
     pass user-supplied command line input to tcptrack."

The "attack" is through a command line argument.  While it's listed as a 
sniffer, the above text suggests that tcptrack might not be 
setuid/privileged, since the only given scenario is "as a handler for 
other applications."  Unless this is a typical/known scenario, this seems 
like just another unprivileged application, in which case the control over 
a command line argument would not directly cross privilege boundaries, 
thus falling into the realm of "bug" and not "vulnerability."

- Steve


On Tue, 9 Aug 2011, Josh Bressers wrote:

>
>
> ----- Original Message -----
>> A heap overflow in the parsing of tcptrack's command line was found.
>> The details are pretty sparse, but here are some references:
>>
>> http://www.rhythm.cx/~steve/devel/tcptrack/#news
>> https://bugs.gentoo.org/show_bug.cgi?id=377917
>> https://bugzilla.redhat.com/show_bug.cgi?id=729096
>>
>
> Please use CVE-2011-2903.
>
> Thanks.
>
> --
>    JB
>
