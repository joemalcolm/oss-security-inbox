X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/12/10/2
Message-Id: <DEF7ECE9-A4B6-46B2-8485-481FCE9D138D@beckweb.net>
Date: Mon, 10 Dec 2018 01:50:37 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Script sandbox bypass in multiple Jenkins plugins
Content-Type: text/plain; charset=utf-8



> On 29. Oct 2018, at 14:42, Daniel Beck <ml@...kweb.net> wrote:
> 
> SECURITY-1186
> The Groovy Sandbox library used by Script Security Plugin and Pipeline Groovy
> Plugin did not apply sandbox restrictions to finalize methods. This could be
> used to invoke arbitrary constructors and methods, bypassing sandbox
> protection.
> 
> Finalize methods are now prohibited in classes subject to sandbox security.

CVE-2018-1000865 (Script Security Plugin) and CVE-2018-1000866 (Pipeline: Groovy Plugin)

