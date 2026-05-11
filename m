Received: (qmail 26616 invoked by uid 550); 11 May 2026 14:59:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15686 invoked from network); 11 May 2026 12:57:33 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778504243; cv=none;
        d=google.com; s=arc-20240605;
        b=PMENZp3i1E10R3YvXgeynghTJ0jVVzZc9dIaIQni0wpkBgogfdxmsQQKeRdslJBu/2
         GX8fo29RRRvxujssrNuADL42aCgfG3HaiFFBqDMR3t2q4mz3M9MP4QXqMQm5fsYL65ou
         oD+KsRydDKOOlXq24Ag47xtaVI5GY+Fvm17IWtuqAemTqc6/yDG6wHQsmawkgETa2kVg
         00a5LpxFDtPEq1oS6LsXLYpPFBmthQY2mzkoe8yW3vRjUbk0uu0Yt+NCOXJMYyBrdiZ2
         bxlVM/+J2H82un9SqRoARdtao72P3TeYuvPMRMKPZ14ZSuwkJ5me7z0Jrh/Bh+bVMFjg
         u94A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XAXibLzqOxbWaFAKuCcuKjIF2b4ug6OetPvvZXZWQhk=;
        fh=somDQ473zjaB3/dmnRVdClOEdZDY36zHZzOSGlsqago=;
        b=JDx5BQD/jzDMPEWNrjBITIl79xGfH2BoqA24+xJ3wBp8QnASNmpf/wKOKIEfWV8Bd3
         uUwTykxM3YESbTjw0D2oN0Y4k7fLax/miC/8QxbZU9xm5zIOffYPpygpS98j6cyjXk+D
         BJvHSts4+Lt3DnUIeVEDi5C1Tf8UfDJteSbJhCOsdXf9dXoJN9sfp6FWR1OHAJKZz1ot
         fT5bNz1/ewtvJQPJGl+7kTHEO/75Jeg8thjh2mst/0pHvGvgP5Hd7yNQzEdhtVr+e7cU
         ot9TYwPJ6n1NahMZ08WcjPO8UGCed1Sb39tdL0zh/O1hrv/uuqOOI+tcIKAmtUR+0I2M
         riSg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778504243; x=1779109043; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XAXibLzqOxbWaFAKuCcuKjIF2b4ug6OetPvvZXZWQhk=;
        b=aXcZX4n/+Mu+Kctz4AWzvJQY1IEmuyCMMcEIBuT3ZF1/Tlnt0Rtb+pE3Y71RHU/oFl
         49GR+6NEY2aF9ydqqdm6ttsl+at8QvwgxCKE/sA9lglMk/BCOeKr5YeJvYuN77aB0mW4
         VrAe7inUPESc/VTegW21VEdf6IotmhnsJizCGV9ueUySjo1G/s/tscN3rLmoC37yuDx9
         SnfkYnAN0EUW9Gu/Z5yptgIHWp4GzKFaFHhB+Gsk12tKlCeb4mhFVWzDqsMxKPjsgp7t
         8lxmMP3HB1gwl6RILX9uEdZTDzgTdq2204sVkWy9vH7SKJ/48DKsYt/mja0yzz4wj/Rg
         W6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778504243; x=1779109043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAXibLzqOxbWaFAKuCcuKjIF2b4ug6OetPvvZXZWQhk=;
        b=RrLjaGsGsi6XoGiXK1eH871fDEjHG9bMsbSCZ1MFAMGKiaxN/+bgj9CmVCC8uVl4lp
         0h/tWZztuVB1rccZt5+ACgxtTjJWzPAWC2GFYAxWJSflFAdswSAUDdTtNaFJOOLd9czm
         QpDpqRUeBLkOxSBgXA6OUJ6O7qJnnpEnnXq+PHLniBa7hCENH506umTU4vPaQA2E6svr
         MFU0YMnF1DOs/c7iGNZaPuSy5CDYox3NdxeK0gYhg6hEa5MDE0MQoGZMjJIguz7Y0H4A
         sJmyBVczKkwxgZohagSKIXTZZ8uuetwZ/tA3lah4irBlV/OaumNYUyfvTyh06rJYtls7
         rC4w==
X-Gm-Message-State: AOJu0YzU46G1IoQMq10L1xKYuchpKsDzTBJIZDl/pzYjsRc9SDhzgZ1V
	8NMoN2Qpshv3MSqNNg8r81cuCoQNcWpW7RJK+43PtMpfFeph/JLjizRIVzOwP4SXXrG1o+BJ6bM
	UQaM/gHIW+jC24bXnhEur9xuMHFiX8Wi7wsChm4P6hHSH
X-Gm-Gg: Acq92OH569m86ckYAUyObSpIZ74NCBHi2/9G02fC50f98Q5d/Jok56CFfaMRU3otrJz
	lg42orrwwMjlA23D3jhu/dwEpge9s0b0C9p6go5uwnO+OIY0G4bBGJBTr/4826RrDuvTdnye9Qe
	TDO3vRDuJXjT1DknEZiq19SBeuk2fSAcPn9fSW8JbcKFJBptF1qgl3XitnIDKbvhNTJ87XnrW8O
	gok2cj/gs0aBOLisAKRjvJY1FvHqGKUGwLOBme4RrdA3jPSpkxgI17DPoRMKx8AkoI58lk3Osqf
	+YZHQb0=
X-Received: by 2002:a05:7022:6181:b0:130:9b78:b18d with SMTP id
 a92af1059eb24-13271cb305fmr7441732c88.34.1778504242554; Mon, 11 May 2026
 05:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260507042708.GA2912@openwall.com> <87bjerac9u.fsf@gentoo.org>
 <CAFFJMPxyY-BRdH4zC-py5btjVbvMeMzonwhZsBeNDToV6Cqn3Q@mail.gmail.com> <CAFFJMPyBJ=m+LN-Wn8Nd7p6THDBKwtMGzviFyCmpwbbVqm9V7A@mail.gmail.com>
In-Reply-To: <CAFFJMPyBJ=m+LN-Wn8Nd7p6THDBKwtMGzviFyCmpwbbVqm9V7A@mail.gmail.com>
From: xw x <v3rdant.xiang@gmail.com>
Date: Mon, 11 May 2026 20:57:11 +0800
X-Gm-Features: AVHnY4KbkcVY-hjha1lCKDu0IlphYwFHLwdSGgbnYj7GOtY8WwpfFtkEoFoPY-s
Message-ID: <CAFFJMPxrU1k5om5e6duXVfrfYp7tkQ3M7bX5tLkhAokiKEbfqQ@mail.gmail.com>
To: Sam James <sam@gentoo.org>, Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Linux kernel: KTLS + sockmap "Reverse Order"
 Use-After-Free / Data Corruption

I have integrated my PoC into the selftests and submitted the patch to
the mailing list. I apologize for the delay in this process due to my
heavy workload; I'm sorry for any inconvenience this may have caused."

https://lore.kernel.org/all/20260511123721.13906-1-v3rdant.xiang@gmail.com/T/#u
