X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1332" "Wednesday" "5" "October" "2016" "23:28:28" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87pone32pv.fsf@mid.deneb.enyo.de>" "33" "Re: [oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure" nil nil nil "10" "2016100521:28:28" "[oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure" (number mark "U       fw@deneb.eny Oct  5   33/1332  " thread-indent "\"Re: [oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure\"\n") "<8737ke7byg.fsf@mid.deneb.enyo.de>" ("<8737ke7byg.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15870 invoked by uid 550); 5 Oct 2016 21:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15852 invoked from network); 5 Oct 2016 21:28:40 -0000
From: Florian Weimer <fw@deneb.enyo.de>
To: oss-security@lists.openwall.com
References: <8737ke7byg.fsf@mid.deneb.enyo.de>
Date: Wed, 05 Oct 2016 23:28:28 +0200
In-Reply-To: <8737ke7byg.fsf@mid.deneb.enyo.de> (Florian Weimer's message of
	"Sun, 02 Oct 2016 22:06:15 +0200")
Message-ID: <87pone32pv.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] NSPR 4.12, NSS 3.22.1 and PR_GetEnvSecure

* Florian Weimer:

> It seems this was never disclosed properly; there are still a couple
> of hidden Mozilla bugs about this.
>
> The NSS 3.22.1 announcement
>
>   <https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_3.22.1_release_notes>
>
> mentions one:
>
>   bug 1194680: NSS has been changed to use the PR_GetEnvSecure
>     function that was made available in NSPR 4.12
>
> The story behind this is that NSS uses environment variables to
> configure lots of things, some of which refer to file system
> locations.  Others can be degrade the operation of NSS in various
> ways, forcing compatibility modes and so on.
>
> Previously, these environment variables were not ignored SUID
> binaries.  NSPR 4.12 and NSS 3.22.1 introduce a new API,
> PR_GetEnVSecure, to address this.  It's a very thin wrapper around
> glibc's secure_getenv and similar functions on other systems.
>
> Both NSPR and NSS need to be upgraded to address this; even if you run
> s/PR_GetEnvSecure/secure_getenv/ on the NSS sources, some unprotected
> environment variable lookups remain in NSPR.

Debian has released DSA-3687-1 and DSA-3688-1, explicitly mentioning
this as a security issue:

  <https://lists.debian.org/debian-security-announce/2016/msg00268.html>
  <https://lists.debian.org/debian-security-announce/2016/msg00269.html>
