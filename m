X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/02/28/4
Message-Id: <F31655CA-6673-4B16-8FB7-C2AF8E7579D1@beckweb.net>
Date: Wed, 28 Feb 2018 23:18:37 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Multiple vulnerabilities in Jenkins
Content-Type: text/plain; charset=utf-8


> On 14. Feb 2018, at 16:35, Daniel Beck <ml@...kweb.net> wrote:
> 
> SECURITY-506
> The form validation for the proxy configuration form did not check the 
> permission of the user accessing it, allowing anyone with Overall/Read 
> access to Jenkins to cause Jenkins to send a GET request to a specified 
> URL, optionally with a specified proxy configuration.
> 
> If that request’s HTTP response code indicates success, the form validation 
> is returning a generic success message, otherwise the HTTP status code is 
> returned. It was not possible to reuse an existing proxy configuration to 
> send those requests; that configuration had to be provided by the attacker.

CVE-2018-1000102

> SECURITY-717
> Jenkins did not take into account case-insensitive file systems when 
> preventing access to plugin resource files that should not be accessible. 
> This allowed users with Overall/Read permission to download plugin resource 
> files in META-INF and WEB-INF directories, such as the plugins' JAR files, 
> which could contain hardcoded secrets.

CVE-2018-1000103

