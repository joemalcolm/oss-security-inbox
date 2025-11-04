Received: (qmail 13436 invoked by uid 550); 4 Nov 2025 16:03:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1264 invoked from network); 4 Nov 2025 11:48:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762256874;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=0BrNF432Z4n64dUFIzOn8mjxTD2FqxeD94p+r4biVTY=;
	b=e7YOD08gpH/AG6kpGnrzyKMZfc4JGC9TovPyvneldBw5CQWhEyVvSoxyGamW9ocerfnfY0
	mUnYxtNX52fqSzzsX3vjYrm39eBLqHaREXdsp5ZFHyD3nvq3JgkTkjXP4JB3lhyBj3loel
	y5YW9DMgp2snZn/n1CA2pH7Mg8BjogE=
X-MC-Unique: 8Yr-qJwEPAiLFP4eQXmyLg-1
X-Mimecast-MFC-AGG-ID: 8Yr-qJwEPAiLFP4eQXmyLg_1762256868
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762256866; x=1762861666;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0BrNF432Z4n64dUFIzOn8mjxTD2FqxeD94p+r4biVTY=;
        b=dxghQdsdArJP3bavZOJyNUy7IZYT62hF4Nfoc+LCXbJwt9gF1r8IfMdaHuhPH/nPeF
         XwD6w4sG7mfyYniwW0OaBhzbp+XN89xDH0+ciKj/FZS3mU9neUL6zHuhIwkYhTz2kMjh
         5lsE4um7vc7bkpG4OJQDUp2roa42z0GhT6QgTFUKEIl7lnzaN6sIFj34bLKr+C/JFXY4
         lr3lirxtKoeJ7NyfJlCgARSks+wNajpcOa41mMDyzkv/YmVpFzleWbfBVaNFaaSGNHZq
         qAf56TyI+Bcnezv9rwfEEj+eqCFqDC/kBzC4dn144igzWH0mTXGSpPcP9KMQDJLU/R5+
         NOAA==
X-Gm-Message-State: AOJu0Yyipk6nSdPAIFJP9svZhTu66s1bQnZts37DTURV0/eMPesnoEsk
	GWHWt7lBX02SigpiD9mEaCXXLeptWtnooGmmahkaK7Yhq6MIkZlAE1jcEZt1SzOYmJZKPdiDs40
	Y6hULluPZC/ZySeEzt+sc2Pmw4lsjTuIsSfC4Mx5/z2fXb7fTNCFJQrBl7knunsyom9LwsWBHRU
	Leyp04MhAXSnRajrt+fyq+CgU1oHgk4V2s0OG37DRxnQCk1virZxZMGBc=
X-Gm-Gg: ASbGncv7r1K/smOt1gquegGGKBs1H51R2l9/o8769hFmDbafh32pV1uNwMLHbSC3F+W
	HPl0GgL61oTjEOQPJJvfuvjMBuW7pclhjdxI2jQhebNbkt1smJznM0mpesxR6fM36t5O0YmFPWL
	G+1X8Bn00rOUNuGE2TkATmwd27qLOXQ3CjRRV5+ASWFaNTznIPabZ3nw==
X-Received: by 2002:a17:90b:3fc3:b0:340:d1a1:af6d with SMTP id 98e67ed59e1d1-340d1a1b159mr14603396a91.36.1762256866625;
        Tue, 04 Nov 2025 03:47:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGEYbjb5CqD2t0QapaiRqcGj2IXTcnTcKrE3xsaLNn3lHy9giO9DhMjoSvyBjJsT64b/WeFraxrU3y3XnWdOPs=
X-Received: by 2002:a17:90b:3fc3:b0:340:d1a1:af6d with SMTP id
 98e67ed59e1d1-340d1a1b159mr14603359a91.36.1762256866088; Tue, 04 Nov 2025
 03:47:46 -0800 (PST)
MIME-Version: 1.0
From: Rodrigo Freire <rfreire@redhat.com>
Date: Tue, 4 Nov 2025 08:47:35 -0300
X-Gm-Features: AWmQ_bl6jyFUIa4aQR0xXfCgBkwLlKawCIuOyZFXzqIzwN5zZdV6vV2Ag4gQb1c
Message-ID: <CAHjsZGZvy3zeN3st9-Ya4Hxu+29My68sXc9WJnZw_Pd2c_AF6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: g47A8FKbVZoa10W2vOGjyXDboEaBg0nUmyCxLgR64WE_1762256868
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Becoming a CVE Naming Authority for your project

Open Source Project Maintainers,

Managing security vulnerabilities is currently a significant pain,
especially with the recent increase in dubious CVE reports due to AI
assistants. The discussion around questionable CVEs reported against
projects like dnsmasq, curl highlights a growing concern within the
open source community.

One effective way to combat the influx of bogus CVEs and ensure
accurate vulnerability reporting is for open source projects to become
their own CVE Numbering Authority (CNA). As a CNA, your project gains
control over the CVE assignment process.

Taking ownership of your project's as a CNA ensures that you are in
control of the CVE assignment. There will be some requirements to it,
sure thing. Check
https://openssf.org/blog/2023/11/27/openssf-introduces-guide-to-becoming-a-cve-numbering-authority-as-an-open-source-project/

If you want to learn more and how it impacted an open source project,
reach for the glibc (in the past, a frequent topic here in this
mailing list) security community
(https://sourceware.org/glibc/security.html) and ask them your
questions.

If you're interested in learning more about becoming a CNA, Red Hat
(along Google, INCIBE, JPCERT/CC, and Thales Group) can help you.
Reach ymittal@redhat.com and we will be happy to help.

Best regards;

Rodrigo Freire
Chief Architect

