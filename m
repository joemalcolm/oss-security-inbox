X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1709" "Thursday" "10" "September" "2020" "16:52:48" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20200910145248.GB79015@eldamar.local>" "42" "Re: [oss-security] CVE Request: Linux kernel vsyscall page refcounting error" nil nil nil "9" "2020091014:52:48" "[oss-security] CVE Request: Linux kernel vsyscall page refcounting error" (number mark "U       carnil@debia Sep 10   42/1709  " thread-indent "\"Re: [oss-security] CVE Request: Linux kernel vsyscall page refcounting error\"\n") "<CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>" ("<CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE Request: Linux kernel vsyscall page refcounting error" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27904 invoked by uid 550); 10 Sep 2020 14:53:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27884 invoked from network); 10 Sep 2020 14:53:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BdsnHbEAE3KAPsj3xA2LOi5bXKv76/d9jOKy7uxQh2U=;
        b=AOM2vk4XEsxaSzNaFS0ATb5fj1jKrOzmVKKvz2yPn+K0FduCpDb0s81YFTqlek6Lrn
         ab5D7jqhaSYE14VfW0nTs2Nfggj0Yd8EIw0O8YfMrDDUbBZ3oeXqj8TFOQihUSwaaur/
         YnvQ4hUYSNEXTOkmaT47lQilfAvJwrjXy5RzWfE+/Dfbn+xGzXskstEQxQGPIj7cr3JT
         3JiQhYkTgr8css1FlwQiMn+qcOqcsVef6RgGunZLTFia5VjDdF8ASs/IuGSVOaWdCrY9
         w6U09kjWFGsNExuSWw0p4hX910r422rdLxACWOI6C0CKH4sor1Br9AdU17wNQIqd2s5j
         XRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=BdsnHbEAE3KAPsj3xA2LOi5bXKv76/d9jOKy7uxQh2U=;
        b=s7yt9K6oltHJjDfHd3/7dhS7F/2itGBPFEDCQIfPIay0bVmDGCPyD6l2h3yKqiO8s9
         ybBgaHcrGlLRRZHtZ6wy2subplEhQUw+hCrp6VUZ4vx+yKc4lTUBBHecKHWvsPXXw1vo
         RNUHUT1fdL0//jj2V07It9QcjiJoTBXTNPpj52M6y3C7mFRPDMAby+CgS0eXDmqt0KYl
         MfI7cokrfFjkE3fIjdQWIrVFKAXazBmRavahW93f/XT6P1uC0LLTbmJtS6CURV/oGo/B
         L0AizQwnELcCCV+rhTEhjeka+0O+lvRj/ZPwtRRXTPKzadYbP7+0PZUz5oYbkBNK4TVJ
         8VZQ==
X-Gm-Message-State: AOAM5303rdVbk7FJgtbY16Cp6IgI32ajgSxdP1QPpvjy5QMYJjR6aBVI
	xpkf1oy2/XhQfS2Qh0ZQovuV8aGnRP9+XQ==
X-Google-Smtp-Source: ABdhPJxZJ/86pRBpliCd1nJIY2wGVglPMraqZ8TVH/T0W6Yz97GMaP/UZKiitZM5iNXXJno1FBYGDQ==
X-Received: by 2002:adf:ba10:: with SMTP id o16mr9574006wrg.100.1599749570886;
        Thu, 10 Sep 2020 07:52:50 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 10 Sep 2020 16:52:48 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Andy Lutomirski <luto@kernel.org>
Cc: oss security list <oss-security@lists.openwall.com>
Message-ID: <20200910145248.GB79015@eldamar.local>
References: <CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrXCbDDPe_Z2xxycPPaFC4pxaJYYkGLC4CsiDaRB9BVgMg@mail.gmail.com>
Subject: Re: [oss-security] CVE Request: Linux kernel vsyscall page
 refcounting error

On Tue, Sep 08, 2020 at 08:33:00AM -0700, Andy Lutomirski wrote:
> Linux 5.7 and 5.8 have a bug in the reference counting of the struct
> page that backs the vsyscall page.  The result is a refcount
> underflow.  This can be triggered by any 64-bit process that is
> permitted to use ptrace() or process_vm_readv().  A creative attacker
> can probably achieve kernel code escalation by using this bug.
> 
> You can prevent the issue from triggering by booting with
> vsyscall=xonly or vsyscall=none.  You can also effectively hotpatch a
> kernel with suitable hardening options by running the updated test
> case noted below -- the test case will underflow the refcount past
> zero, preventing further use of the page.  (A real attacker would
> carefully underflow it exactly to zero but not past.)  Or you can fix
> your kernel.
> 
> (No one should be using vsyscall=emulate any more unless they have a
> very specific use case that requires it.  vsyscall=xonly is better in
> almost all cases.  For some reason, Fedora still seems to be using
> emulate mode, though.)
> 
> Fixed by:
> 
> commit 9fa2dd946743ae6f30dc4830da19147bf100a7f2
> Author: Dave Hansen <dave.hansen@linux.intel.com>
> Date:   Thu Sep 3 13:40:28 2020 -0700
> 
>     mm: fix pin vs. gup mismatch with gate pages
> 
> and tested a little better by:
> 
> commit 8891adc61dce2a8a41fc0c23262b681c3ec4b73a
> Author: Andy Lutomirski <luto@kernel.org>
> Date:   Thu Sep 3 13:40:30 2020 -0700
> 
>     selftests/x86/test_vsyscall: Improve the process_vm_readv() test

CVE-2020-25221 has been assigned by MITRE for this issue (note one
cannot request anymore CVEs through that list but one can use
https://cveform.mitre.org/)

Regards,
Salvatore
