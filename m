X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2492" "Wednesday" "4" "May" "2016" "12:08:35" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5729CA23.7050707@redhat.com>" "64" "[oss-security] A few Hesiod issues" "^Date:" nil nil "5" "2016050410:08:35" "[oss-security] A few Hesiod issues" (number mark "        fweimer@redh May  4   64/2492  " thread-indent "\"[oss-security] A few Hesiod issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3191 invoked by uid 550); 4 May 2016 10:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3170 invoked from network); 4 May 2016 10:08:48 -0000
Message-ID: <5729CA23.7050707@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 04 May 2016 10:08:37 +0000 (UTC)
Date: Wed, 4 May 2016 12:08:35 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] A few Hesiod issues
To: oss-security@lists.openwall.com

We rediscovered a few Hesiod client issues, some of which have been 
fixed for a long time in various forks of the Hesiod client.  We did not 
assign CVE IDs because they are mostly ordinary bugs (no trust boundary 
is crossed etc.).

(a) Hard-coded default athena.mit.edu

   <https://bugzilla.redhat.com/show_bug.cgi?id=1332493>
   <https://github.com/achernya/hesiod/pull/10>

If the configuration file cannot be opened, the hesiod library will 
default to use athena.mit.edu:

#define DEF_RHS ".athena.mit.edu"
…
   /* Try to open the configuration file. */
   fp = fopen(filename, "r");
   if (!fp)
     {
       /* Use compiled in default domain names. */
       ctx->lhs = malloc(strlen(DEF_LHS) + 1);
       ctx->rhs = malloc(strlen(DEF_RHS) + 1);

This means that an attacker who can control the athena.mit.edu zone or 
one of its parent zones can supply fake Hesiod data in certain cases. 
(This would allow injection of fake root accounts, for example.)

If a Hesiod deployment uses DNSSEC with a trusted, validating recursive 
resolver to secure Hesiod data, this issue could result in retrieval of 
non-DNSSEC-signed Hesiod data (athena.mit.edu is currently unsigned).

glibc did not use a default for RHS since 2000, presumably as part of an 
update to BIND 8.2.3-T5B.  Current NetBSD sources lack a default as well.

(b) Weak AT_SECURE check

   <https://bugzilla.redhat.com/show_bug.cgi?id=1332508>
   <https://github.com/achernya/hesiod/pull/9>

hesiod checks the current EUID against the UID (and EGID against GID) in 
a few places to protect overriding certain configuration values with 
environment variables:

       configname = ((getuid() == geteuid()) && (getgid() == getegid())) 
? getenv("HESIOD_CONFIG") : NULL;

This is problematic if the process has elected to become full root, or 
otherwise made UID == EUID without dropping all privileges.  It does not 
catch SELinux transitions, either.  In such cases, local attackers who 
can set the HESIOD_CONFIG or HES_DOMAIN environment variables and run an 
affected binary with an AT_SECURE transition might be able to elevate 
their privileges.

glibc has always used secure_getenv for a long time (except for a brief 
period in 1997).  Current NetBSD source use an equivalent.

(c) A heap-based buffer overflow in TXT record parsing

  <https://sourceware.org/bugzilla/show_bug.cgi?id=20031>
  <https://github.com/achernya/hesiod/issues/11>

Hesiod treats DNS as trusted, so this is not a vulnerability.

Florian
