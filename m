X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2749" "Friday" "2" "October" "2015" "16:16:14" "+0200" "Gilles Chehade" "gilles@poolp.org" "<20151002141614.GA15335@poolp.org>" "82" "[oss-security] Re: CVE requests: Critical vulnerabilities in OpenSMTPD" nil nil nil "10" "2015100214:16:14" "[oss-security] Re: CVE requests: Critical vulnerabilities in OpenSMTPD" (number mark "        gilles@poolp Oct  2   82/2749  " thread-indent "\"[oss-security] Re: CVE requests: Critical vulnerabilities in OpenSMTPD\"\n") "<CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>" ("<CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9364 invoked by uid 550); 2 Oct 2015 14:16:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9343 invoked from network); 2 Oct 2015 14:16:25 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=poolp.org; h=date:from:to
	:cc:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=opensmtpd; bh=JW+UrZIYWRlnzhjb226P+OZnHvc=; b=NP
	JNg6jYs/fR8Vt1LI23gc5YD0GHNKWPVSq2rX03qgJR/dQIgq5JrQ0oYVrJYaSrva
	4vKW1fp4c2yuxMjxjwzvl21CeLG9ikTaepFunAhrrpd/ahpSFJ9TNBfbS48c4twO
	Woxu6MKHQ71jo3otU3vi8Ne6CwfxMdEx9oateXX4Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=poolp.org; h=date:from:to:cc
	:subject:message-id:references:mime-version:content-type
	:in-reply-to; q=dns; s=opensmtpd; b=QJ9QYlJmGP4A1EmtnpP0wXtB0d3/
	+xswuQEOAbOCg9AodYEV0m0evW6ArglhI7LAQ7w/GpG/OmQ3IEzN/+6aU/bBGDIp
	yVlJh92tX6Tt3lqE6aJ6wtXtCoILd5USgDDQk8qhsd8zhA/LE1EOS4Fp63tYi6k2
	u0eQCrsiUbKv1dM=
Message-ID: <20151002141614.GA15335@poolp.org>
References: <CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>
X-Operating-System: OpenBSD poolp.org 5.7 GENERIC.MP
X-Flattr: poolp
X-Twitter: poolpOrg
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security <oss-security@lists.openwall.com>,
	misc <misc@opensmtpd.org>
Date: Fri, 2 Oct 2015 16:16:14 +0200
From: Gilles Chehade <gilles@poolp.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests: Critical vulnerabilities in OpenSMTPD
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Fri, Oct 02, 2015 at 03:22:01PM +0200, Jason A. Donenfeld wrote:
> Hello,
>

Hello,


> See this excerpt from the release notes below. Quite a few bugs. Looks
> like at least one of them might invalidate the openbsd.org claim,
> "Only two remote holes in the default install, in a heck of a long
> time!".
>

Not really, no.

By default, the MTA operates in local-mode only accepting connections on
the loopback interface and through the unix socket. This is also true on
OpenSMTPD -portable.

Not to mention that remote vulnerabilities only affect a process that is
unprivileged and that the local vulnerabilities, as far as I know, don't
allow for privileges escalation, only leaking of a hash (yes, it is bad,
but you don't suddenly compromise the machine either).


> CCing the OpenSMTPD mailing list (low-volume; don't worry Solar!) in
> case they want to chime in too.
> 

I'll chime in.

As we made clear in the commits and release note these issues were found
by Qualys Security during an audit, for which they're going to publish a
detailed advisory (very good read) with CVE associated to each issue.



> ---------- Forwarded message ----------
> From: Gilles Chehade <gilles@poolp.org>
> Date: Fri, Oct 2, 2015 at 4:01 AM
> Subject: Announce: OpenSMTPD 5.7.2 released
> To: misc@opensmtpd.org
> 
> [...snip...]
> 
> 
> Issues fixed in this release (5.7.2, since 5.7.1):
> ===========================================
> 
> - an oversight in the portable version of fgetln() that allows attackers
>   to read and write out-of-bounds memory;
> 
> - multiple denial-of-service vulnerabilities that allow local users to
>   kill or hang OpenSMTPD;
> 
> - a stack-based buffer overflow that allows local users to crash
>   OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;
> 
> - a hardlink attack (or race-conditioned symlink attack) that allows
>   local users to unset the chflags() of arbitrary files;
> 
> - a hardlink attack that allows local users to read the first line of
>   arbitrary files (for example, root's hash from /etc/master.passwd);
> 
> - a denial-of-service vulnerability that allows remote attackers to fill
>   OpenSMTPD's queue or mailbox hard-disk partition;
> 
> - an out-of-bounds memory read that allows remote attackers to crash
>   OpenSMTPD, or leak information and defeat the ASLR protection;
> 
> - a use-after-free vulnerability that allows remote attackers to crash
>   OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;
> 
> -- 
> You received this mail because you are subscribed to misc@opensmtpd.org
> To unsubscribe, send a mail to: misc+unsubscribe@opensmtpd.org
> 

-- 
Gilles Chehade

https://www.poolp.org                                          @poolpOrg
