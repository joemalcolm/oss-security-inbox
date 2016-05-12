X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1878" "Thursday" "12" "May" "2016" "23:31:27" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTri+WhHVtePMwvQETGoabDot8UE=ZG+Xq8jG8WXP3+C1n1Q@mail.gmail.com>" "54" "[oss-security] Re: Linux Kernel bpf related UAF" nil nil nil "5" "2016051215:31:27" "[oss-security] Re: Linux Kernel bpf related UAF" (number mark "U       marco.gra@gm May 12   54/1878  " thread-indent "\"[oss-security] Re: Linux Kernel bpf related UAF\"\n") "<20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>" ("<CAFkTriLitb9v4MZn5b2HV9HGpu6VWHifgR3VZhDYoQwjGyaWBg@mail.gmail.com>" "<20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14244 invoked by uid 550); 12 May 2016 15:31:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14182 invoked from network); 12 May 2016 15:31:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=mRmYOqkMFwFPr3/j1tqLpYy21w3lGuIuGKUAj3yN0yw=;
        b=LHSG3pD4nMUVtxxm9ys3Lbvf3AfAsItUHQI5fmSSY2gasGjFAd0+QHODS2NUGtJbF8
         GhjmBLCVA69M91Uj0aRPxFqTd9kIgX5MSaJd+VNSLzUwUVrvE4CJE1EOeBWQ0tWPKPap
         l5V+IXRCp6AX1YtOVYAv9sfkayueHzBzR12d9OqDAE7C80sWfjUqUOo0JrJDKmvCX+Al
         EsNyEAAA9hmSyBTdasiSMFV6+GSpTpcr+NNmOtvaYSMvxTGIh8C0asJWSCBTA3qiriM3
         sKwgbaqrLz5s/q6k7KAtLQVzebOZ2LBHMePRKr+Z+4XlU2C2uYfLQOSeBkAdIXjUFN4o
         dP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=mRmYOqkMFwFPr3/j1tqLpYy21w3lGuIuGKUAj3yN0yw=;
        b=Ft48HBH6E6Vp/5UYB3eZGFI5aTLcSCmyIhsMo/uu0rs+RDDB5l0WpXoie1KZyknhTx
         JtiqIbkNHkY6dYarz+7+lIWOpHmVVElKY5+CmOLTP31RbEaiykWxieDO361cm28iv2KS
         mkNpbrxzMUMRKsp0VzvYkbX/6BvfJLDpBV/0GahE4tKXjOvQ1eLPj7kU1KFlcYyylhL2
         /BsAiFi6xiCDxeTKHOkPAUEolAiMfqyp4IPDYgHLPck84O2GSW5MlvxLRJgxL23h/w8Q
         Ueep6+/svJq8bZDaehvVN4Rf4Cl764cmESU7IfbQEbtAPDvoDANbX3CUfI7iSvTAtQxO
         T1fw==
X-Gm-Message-State: AOPr4FWv+BwZDphkYUo6vMEZQ83B2wqCJB/rWL1PMRz0TA5f7e+SPY1ZkWOm+hz/bvTOE+asK8VkAfNGkqDq7w==
MIME-Version: 1.0
X-Received: by 10.202.94.132 with SMTP id s126mr5971678oib.34.1463067087259;
 Thu, 12 May 2016 08:31:27 -0700 (PDT)
In-Reply-To: <20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>
References: <CAFkTriLitb9v4MZn5b2HV9HGpu6VWHifgR3VZhDYoQwjGyaWBg@mail.gmail.com>
	<20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>
Date: Thu, 12 May 2016 23:31:27 +0800
Message-ID: <CAFkTri+WhHVtePMwvQETGoabDot8UE=ZG+Xq8jG8WXP3+C1n1Q@mail.gmail.com>
From: Marco Grassi <marco.gra@gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a113d516004cf3d0532a6da07
Subject: [oss-security] Re: Linux Kernel bpf related UAF

--001a113d516004cf3d0532a6da07
Content-Type: text/plain; charset=UTF-8

https://lkml.org/lkml/2016/4/17/125

Kudos for @revskills for pointing out ^^
On May 12, 2016 23:27, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > the following reproducer will cause a UAF of a previously allocated
> memory
> > in bpf.
> >
> > You can reproduce with linux kernel master, or 4.6-rc6 4.6-rc7 and maybe
> > other kernel versions.
>
> > int main(int argc, char **argv)
> > ...
> > r[0] = syscall(SYS_mmap, ...
> > ...
> > r[5] = syscall(SYS_bpf, ...
>
> Use CVE-2016-4794. (We did not run any tests, or look for other
> information, to investigate whether the same reproducer or a similar
> reproducer affects any kernel version that's considered stable or
> longterm.)
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXNKCMAAoJEHb/MwWLVhi2g8QP/3vBTsa8xuk8NWYWsv3jwNGu
> Ugpl+hUdkQHW4aFzxx96nePBPZpfVeNCGRMdtlCcKVb9wFNUSbRwDPBHFXrfKz9R
> KVf9VHi4CMcBlvPS0MvGZg52SQPAAO7O7cCWpEAdhyxW2gPPxKYo98x4xNuNVlWx
> POD/dVK9ll261g6W+CUSYPtwJgIrPSddnnNCUvbB+XIvV87MGSLp+nE6h8I3L2Yp
> ZisKaT6z6aHqqC0bcySk6V04UlbkfL83eahAz5bWvZeywUEjYvN+kOUlgR8TOxLC
> 8bIQ28Q043XM3VC853rhPQqe5enV6KDRrLgDu1paeFdKYcaHjGkHvkwjRfxjJZIC
> EsNdEl2vGjB1iGTUnFiUep9BteZBRrwfmaTE1yAseaUjEAx/3UK85PpTEqmNkON6
> 1HCInP0LOeZMcggVzBKgRKCXKJZiInxEtSBXhxnPGgxagkOD7enw86gWflSqz3ca
> wdRm/oADgCrQk6CsSGgusCouSyndC/T6ZRCa2/7vCecm2BBi8gxRuT4TZem3A6Ij
> x+zfK7QaMDtELPGL+/rVOSgVCTaihz7oGeBKzqJeuyAv7zN0LxYoNlBsmsoBSTYJ
> Uftvf0T7JTR3AQd1+tB2kOnyGOW4jSCNu66xNifR29j1C7jvKB0+uh891s/3mkzo
> Wttcn/XLKpzXFWtN+mjb
> =DWFZ
> -----END PGP SIGNATURE-----
>

--001a113d516004cf3d0532a6da07--
