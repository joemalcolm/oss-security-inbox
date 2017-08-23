X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/23/5
Message-Id: <7363538D-EADE-4A90-8C22-9ECE268983DA@beckweb.net>
Date: Thu, 24 Aug 2017 01:49:17 +0200
From: Daniel Beck <ml@...kweb.net>
To: oss-security@...ts.openwall.com
Subject: Re: Jenkins plugins -- multiple vulnerabilities
Content-Type: text/plain; charset=utf-8


> On 11. Jul 2017, at 13:52, Daniel Beck <ml@...kweb.net> wrote:
> 
> JENKINS-21436
> The SSH Plugin stores credentials which allow jobs to access remote servers 
> via the SSH protocol. User passwords and passphrases for encrypted SSH keys 
> are stored in plaintext in a configuration file. SSH Plugin now integrates 
> with the Credentials Plugin and existing credentials are migrated.

This has been assigned CVE-2017-1000245
