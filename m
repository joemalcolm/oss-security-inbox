X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/11
Message-ID: <19d123bc-8603-4d6a-b57a-b0f94d9bb6cf@cpansec.org>
Date: Fri, 30 Oct 2026 12:35:42 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: cve-announce@...urity.metacpan.org, oss-security@...ts.openwall.com
Subject: CVE-2026-118988: CallBackery versions before 0.60.1 for Perl let unauthenticated clients read the POD of any file via path traversal in the /doc route
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-118988                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118988

   Distribution:  CallBackery
       Versions:  before 0.60.1
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.60.1 for Perl let unauthenticated clients
read the POD of any file via path traversal in the /doc route

Description
-----------
CallBackery versions before 0.60.1 for Perl let unauthenticated clients
read the POD of any file via path traversal in the /doc route.

Every CallBackery application mounts its documentation plugin at /doc,
ahead of any session check. The route passes the requested name to
Pod::Simple::Search->find without validation. find splits the name on
"::" and joins the parts into a file path, so a name such as
"..::..::..::etc::motd" escapes @INC.

Any file the server process can read is reachable. Only POD is
rendered, but a file with a POD directive and no "=cut" is POD to the
end of the file.

Problem types
-------------
- CWE-22 Improper Limitation of a Pathname to a Restricted Directory
   ('Path Traversal')

Solutions
---------
Upgrade to CallBackery 0.60.1 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.60.1/source/CHANGES
https://github.com/oetiker/callbackery/commit/128efe804fde41bba9633fe00dc94e30f12087fb.patch

