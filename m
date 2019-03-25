X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/03/25/2
Message-Id: <52014961-3705-48F7-9EAB-0E3E612BC655@beckweb.net>
Date: Mon, 25 Mar 2019 17:17:44 +0100
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Multiple vulnerabilities in Jenkins plugins
Content-Type: text/plain; charset=utf-8



> On 25. Mar 2019, at 16:09, Daniel Beck <ml@...kweb.net> wrote:
> 
> SECURITY-976
> Notification Plugin Plugin did not perform permission checks on a method 
> implementing form validation. This allowed users with Overall/Read access 
> to Jenkins to connect to an attacker-specified URL using attacker-specified 
> credentials IDs obtained through another method, capturing credentials 
> stored in Jenkins.
> 
> Additionally, this form validation method did not require POST requests, 
> resulting in a cross-site request forgery vulnerability.

Correction: This is about Slack Notification Plugin.
