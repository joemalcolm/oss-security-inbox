X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/01/6
Message-ID: <9517e4490c27cf8693fadb3316c44c9f@tribut.de>
Date: Sun, 01 Feb 2015 14:42:20 +0100
From: Felix Eckhofer <felix@...but.de>
To: oss-security@...ts.openwall.com
Subject: Re: RCE, XSS and HTTP header injection in fli4l web interface
Content-Type: text/plain; charset=utf-8

Hey.

Am 01.02.2015 04:05, schrieb cve-assign@...re.org:
> For the "execute arbitrary programs" issues, can you provide specific
> names for the vulnerability types, or any equivalent information?
> Examples of vulnerability types can be found on the
> https://www.owasp.org/index.php/Category:Vulnerability and
> http://cwe.mitre.org web sites.

Thank you for your response and sorry for the inaccurate description. In 
both cases user-supplied strings are used in an expression which is 
later passed to /bin/sh's eval. So I would classify both as Command 
Injection (https://www.owasp.org/index.php/Command_Injection).


Best Regards
felix
