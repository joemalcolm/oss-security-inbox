X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/09/2
Message-ID: <52CE82AA.4040702@redhat.com>
Date: Thu, 09 Jan 2014 12:06:18 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: PlRPC Perl module: pre-auth remote code execution, weak crypto
Content-Type: text/plain; charset=utf-8

PlRPC is a Perl module that implements IDL-free RPCs.  It is intended 
for cross-domain applications, but it fails to achieve that goal because 
it uses Storable, which is known to be insecure when deserializing 
(thawing) untrusted data.  User name and password are transmitted using 
Storable, so code execution can happen before authentication.

The cryptographic hook built into PlRPC is limited: there is no MAC, no 
reply protection, and there's just a symmetric group key shared by all 
users.  It's not really PlRPC's fault, considering its age.

https://rt.cpan.org/Public/Bug/Display.html?id=90474
https://bugzilla.redhat.com/show_bug.cgi?id=1030572

PlRPC mainly lives on because it is a dependency of DBD::Proxy, which is 
carried around by the DBI module.

This might warrant two CVE assignments (one for the Storable-based code 
execution), and one for the weak crypto.  This was first reported in 
2013.  The patches that exist just document the issues and are not real 
fixes (for Storable itself, there is only a documentation fix, so this 
has precedent).

-- 
Florian Weimer / Red Hat Product Security Team
