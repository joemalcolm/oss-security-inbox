X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/22/3
Message-ID: <20141022195357.GA7071@eldamar.local>
Date: Wed, 22 Oct 2014 21:53:57 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@...re.org>
Subject: CVE Request: smarty: secure mode bypass
Content-Type: text/plain; charset=utf-8

Hi

Can a CVE be assigned for the following smarty issue: upstream
released new version 3.1.21:

> Smarty 3.1.21 Released Oct 18, 2014
> Smarty 3.1.21 minor bug fixes and improvements. Also following up a
> security bug fix where <script language="php"> tags still worked in
> secure mode. To note, this only affects users using Smarty in secure
> mode and exposing templates to untrusted third parties.

Changelog: https://code.google.com/p/smarty-php/source/browse/trunk/distribution/change_log.txt?r=4902

Debian Bugreport: https://bugs.debian.org/765920

Regards,
Salvatore
