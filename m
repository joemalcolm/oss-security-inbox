X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/05/04/2
Message-ID: <c3576b53-b89b-d706-002d-467acf373a9c@thirddimension.net>
Date: Wed, 3 May 2023 17:43:28 -0400
From: Reid Sutherland <reid@...rddimension.net>
To: oss-security@...ts.openwall.com
Subject: Re: Perl's HTTP::Tiny has insecure TLS cert default, affecting CPAN.pm and other modules
Content-Type: text/plain; charset=utf-8

Moritz Bechler wrote:
> Hi,
> 
>>
>> A default is not a vulnerability.  There are reasons why defaults 
>> cannot be changed in libraries once they are stable.  This is also why 
>> documentation exists.
>>
>> Revoke these CVEs, it's a stain on the process.
> 
> 
> while one may criticize that CVEs have been assigned both for the 
> insecure default and (some of the) insecure usages, at least one of 
> these is a legitimate case, in terms of CVEs likely the latter. And when 
> it comes to defaming projects, at least in my book, choosing, keeping 
> and defending bad defaults speaks to much more than a CVE being assigned.
> 


Performing outside queries is not a reasonable default in terms of 
security.  It's up to the developer if they wish to open up the user to 
that risk.  Libraries cannot shift defaults on a whim, this is why they 
have documentation.

