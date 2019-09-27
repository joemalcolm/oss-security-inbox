X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["939" "Friday" "27" "September" "2019" "19:01:48" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" nil "23" nil "^Cc:" nil nil "9" nil nil (number mark "        andreyknvl@g Sep 27   23/939   " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24209 invoked by uid 550); 27 Sep 2019 17:02:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24191 invoked from network); 27 Sep 2019 17:02:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iUeJjeG3WdLdFXfIZyE08OrjPQ4nIx+rxlmro+5WW2k=;
        b=Dt7VsqrfWMiueDS99fLwsaw57VoCKDCyFHZY75wIBIgmN6iQNUbjOJWt1FA/i6GQc2
         bVQ1C2ptMi63994pDdqnbKr8sDNtBFHJI2KXq9cu1LtEWcLuGlqgMzO2OOLbU10rnGKk
         mTSf9rXgTBiuJJ9Zzo23kXyp77YxcDpajLYfZ0ZMQK2si5RYUqQ746ktemX12OK7C9zU
         Am/HszZX+xkBtIfZA3r/2ZoAJ9eCTl2CeEOz0j34w6fBLoDqmRezDL+Ki8VSczyEZuA5
         dH6jsMBlc5mYB1WjK4NiDuvH2zDmkNKnHiAYxsHee3WIRLB2ibjF1eyYpf3GF9fPqWSA
         VJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iUeJjeG3WdLdFXfIZyE08OrjPQ4nIx+rxlmro+5WW2k=;
        b=lPnRNAoWm3gp5L5JAT7kepffAm9RI+Ew0+O91PbJNQ1aMVpwGvg6BplOsYIl5XqOwM
         kgcQlAOt/w4ExudCp3i9eUfafAPyaTuLgTbY+iBA87HMrsWm6H9xPOWPLNVzHXA+Lj2x
         O8NyN/mCnCBtLwdVsyWKExFA6xkHTLKOvwec8hXN/p2Dwy4L1ETSgZdtIf7kTl2kMMTK
         vALG4L1vbHyjAjJdfvhTBfiQr4swN5FB/pOLP+YCujW1wOYzpjvPvumJSYePA0QLJn/D
         xfIipkDsPlOoGNRkdxtUsgepwMI0Spkw3JOi5Jm1nPTrNdy5KkA03iAy1VGb+t/lSpCR
         QXBQ==
X-Gm-Message-State: APjAAAVR98HwOm0GI5XQBXClJMRVL5cYFLogfaV9Fvq3Wo7LNwA6q3Ke
	vn0Ilae+NLxMiISVLMdvEf6y0EKgZpyOggYgGXD+uw==
X-Google-Smtp-Source: APXvYqwyDyzZalkX8yt4Pr6zOGhgoD6EFhsOc27ZTTQJ3L+pdFe0qAQGIs+2TGgZk0EpEpNY6LknJ42AdaleJ3wd+JY=
X-Received: by 2002:a2e:b4c5:: with SMTP id r5mr3675569ljm.54.1569603719743;
 Fri, 27 Sep 2019 10:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <20190927165004.GD1884@elm>
In-Reply-To: <20190927165004.GD1884@elm>
Message-ID: <CA+fCnZcH6Q-i89E0oB=KmxXZAvoT5v+uhS9MV=8xR05BVX-+QA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: mathias.payer@nebelwelt.net, benquike@gmail.com
Date: Fri, 27 Sep 2019 19:01:48 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Fri, Sep 27, 2019 at 6:51 PM Tyler Hicks <tyhicks@canonical.com> wrote:
>
> On 2019-08-20 20:20:34, Andrey Konovalov wrote:
> > * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15290
> >
> > An issue was discovered in the Linux kernel through 5.2.9. There is a
> > NULL pointer dereference caused by a malicious USB device in the
> > ath6kl_usb_alloc_urb_from_pipe function in the
> > drivers/net/wireless/ath/ath6kl/usb.c driver.
>
> This seems like it might be a duplicate of CVE-2019-15098. The fix for
> CVE-2019-15098 was recently merged upstream:
>
>  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d170b3cb62ba98567f5c4f40c27b5864b304e5
>
> If you agree, could you request that MITRE mark CVE-2019-15290 as a
> duplicate of CVE-2019-15098?

Oh, nice, Mathias and Hui found it as well and fixed it! =)

Yes, these two CVEs are for the same issue, feel free to mark them as such.

Thanks!
