X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/07/1
Message-ID: <20160707114924.GA15061@eldamar.local>
Date: Thu, 7 Jul 2016 13:49:24 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: perl5-porters@...l.org
Subject: CVE Request: perl: XSLoader: could load shared library from incorrect location
Content-Type: text/plain; charset=utf-8

Hi,

Jakub Wilk reported in [1] that the Perl module List::MoreUtils tried
to load code from a subdirectory of the current working directory
despite explicitly removing the current directory from @INC, which
could lead to the execution of arbitrary code if cwd is unstrusted, as
demonstrated in the bugreport.

While analyzing the issue[2], it turns out that the issue is actually in
XSLoader, which uses caller() information to locate the .so file to
load. This can be incorrect if XSLoader::load() is called in a string
eval. The fix commited upstream is [3].

@MITRE: Could you please assign a CVE for this issue in XSLoader? Do
you think List::MoreUtils needs a separate CVE as well, despite the
underlying issue lying in XSLoader[4]?

Regards,
Salvatore

 [1] https://bugs.debian.org/829138
 [2] https://rt.cpan.org/Ticket/Display.html?id=115808
 [3] http://perl5.git.perl.org/perl.git/commitdiff/08e3451d7
 [4] https://bugs.debian.org/829578
