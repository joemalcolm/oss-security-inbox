X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/29
Message-ID: <273d354c-1963-4b6f-9d73-d8c314a43b23@oracle.com>
Date: Tue, 20 Oct 2026 10:09:26 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Go 1.27.3 and Go 1.26.10 are released for CA certificate removal
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[security] Go 1.27.3 and Go 1.26.10 are released
Date: 	Tue, 20 Oct 2026 02:11:31 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com


Hello gophers,

We have just released Go versions 1.27.3 and 1.26.10, minor point releases.

These releases include 1 security fix following the security policy 
<https://go.dev/doc/security/policy>:

   *

     crypto/x509: mitigation for security concerns with a specific Certificate
     Authority

     We're blocking trust in a small set of intermediate certificates due to
     specific security concerns around their operation.

     Verify will now filter out chains which contain these intermediates,
     preventing them from being returned to the caller.

     We highly recommend immediately upgrading to this release.

     This is CVE-2026-111943 and Go issue https://go.dev/issue/82345
     <https://go.dev/issue/82345>.

View the release notes for more information:
https://go.dev/doc/devel/release#go1.27.3 
<https://go.dev/doc/devel/release#go1.27.3>

You can download binary and source distributions from the Go website:
https://go.dev/dl/ <https://go.dev/dl/>

To compile from source using a Git clone, update to the release with
|git checkout go1.27.3| and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
Carlos and David for the Go team

-- 
You received this message because you are subscribed to the Google Groups 
"golang-announce" group.
To view this discussion visit 
https://groups.google.com/d/msgid/golang-announce/78458b16.EAAACZTU18IAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBq1s3T%40mailjet.com
