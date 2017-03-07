X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/07/4
Message-ID: <8d300c59-47af-f2ad-2d75-2d38c611491d@gmail.com>
Date: Tue, 7 Mar 2017 12:16:03 +0100
From: Emilio Pozuelo Monfort <pochu27@...il.com>
To: oss-security@...ts.openwall.com, Craig Small <csmall@....com.au>
Subject: Re: CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2
Content-Type: text/plain; charset=utf-8

On 07/03/17 11:44, Craig Small wrote:
> Hello again,
>  Wordpress 4.7.3 fixes 6 security issues.  Summer of Pwnage has reported 2
> here yesterday but here is the list from the wordpress site.
> 
> Cross-site scripting (XSS) via media file metadata. Reported by Chris Andrè
> Dale, Yorick Koster, and Simon P. Briggs.
> 
> Control characters can trick redirect URL validation. Reported by Daniel
> Chatfield.
> 
> Unintended files can be deleted by administrators using the plugin deletion
> functionality. Reported by xuliang.
> 
> Cross-site scripting (XSS) via video URL in YouTube embeds. Reported by
> Marc Montpas.
> 
> Cross-site scripting (XSS) via taxonomy term names. Reported by Delta.
> 
> Cross-site request forgery (CSRF) in Press This leading to excessive use of
> server resources. Reported by Sipke Mellema.
> 
> 
> Reference:
> https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/

Please report these through http://cveform.mitre.org/ to get CVEs assigned, and
follow up here with the CVE identifiers after that's done.

Thanks,
Emilio
