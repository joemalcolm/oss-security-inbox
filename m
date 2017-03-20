X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/20/1
Message-ID: <20170320055348.lsc6oxie7gu4leo5@lorien.valinor.li>
Date: Mon, 20 Mar 2017 06:53:48 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: git: CVE-2014-9938: does not sanitize branch names in $PS1 allowing command execution
Content-Type: text/plain; charset=utf-8

Hi

MITRE has assigned CVE-2014-9938 for an older issue in the contrib
script in git, where git-prompt.sh did not sanitize branch name in
$PS1 exploitable for command execution by a malicious repository.

The upstream fix is

https://github.com/git/git/commit/8976500cbbb13270398d3b3e07a17b8cc7bff43f

Regards,
Salvatore
