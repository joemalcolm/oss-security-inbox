Received: (qmail 7680 invoked by uid 550); 2 Jul 2024 13:08:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30049 invoked from network); 1 Jul 2024 23:47:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
	s=2; t=1719877662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oXUZUWN22ItAxgFy46SnSSHj+KJJsmQcdR7pzpwYY1E=;
	b=g0Z0Rn07ytaSt9LpgC3uF5LVDIJWLPAiYLOzVPHMe/Nuw28zZ/nxzujsi0D31DiWOnr+up
	/TaiTLkt7UwycYusPmZAn40iQt4i40jI0pBEwv6+PF/xxYows8xIuQKi2I+NzLSiZJfque
	spm914EmNO8VqodF6GTln1TIP5+xll/rrztJp5nEq9OWPRhedJ0Y+blufaqtpfoS+/d+vk
	ch5FAoumIfZPVP536hvUa2S+SjP83xEr/yl2wF2bwXPr4VN6V1tuTOUCOcKgqXNde5CVUr
	AG1ZFbyGxs9jpyGKDlcMVekaWzFd2/XlcXcg1MYJStTxxSIe/jwHQr+rKXPgBQ==
Date: Tue, 2 Jul 2024 08:47:22 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Damien Miller <djm@cvs.openbsd.org>, oss-security@lists.openwall.com
Message-ID: <ZoNACurP_90GPyp5@codewreck.org>
References: <d2ed9e542682bf82@cvs.openbsd.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d2ed9e542682bf82@cvs.openbsd.org>
Subject: Re: [oss-security] Announce: OpenSSH 9.8 released

Damien Miller wrote on Mon, Jul 01, 2024 at 02:10:04AM -0600:
> OpenSSH 9.8 has just been released. It will be available from the
> mirrors listed at https://www.openssh.com/ shortly.

Thanks for all the work towards this release.

Just a paperwork question as I couldn't find the information anywhere,
was there any CVE assigned to the 2nd security issue?

I'm asking because I tried updating the alpine package[1], and given the
first issue is a slightly different problem on musl it probably needs a
different label than CVE-2024-6387 ; I'm honestly still not quite sure
how all this works after all these years but at the very least a search
on cve.mitre.org[2] didn't turn up anything, so I assume redhat (who
issued the first CVE) didn't process the second problem?

(although to be fair the non-safety is still a problem on alpine, so
that CVE might still apply, it's just no longer a free/malloc race with
syslog but something that hasn't been studied as extensively... labeling
is hard.)

[1] https://gitlab.alpinelinux.org/alpine/aports/-/merge_requests/68482#note_417509
[2] https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=openssh

Damien Miller wrote on Mon, Jul 01, 2024 at 02:10:04AM -0600:
> 1) Race condition in sshd(8)

Looking at other announces I assume CVE-2024-6387 is specific to this.

> 2) Logic error in ssh(1) ObscureKeystrokeTiming

I couldn't find anything on this one.


Thanks,
-- 
Dominique Martinet | Asmadeus
