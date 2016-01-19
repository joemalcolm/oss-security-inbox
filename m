X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2325" "Tuesday" "19" "January" "2016" "11:06:32" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0CBF_LOa=8+sC1bdGH-6RvvA0YTpeOCdBQuSmG=PE75A@mail.gmail.com>" "69" "Re: [oss-security] CVE assignment request for security bugs fixed in glibc 2.23" "^Cc:" nil nil "1" "2016011918:06:32" "[oss-security] CVE assignment request for security bugs fixed in glibc 2.23" (number mark "        kseifried@re Jan 19   69/2325  " thread-indent "\"Re: [oss-security] CVE assignment request for security bugs fixed in glibc 2.23\"\n") "<569E7AA1.1040700@redhat.com>" ("<569E7AA1.1040700@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22224 invoked by uid 550); 19 Jan 2016 18:06:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22206 invoked from network); 19 Jan 2016 18:06:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=DCo+KaULttZ/YZlLrUzf1ZWmAgNUCPuIUuJg+KJNC6g=;
        b=MNwAnwRk1ogNNEsSrBoYMFi2ZxRW3Cdzf9coZSEDqBMMUvknbch0nwDBlIjf5PakpQ
         gFEW58B7LpnhaoVgeg1DFrl6ENk3SuKf9zYXgw6oHqzthY5phm9ZGKX43Nv8+AetJaS2
         5dgQkNMwMtb+zfMjuvuh5jL+FnllimTV0iqAcQqkFqoolf/kOmqI32i4Soiqqmm4J5nR
         60GNG3fe1D+l5TjMhjX8yOgi+1psBtsYSBSHp023jCVLge9wTNC9feHLyOcrIeOXeBNS
         f6Ln7YNhO7OSzKTNnp68ex6326fMDzcBdO3qBUlZiDLyAv3n9BMlJP3PsSyRCi6eeCF9
         L4xw==
X-Gm-Message-State: ALoCoQlgNCPmSRcIuVGrY5JecnxemhHnW/8iE0Qi/Bj0RelWkpn+66t+uCd/9yKspiJvaXIxhFQ7jFkGe55jD10v3hV9jc2Q4nyw/U/CsZkqerHTwhU4VgU=
MIME-Version: 1.0
X-Received: by 10.37.230.215 with SMTP id d206mr8733091ybh.125.1453226792075;
 Tue, 19 Jan 2016 10:06:32 -0800 (PST)
In-Reply-To: <569E7AA1.1040700@redhat.com>
References: <569E7AA1.1040700@redhat.com>
Message-ID: <CANO=Ty0CBF_LOa=8+sC1bdGH-6RvvA0YTpeOCdBQuSmG=PE75A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0a8066b885af0529b3badc
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Tue, 19 Jan 2016 11:06:32 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE assignment request for security bugs fixed in
 glibc 2.23
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0a8066b885af0529b3badc
Content-Type: text/plain; charset=UTF-8

I'll assign these tomorrow unless Mitre gets to them first, the one
request swbz#18928
is already several months old and shouldn't take this long.

On Tue, Jan 19, 2016 at 11:04 AM, Florian Weimer <fweimer@redhat.com> wrote:

> Hi,
>
> we are preparing the glibc 2.23 release upstream and have fixed the
> following security bugs which, to my best knowledge, lack public CVE
> assignment so far:
>
> Passing out of range data to strftime() causes a segfault
> https://sourceware.org/bugzilla/show_bug.cgi?id=18985
>
> Out-of-range time values passed to the strftime function may cause it to
> crash, leading to a denial of service, or potentially disclosure
> information.
>
> LD_POINTER_GUARD is not ignored for privileged binaries
> https://sourceware.org/bugzilla/show_bug.cgi?id=18928
>
> LD_POINTER_GUARD was an environment variable which controls
> security-related behavior, but was not ignored for privileged binaries
> (in AT_SECURE mode).  This might allow local attackers (who can supply
> the environment variable) to bypass intended security restrictions.
>
> hcreate((size_t)-1) should fail with ENOMEM
> https://sourceware.org/bugzilla/show_bug.cgi?id=18240
>
> This is an integer overflow in hcreate and hcreate_r which can result in
> an out-of-bound memory access.  This could lead to application crashes
> or, potentially, arbitrary code execution.
>
> nan function unbounded stack allocation
> https://sourceware.org/bugzilla/show_bug.cgi?id=16962
>
> A stack overflow (unbounded alloca) can cause applications which process
> long strings with the nan function to crash or, potentially, execute
> arbitrary code.
>
> catopen() Multiple unbounded stack allocations
> https://sourceware.org/bugzilla/show_bug.cgi?id=17905
>
> A stack overflow (unbounded alloca) in the catopen function can cause
> applications which pass long strings to the catopen function to crash
> or, potentially execute arbitrary code.
>
>
> Several people have asked for CVE assignment for swbz#18928 on
> oss-security already.
>
> Thanks,
> Florian
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0a8066b885af0529b3badc--
