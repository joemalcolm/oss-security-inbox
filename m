X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["728" "Tuesday" "30" "May" "2017" "09:03:33" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496149413.941.3.camel@gmail.com>" "13" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053013:03:33" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   13/728   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32447 invoked by uid 550); 30 May 2017 13:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32046 invoked from network); 30 May 2017 13:03:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kSKAKs+klOf4Shotpno6g7gU7nYfjcEVzTJTo23CUGE=;
        b=Y1T+UFoD56fgcfXTA//2Ot7IEAxTaevPUap+vxqENLZe8datkPItGZ3xXm3bBgWoHI
         Xnf1BTE+PsQuwgaAUskMq72M8n+g0iPsllEdNDMSA0fbbTefgQbU/ke3TBn/FC4G73DZ
         1x0DwWMjQa6LJK3E5i2Wm3EjDqmZ3VLPNqjeXII0g9fp4zCPld81W1KDTXdLFOv7hNQw
         LeD7x9pK2OAx3Vs9RN0XJuLduzhaY0mCE7PnDa4AudFQINd+UC0KR+HPJj1RPsYxNDj2
         EbHrSeHm8GcNjsK0hnSn+F4qm4lzlR60p0YN0YFIoNHIjkMjk5ehfpiJMheKGuO+YYfc
         G00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kSKAKs+klOf4Shotpno6g7gU7nYfjcEVzTJTo23CUGE=;
        b=sAqg5aRafxlF0zY8u7bLGcAPnHwtZnZDCgJkQCI7zOKbNZqsjG5yW3N+cC4nOLCoYQ
         Ej8Na2o3qhoSSogCfnFrMt5p9iYcpiaXjwaiubn3ZBKl0/7sQszVKDYuAQk8hNfElDsW
         ZfKrEZj6aymlE1RuZhHG9svMzQEbEPjLxk6sYZWDSuYWPkzBXaSmnfAo5pPTF9pRUoIH
         OsPki+VOKekoQeICPlwRVrIURPapxwHQrUERaEEaFpxysFc1isDNrr9A8WouMgRRmmhi
         WIo2ZXHphcl/hqjXJtqnO1IC0Vlb1C2Kdf7cKejeNtz3znLFMJjIAV5X5xh3htm1wypW
         w7Aw==
X-Gm-Message-State: AODbwcC5yVVOSC5Ks6/nAZx53K6sC35DKOv0bZceSkO29q4j2vb9Vtql
	r16P+tQ/OVB5qoGoY6I=
X-Received: by 10.36.228.8 with SMTP id o8mr1841358ith.37.1496149414788;
        Tue, 30 May 2017 06:03:34 -0700 (PDT)
Message-ID: <1496149413.941.3.camel@gmail.com>
In-Reply-To: <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <1496145073.1459.1.camel@gmail.com>
	 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 09:03:33 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

On Tue, 2017-05-30 at 14:52 +0200, Florian Weimer wrote:
> On 05/30/2017 01:51 PM, Daniel Micay wrote:
> > It's unreasonable to consider the kernel line untrusted. A CVE being
> > issued for one of these issues didn't make sense.
> 
> It's a potential Secure Boot bypass, so it matters in some theoretical
> sense to some downstreams which carry those Secure Boot patches.

Also not sure what you mean by patches. Secure boot doesn't require
applying patches. The kernel has to be verified by an early boot chain
and dm-verity is in mainline for verifying the rest of the OS as Android
and ChromeOS do. Android does have some tweaks for dm-verity but they're
workarounds for bureaucracy rather than true technical requirements.
