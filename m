X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["845" "Tuesday" "30" "May" "2017" "11:20:05" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "16" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "5" "2017053015:20:05" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   16/845   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5157 invoked by uid 550); 30 May 2017 15:20:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4062 invoked from network); 30 May 2017 15:20:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yfL3nii8gRfw7JhThJbPoQKxk+xtiBbGujIlKS9dcWg=;
        b=VvrPjO2uSLKhsquB7Kk3/1jEvLw0SFST286zWWYuE7jRN+MdEdKvMh8dXrms1poZUH
         5t1I7Vb58hL6Y3rVlB8TuxXZS3Zt2S0P66g/QxnSxLlFnkcncqy11RwDDpRhbF/fbdxd
         JYSE8eKDs6D53G+XT+liDP2DFVh8DZpxW5Lnckuer/iJ+zWyeYYH9fnQ7sPTuz6rl4gU
         v/5YQpR6EffXTIwg7fa986mIbygjpvmPs4zLc0zTtuPcgUbhOLQ6dVooVG4h6R7Q9ygw
         ZDemRDGmSGs6fC+9K4fUWQFS54KDaUs6ixlfQMUEUAOSEshpRaWwRt8OpEbgRX2WEQ3R
         RUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yfL3nii8gRfw7JhThJbPoQKxk+xtiBbGujIlKS9dcWg=;
        b=dbjYCv8B+bk/GeAXrNbjtH22SCP7EGw1PJK0u4q0kKpTqjHBSC1Fv88DN8C93OJBrz
         9eq64rkJD5jtpwcN+RgoH5IGxnUtZQE7ui9KMYEDYNvXAkEWdRpYYOaPPy69ZywPJFGG
         GAnJS+YovoG6l6piSsos2o0M2zcR/gMxzfH3FVNkgyJPmhGXtZo0QO7AsrtFore44kyJ
         8VdBAxoXFguQqdEyKG3RKCc0+HXb769p4T1HaG8FaYf+jb+3ROuToVV64f7e+iwM5jPZ
         KCR/uV6ELyHeUqaC8gpCi3xvTx+uGPs/EIqYNE7gzk6UdWRAngjdF6z3p9NBhPP1ibbY
         96Lw==
X-Gm-Message-State: AODbwcA/3BrNOHIe++2yTCxMXiUsFb30UzqOL/7vW6l1z12x3FthOJ/R
	zpcYVRgC2zXoZwcOZc/n0uy+03SHwN6G
X-Received: by 10.37.77.138 with SMTP id a132mr50183567ybb.170.1496157605862;
 Tue, 30 May 2017 08:20:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk> <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
Message-ID: <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 30 May 2017 11:20:05 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

That's not what secure/verified boot means to everyone else, and
there's nothing in mainline with those properties. To everyone else,
it's not an arbitrary bureaucratic/marketing feature. It's
verification of the whole base OS... i.e. Android, Android Things
(Brillo), ChromeOS, iOS and sane embedded Linux systems. Likely
Windows on mobile devices too, and I really doubt that Microsoft
doesn't plan on verifying the userspace OS if they don't already.

Anyway, good luck with meaningless Red Hat security theatre. These
"vulnerabilities" are just reinforcing the view that security people
are foolish. There isn't disagreement that it's a meaningless feature
with this level of incompleteness and yet a CVE is assigned for it?
Okay then...

Sorry for thinking that this should be about something more than
padding CVs and marketing materials.
