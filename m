Received: (qmail 17947 invoked by uid 550); 8 Apr 2024 18:47:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11814 invoked from network); 8 Apr 2024 18:44:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1712601843; bh=HN50RhQ4DavJ5j1JuTEdb67mhQDpx3Il+fDCal71eCk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 From;
	b=CFBxcBpDcgkZQhgccEVmEvWDDYphh2oaTUn/av/ibVAan79UMbsXC7s8OROzg9CcJ
	 nUoiPh+FokrZHk5uMFwy9JMLw87ah+GH5Urw3KmTZ/QdQWdoB2fsve3uS44tV53/5R
	 hQNCXVQDQXjrT1mI/IrySG6FJlSDIfZCB66Cj44DwY+HV65KqFxmkdSZc3CTu5V8wY
	 PmGO/3YpNRpapV/zaUE7c6PzUSH44uiR1iDkV9hC0EFUZsJq88BuDqYWD9PMV0UTVM
	 0LErYe7v05tanvx67c80nOE0BfcKVsa7y6CCm4AGqJLrxEBNZNjgJhgRTM8L2PSCTm
	 4jk/rg74bQ4Kw==
From: Ihor Radchenko <yantar92@posteo.net>
To: Sean Whitton <spwhitton@spwhitton.name>
Cc: emacs@packages.debian.org, emacs-devel@gnu.org,
 oss-security@lists.openwall.com
In-Reply-To: <874jccjpvy.fsf@melete.silentflame.com>
References: <874jccjpvy.fsf@melete.silentflame.com>
Date: Mon, 08 Apr 2024 18:44:21 +0000
Message-ID: <87y19nu22i.fsf@localhost>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

Sean Whitton <spwhitton@spwhitton.name> writes:

> The description for CVE-2024-30203 is
>
>     In Emacs before 29.3, Gnus treats inline MIME contents as trusted.

Before Emacs 29.3, there was no concept of trusted or untrusted content
in Emacs. We introduced it specifically to control whether we allow
running LaTeX on the contents of a given buffer. (And even in Emacs
29.3, the concept of untrusted contents is not yet official) So, at least
the title is misleading.

> and for CVE-2024-30204 is
>
>     In Emacs before 29.3, LaTeX preview is enabled by default for e-mail
>     attachments.

This is closer to what was happening.
Note that LaTeX preview itself was not a problem. The problem was that we
executed actual latex program without user query with input taken from
buffer text to generate the previews (using the default settings). LaTeX
input can be specifically constructed to cause DOS when using LaTeX
compiler, which is especially dangerous when the input is coming from
emails.

Also, only GNUS and MUA clients re-using gnus libs (at least, notmuch
and mu4e) were affected. Not rmail, AFAIK.

> ...
> I think it's the first one -- can you confirm?

I hope that the above clarified things.

-- 
Ihor Radchenko // yantar92,
Org mode contributor,
Learn more about Org mode at <https://orgmode.org/>.
Support Org development at <https://liberapay.com/org-mode>,
or support my work at <https://liberapay.com/yantar92>
