X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1774" "Monday" "8" "June" "2015" "16:06:18" "-0400" "Colin Walters" "walters@verbum.org" "<1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>" "42" "[oss-security] Re: CVE request for polkit" nil nil nil "6" "2015060820:06:18" "[oss-security] Re: CVE request for polkit" (number mark "        walters@verb Jun  8   42/1774  " thread-indent "\"[oss-security] Re: CVE request for polkit\"\n") "<20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>" ("<20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13388 invoked by uid 550); 9 Jun 2015 07:02:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6032 invoked from network); 8 Jun 2015 20:06:30 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=Xgl1rDXGqNrGoA/
	1WeRHs+gVgtA=; b=c8EtSd7kPRXZpKWBT7AURVWCvPIoiveMLxkaZDR5vBQoagi
	lAnnu0E/S3o102+gN95TQhT0EnAQ1mJfxITGUh/ws5WwNXIQX2OWQaQbRwE6srpr
	VhDDCXEPv+ZVeuy5xtX0fWIDyo0qafJPh25NNhVyjeHmEH+vVvR4A7z484uY=
Message-Id: <1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>
X-Sasl-Enc: aJqy7VRYYGqxRaGvhauVrrGP7dLXuXZTODa734W9Y9cs 1433793978
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-b076c697
In-Reply-To: <20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>
References: <20150608194405.113338BC0D4@smtpvmsrv1.mitre.org>
Cc: oss-security@lists.openwall.com,
 =?utf-8?Q?Miloslav=20Trma=C4=8D?= <mitr@redhat.com>
Date: Mon, 08 Jun 2015 16:06:18 -0400
From: Colin Walters <walters@verbum.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for polkit
To: cve-assign@mitre.org

On Mon, Jun 8, 2015, at 03:44 PM, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Your message seems to be about various security analysis posted to a
> mailing-list thread with about 10 messages, accompanied by at least
> two bug reports:
> 
>   https://bugs.freedesktop.org/show_bug.cgi?id=90837
>   https://bugs.freedesktop.org/show_bug.cgi?id=90832

These two bugs I would describe as fixing the *same* problem
in two different ways.
 
> The original 2015-05-29 message seems to be about clients whereas the
> first 2015-06-03 message seems to be about users or uids. Is there any
> polkit documentation that suggests that two clients are allowed to
> interfere with each other as long as they have the same uid? (This is
> in the general case where at least one of the two clients is executing
> with substantial restrictions.)

By "substantial restrictions" you're thinking of things like SELinux policy
domains?  Currently, polkit is not ready to perform compartmentalization
of that form - it treats equal uids as equal security domains.

(Most importantly, uid 0 is treated as privileged, even if it's in a confined
 domain)

> For purposes of CVE, we may be able to model this as a situation in
> which the (realistically exploitable) counter wraparound is a clear
> implementation error and can have a CVE ID, but the concept of uid
> matching is a design change that is essentially outside the scope of
> CVE. Would that be OK?

That sounds right to me.  I see uid matching as a fix for the wraparound.
The default authority already restricts agents to only be able to
register for subjects of matching uid.  Or to turn it around, polkit
in many places matches uids, this adds another one to fix a bug
with cookie handling.



