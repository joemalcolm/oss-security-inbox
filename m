X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1837" "Friday" "20" "November" "2015" "23:19:54" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20151120231954.65c8be4c@redhat.com>" "38" "Re: [oss-security] Re: LXDM X authentication issues" nil nil nil "11" "2015112022:19:54" "[oss-security] Re: LXDM X authentication issues" (number mark "U       thoger@redha Nov 20   38/1837  " thread-indent "\"Re: [oss-security] Re: LXDM X authentication issues\"\n") "<20151120182653.E2A5734E0F9@smtpvbsrv1.mitre.org>" ("<20151120140451.28635bdc@redhat.com>" "<20151120182653.E2A5734E0F9@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5187 invoked by uid 550); 20 Nov 2015 22:20:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5169 invoked from network); 20 Nov 2015 22:20:10 -0000
Date: Fri, 20 Nov 2015 23:19:54 +0100
From: Tomas Hoger <thoger@redhat.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20151120231954.65c8be4c@redhat.com>
In-Reply-To: <20151120182653.E2A5734E0F9@smtpvbsrv1.mitre.org>
References: <20151120140451.28635bdc@redhat.com>
	<20151120182653.E2A5734E0F9@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: Re: [oss-security] Re: LXDM X authentication issues

On Fri, 20 Nov 2015 13:26:53 -0500 (EST) cve-assign@mitre.org wrote:

> > LXDM also defaults to not restarting X server between sessions, and
> > does not change authentication cookies or remove xhost authorizations.
> > This allows local user to be able to connect to the X server after they
> > logged out. The 'reset' option in lxdm.conf controls whether X server
> > is restarted on session user close.
> 
> This possibly can be included in CVE but, if so, the CVE ID would be
> different. Is there any other information, e.g., why was there a
> decision to make reset an optional behavior rather than a required
> behavior?

Upstream indicated they preferred not to reset to make logout fast and
smooth.  They optimize for single user desktop use case, where this is
not a real concern.

> Is there a possible attack by a different local user, or is the
> relevant attack that someone could steal the computer and recover the
> authentication cookies (possibly violating an expectation of the
> legitimate user who believed they were safely logged out)?

A local user attack.  A local attacker logs in via LXDM.  After that,
they record current authentication cookie, or configure X server to
accept connections based on some other criteria (e.g. allowing all
connections from specific user regardless of whether valid cookie is
provided).  After logging out, attacker can still interact with the X
server - either while it's displaying login prompt, or later when a
different user logs in.  Attacker can monitor screen contents or
keystrokes, or try to make victim interact with their applications and
e.g. enter their credentials into spoofed password prompts.

> Is the behavior different from all major display managers?

Those I tested all started new X server after session logout.

-- 
Tomas Hoger / Red Hat Product Security
