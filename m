X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10491" "Wednesday" "12" "December" "2018" "17:32:43" "+0100" "Solar Designer" "solar@openwall.com" "<20181212163242.GA12693@openwall.com>" "273" "Re: [oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" "^Cc:" nil nil "12" "2018121216:32:43" "[oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)" (number mark "        solar@openwa Dec 12  273/10491 " thread-indent "\"Re: [oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)\"\n") "<CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>" ("<CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5379 invoked by uid 550); 12 Dec 2018 16:34:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3912 invoked from network); 12 Dec 2018 16:33:04 -0000
Message-ID: <20181212163242.GA12693@openwall.com>
References: <CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+NXwpT9J40mJe_=h-R==qJBc=9PA+-80b8p4gdaJ=uy_JhMJg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Dec 2018 17:32:43 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: mini-httpd (<= v1.30) is affected by a response discrepancy information exposure (CWE-204)
To: Salva Peir?? <speirofr@gmail.com>

--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 12, 2018 at 04:27:02PM +0100, Salva Peir?? wrote:
> The mini-httpd daemon (version <= v1.30) shipped in Debian/Ubuntu from [1]
> is affected by a response discrepancy information exposure (CWE-204) that
> enables an attacker to remotely enumerate valid htpasswd usernames (RFC
> 7617).
> 
> A more detailed advisory can be found at:
> https://speirofr.appspot.com/files/advisory/SPADV-2018-01.md
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=916190

The advisory SPADV-2018-01.md is in fact significantly more detailed
than what you posted, so I've attached it to this message for archival.

> Is there a CVE for this? If not, could one be assigned, please?

oss-security is no longer a place to request CVE IDs.  See:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#cve-requests

"Previously, one could request CVE IDs for issues in Open Source
software from oss-security.  This is no longer the case.  Instead,
please start by posting about the (to be made) public issue to
oss-security (without a CVE ID), request a CVE ID from MITRE directly,
and finally "reply" to your own posting when you also have the CVE ID to
add.  With the described approach you would only approach MITRE after
the issue is already public, but if you choose to do things differently
and contact MITRE about an issue that is not yet public, then please do
not disclose to them more than the absolute minimum needed for them to
assign a CVE ID."

You've already posted in here (great!) so all that's left is for you to
request a CVE ID from MITRE and to post that CVE ID here as a "reply".

However, I question the vulnerability finding or at least its
completeness, so you might want to hold off on requesting a CVE ID for
it.  Please see below:

> +++ b/mini_httpd.c
> @@ -2404,7 +2404,8 @@ auth_check( char* dirname )
>          /* Yes. */
>          (void) fclose( fp );
>          /* So is the password right? */
> -        if ( strcmp( crypt( authpass, cryp ), cryp ) == 0 )
> +        char *cryptpass = crypt( authpass, cryp );
> +        if ((cryptpass != NULL) && (strcmp(cryptpass, cryp ) == 0) )

While it's important to check the return from crypt(3) for non-NULL
before using the string(*), if this were the issue triggering the
vulnerability you describe that fix would be incomplete.

(*) A general issue that was discussed in here some years ago, with
opinions varying on whether crypt(3) should follow current POSIX and
return NULL or retain historical behavior of never returning NULL not to
upset programs written before the POSIX change.  In the end, many libc's
went with the NULL returns on error.  Programs need to be fixed to
support NULL returns from crypt(3) anyhow.

In the advisory, you wrote:

> When the basic authentication string "user:pass" is composed only of the user
> part without the password part, ie. "user:", then the authpass at
> mini_httpd.c:2372 becomes the empty string "".
> When the empty string is passed to the crypt(3) this returns the NULL string.
> The NULL string is later dereferenced by the strcmp(3) call at mini_httpd.c:2407
> causing an invalid memory access that triggers the SIGSEGV, and kills the forked process.

This isn't a complete explanation.  crypt(3) isn't supposed to return
NULL when authpass is the empty string "".  Empty string is a valid
password, and should result in a valid password hash string, as long as
the salt or setting string provided in the second argument to crypt(3)
is valid.

I can see how you'd trigger a NULL return from crypt(3) by having an
empty or otherwise invalid password hash string in the .htpasswd file.
So you'd be able to distinguish usernames corresponding to those lines
with invalid hashes from usernames corresponding to lines with valid
hashes.  A crash on an invalid .htpasswd line is indeed a robustness
bug, but I'm not sure it constitutes a vulnerability.

This is different from being able to distinguish existing vs.
non-existent usernames.  (Besides, when fixing an issue of the kind you
thought this one was, we should also remember that timing leaks will
remain either way.  I don't suggest to leave worse-than-timing leaks
intact, but rather not to provide wrong expectations and a false sense
of security once we do.  And a next step may be to reduce timing leaks
by performing dummy password hashing for non-existent usernames, again
being careful to point out that smaller timing leaks will remain.)

If the behavior is in fact exactly as you observed it, then maybe your
system's libc or libcrypt is vulnerable in that it's incapable of
processing an empty password.  I almost wonder if someone thought it'd
be OK to implement e.g. some security standardization compliance by
having crypt(3) fail to process an empty password and return NULL.  If
so, that would be an interesting case for us to discuss.

Please investigate this further.

Thanks,

Alexander

--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="SPADV-2018-01.md"
Content-Transfer-Encoding: 8bit

Advisory:               mini-httpd (<= v1.30) affected by a response discrepancy information exposure (CWE-204)
Advisory ID:            SPADV2018-01
Revision:               0.1
Release Date:           2018/12/05
Last Modified:          2018/12/05
Date Reported:          2018/12/05
Author:                 Salva Peiró (speiro.fr at gmail.com)
Affected Software:      mini_httpd-1.30
Remotely Exploitable:   Yes
Locally Exploitable:    Yes
Vendor URL:             http://www.acme.com/software/mini_httpd/
Vendor Status:          Vendor has been notified

Vulnerability details
=====================

The mini-httpd daemon (version <= v1.30) contains a NULL pointer dereference
that leads to a response discrepancy information exposure (CWE-204)
that allows a remote attacker to enumerate valid authentication users (RFC 7617).

Note that the mini-httpd and the thttpd share the code that performs the
HTTP basic authentication (RFC 7617), therefore, the CWE-204 weakness detailed below
also affects thttpd (version <= v2.29) http://www.acme.com/software/thttpd/.

Technical Details
=================

Consider the scenario below where mini-httpd protects the access to the /auth/
directory by an .htpasswd that defines that the username "user" has access to
the /auth/ directory:

~~~
user@box $ curl http://user:@127.0.0.1:8000/auth/
curl: (52) Empty reply from server
user@box $
~~~

When the basic authentication string "user:pass" is composed only of the user
part without the password part, ie. "user:", then the authpass at
mini_httpd.c:2372 becomes the empty string "".
When the empty string is passed to the crypt(3) this returns the NULL string.
The NULL string is later dereferenced by the strcmp(3) call at mini_httpd.c:2407
causing an invalid memory access that triggers the SIGSEGV, and kills the forked process.

The NULL pointer dereference is a bug in itself that causes the forked mini_httpd
child serving the connection to unexpectedly terminate with a SIGSEGV, however,
an interesting takeaway is that from a remote attacker point of view,
this leads to a different response of the mini_httpd daemon that can be
exploited by a remote attacker to perform valid username enumeration.
For example, given a string in form "user:" two things can happen:

- The "user" is not defined in the .htpasswd file:
    then mini_httpd answers with HTTP "401 Unauthorized".
- The "user" is defined in the .htpasswd:
    then mini_httpd segfaults and terminates the connection.

This difference in the behaviour enables to enumerate valid users defined in htpasswd.

The problem is the missing check of the encrypted password returned by crypt(3)
that does not consider the case where crypt(3) returns a NULL pointer.
The fix consists in checking the crypt(3) return value for NULL:

~~~
2406         /* So is the password right? */
2407         if (strcmp(crypt( authpass, cryp ), cryp ) == 0)
2408         {
2409         /* Ok! */
~~~

After performing the above corrections the mini-httpd daemon
properly handles the case where the authentication is in the "user:" form, and,
does not enable a remote attacker to enumerate valid authentication usernames (CWE-204).

Solution
========

Apply the proposed fixes, contained in the patch below to mini-httpd/thttpd.

~~~
>From 62eff179b34cd1435017438ab99ed1906b6cc6c8 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Salva=20Peir=C3=B3?= <speirofr@gmail.com>
Date: Wed, 5 Dec 2018 18:46:46 +0100
Subject: [PATCH] Fix NULL pointer dereference at mini_httpd.c:2407 (SPADV-2018-01)

---
 mini_httpd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mini_httpd.c b/mini_httpd.c
index 03d0cdd..77f030f 100644
--- a/mini_httpd.c
+++ b/mini_httpd.c
@@ -2404,7 +2404,8 @@ auth_check( char* dirname )
 	    /* Yes. */
 	    (void) fclose( fp );
 	    /* So is the password right? */
-	    if ( strcmp( crypt( authpass, cryp ), cryp ) == 0 )
+        char *cryptpass = crypt( authpass, cryp );
+	    if ((cryptpass != NULL) && (strcmp(cryptpass, cryp ) == 0) )
 		{
 		/* Ok! */
 		remoteuser = line;
--
2.11.0

~~~

Affected versions
=================

All versions of mini-httpd below <= v1.30.
    http://www.acme.com/software/mini_httpd/

All versions of thttpd below <= v2.29.
    http://www.acme.com/software/thttpd/

Debian: https://packages.debian.org/stretch/mini-httpd
mini-httpd version 1.23-1.2

Ubuntu: https://launchpad.net/ubuntu/+source/mini-httpd
mini-httpd version 1.23-1.2

History
=======

  2018/12/05 - Author notified of the security issue [1].
  2018/12/05 - Debian maintainer notified [1].


Credits
=======

  Vulnerability found and advisory written by Salva Peiró.


References
==========

 [1] https://speirofr.appspot.com/files/advisory/SPADV-2018-01.md


Changes
=======

  Revision 0.1 - Initial draft release to the vendor


Disclaimer
==========

The information within this advisory may change without notice. Use
of this information constitutes acceptance for use in an AS IS
condition. There are no warranties, implied or express, with regard
to this information. In no event shall the author be liable for any
direct or indirect damages whatsoever arising out of or in connection
with the use or spread of this information. Any use of this
information is at the user's own risk.


Copyright 2018 Salva Peiró. All rights reserved.


--NzB8fVQJ5HfG6fxh--
