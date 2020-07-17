X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3511" "Friday" "17" "July" "2020" "09:54:21" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>" "121" "Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" nil nil nil "7" "2020071707:54:21" "[oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" (number mark "U       mcascell@red Jul 17  121/3511  " thread-indent "\"Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues\"\n") "<E1jw3ms-0006i6-Se@xenbits.xenproject.org>" ("<E1jw3ms-0006i6-Se@xenbits.xenproject.org>") nil nil nil nil nil nil nil "Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap context switching issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17624 invoked by uid 550); 17 Jul 2020 09:47:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3293 invoked from network); 17 Jul 2020 07:54:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594972478;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mCVsudiUaJnZfsa/Js80mZXCIgbfZRyKNbODyzDeHsc=;
	b=dAUFeKc9WEopminlxhiMZnx628fNyHqAHXh0KAGvvWflKX3c+iRnUA81nwZlSvVfSR9KCJ
	vZ95an70CvF2N3pinXbG/SahuY0Mo1N63JwWmhDOFe+IaNeBtA3SlRAbVioADFq3OLyJOV
	U1n+SHq4ppuR7hSWMYEiE3swYlZgNYE=
X-MC-Unique: 9MhbKF8qPkGtirw1LY8FtA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mCVsudiUaJnZfsa/Js80mZXCIgbfZRyKNbODyzDeHsc=;
        b=sKXCm9RKnLT+OMO2v9Xxc/4QMcxxRl7Mntshk6/UaJHLtoA39oZmGWbtYh9IIlwtRG
         vDZRBsvAsZLsYiFS4yZWMx1yTJ9z7ptS9CIC/yHzoC+DsfRYZ39fW0jhdoecNh3OjrPq
         MtTjRm2t4GZ0l4DSPFTZn5R8rDTdqtMdN/RpOj+9oL+Ha6uBtsEwaZ3m0QEdITumgj75
         VgG4L3mZoJAVrZ1kO7x/Y7Upa3BsNJo9HK3o+qmI+562UIgXicCJLKZuXpnhD+7XN3wP
         t6s7ohtZ+tBT+vPJHe8onXBRKLdKa4FR7sIUqHOuqRkNj4JP3hJW8ZWYCbH759hRt02c
         Ogbw==
X-Gm-Message-State: AOAM533wkW4dzR+wYr7/JMGeizmhYLyZRFN/hODnfkB541jNRLLYWX9U
	ov2YqfDE89UorT5oPrflvbXmuHD74fnuIfO2R34mg+cK3ALZupkYrVSepe2ZAc0A6cr/qskhPSF
	SsB/0ANAC8BqerVQxzoeds3DbXwSkST5Tf8M4nM/EcG8K
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr8386840edv.65.1594972472438;
        Fri, 17 Jul 2020 00:54:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxLKN6gyw2bSTiwmuJkYyGhJ40svEPXSZ9d0JZod1YuwomtXujKsvrP2uzhY6aXV7fbZddiMBwbXT37wvkoyuk=
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr8386835edv.65.1594972472226;
 Fri, 17 Jul 2020 00:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <E1jw3ms-0006i6-Se@xenbits.xenproject.org>
In-Reply-To: <E1jw3ms-0006i6-Se@xenbits.xenproject.org>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Fri, 17 Jul 2020 09:54:21 +0200
Message-ID: <CAA8xKjVib9UERsMrAy3nNdVssNxLciXTmmhmXqq1gvhO16URew@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org, 
	xen-users@lists.xen.org, 
	"Xen.org security team" <security-team-members@xen.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a245b105aa9e773c"
Subject: Re: [oss-security] Xen Security Advisory 329 v2 - Linux ioperm bitmap
 context switching issues

--000000000000a245b105aa9e773c
Content-Type: text/plain; charset="UTF-8"

Hello,

Will a CVE be assigned to this flaw?

Thanks,

On Thu, Jul 16, 2020 at 3:21 PM Xen.org security team <security@xen.org>
wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>                     Xen Security Advisory XSA-329
>                               version 2
>
>              Linux ioperm bitmap context switching issues
>
> UPDATES IN VERSION 2
> ====================
>
> Public release.
>
> ISSUE DESCRIPTION
> =================
>
> Linux 5.5 overhauled the internal state handling for the iopl() and
> ioperm()
> system calls.  Unfortunately, one aspect on context switch wasn't wired up
> correctly for the Xen PVOps case.
>
> IMPACT
> ======
>
> IO port permissions don't get rescinded when context switching to an
> unprivileged task.  Therefore, all userspace can use the IO ports granted
> to
> the most recently scheduled task with IO port permissions.
>
> VULNERABLE SYSTEMS
> ==================
>
> Only x86 guests are vulnerable.
>
> All versions of Linux from 5.5 are potentially vulnerable.
>
> Linux is only vulnerable when running as x86 PV guest.  Linux is not
> vulnerable when running as an x86 HVM/PVH guests.
>
> The vulnerability can only be exploited in domains which have been granted
> access to IO ports by Xen.  This is typically only the hardware domain, and
> guests configured with PCI Passthrough.
>
> MITIGATION
> ==========
>
> Running only HVM/PVH guests avoids the vulnerability.
>
> CREDITS
> =======
>
> This issue was discovered by Andy Lutomirski.
>
> RESOLUTION
> ==========
>
> Applying the appropriate attached patch resolves this issue.
>
> xsa329.patch           Linux 5.5 and later
>
> $ sha256sum xsa329*
> cdb5ac9bfd21192b5965e8ec0a1c4fcf12d0a94a962a8158cd27810e6aa362f0
> xsa329.patch
> $
>
> DEPLOYMENT DURING EMBARGO
> =========================
>
> Deployment of the patches and/or mitigations described above (or
> others which are substantially similar) is permitted during the
> embargo, even on public-facing systems with untrusted guest users and
> administrators.
>
> But: Distribution of updated software is prohibited (except to other
> members of the predisclosure list).
>
> Predisclosure list members who wish to deploy significantly different
> patches and/or mitigations, please contact the Xen Project Security
> Team.
>
>
> (Note: this during-embargo deployment notice is retained in
> post-embargo publicly released Xen Project advisories, even though it
> is then no longer applicable.  This is to enable the community to have
> oversight of the Xen Project Security Team's decisionmaking.)
>
> For more information about permissible uses of embargoed information,
> consult the Xen Project community's agreed Security Policy:
>   http://www.xenproject.org/security-policy.html
> -----BEGIN PGP SIGNATURE-----
>
> iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAl8QU6EMHHBncEB4ZW4u
> b3JnAAoJEIP+FMlX6CvZ/sEIAMiCOnz119KTlRU50HTwa4pvIgLphf9htTbPzHXS
> iEb8yINqMxmep8NRcAzwFREQP+Z4Tue1upt31Vx0RPkFZpUklLuuBSXsV0JA7+UM
> LSGyWhkzDdnfj6iPUHycGmFzRTzkbB7qfcMj7khCvuYtSNbTUdOgUq04ngZksrSJ
> UMhfgUNKXawULKvVe7572L/AQTmMXK8eaolb+eWtf1U2pFkZQR8GWoLmiFbKLks2
> X2tRUF4U4cHEBzxXRzYrD1ArWLajqK6hQmauwgkCCSowvCHoD1dTv55GlrlEo4od
> MSB6YOVLl7HJuUw1GmwlKjA8XqStHq1Fi0urvlKCfHfK2Wk=
> =MP+m
> -----END PGP SIGNATURE-----
>


-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

--000000000000a245b105aa9e773c--

