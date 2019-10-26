X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2584" "Saturday" "26" "October" "2019" "06:37:29" "-0700" "Igor Seletskiy" "i@cloudlinux.com" "<CA+-XxSH0BqMYE51UAjNynhdCkecCv45q9pKanRRyyH=iWhDDUQ@mail.gmail.com>" "73" "Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" "^Cc:" nil nil "10" "2019102613:37:29" "[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" (number mark "        i@cloudlinux Oct 26   73/2584  " thread-indent "\"Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?\"\n") "<20191026064347.GR7189@suse.de>" ("<CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>" "<20191026064347.GR7189@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7219 invoked by uid 550); 26 Oct 2019 13:46:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3900 invoked from network); 26 Oct 2019 13:38:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZkTV1JAbl1yo1HFVTFNs0+W8+vFv60NaowwMuN8d5Qk=;
        b=CtjmWwixVOXmmO1allwHEZx8ZRWbxt63h9qTQju4dZQt4/Jb+2RRDLeB5c7dtzyOAF
         RzbdCyPOuAcmlDG7veKeaH25Y3MPJyaJQ2v/YTpHrJXgrfL4YQPtVVa0K1yNljDdR4zI
         5+7RZH1OuKAcwcyKgCVy1tQsvjOnFoZZKICxc1/I17R3vDkX8N4iu7mI29kFkSQxLnmp
         oWrv+VBBGW9SoIr0BBv8gKhjksry1uyP67w5JcTRTbm2MZDczcg8N5TZAwQ2rldno327
         RoephroB9xkjIzTaXDi6mB8TkmCKNC8XxNtmRuUowepQ0PFm7KaOiCjD8H6wDC0TjyjW
         DCwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZkTV1JAbl1yo1HFVTFNs0+W8+vFv60NaowwMuN8d5Qk=;
        b=Y+NeXjGREc9Yr1AY6kSAUQHDLHMrbmuZE1Oh14QLItjjEL1rtm3BCNZqV4mcDPGsgr
         YUMvx1M0/Xs4iuANckFyc93BSWUT9M++PW6y231EzB8xhBo9GDQbPLo0a9Y+c6luIk7E
         4vWfsi2EcPjWdxBWfjU5e1aTOR7kmKBgLmq7qb5/DLadVnz1HwI0KLMFjdZUR9Ei9MJZ
         iBrKxmnKeeetE+ws4cONOm5dRWSrfcBe/feJYbCwE/oMW+AxMicKNRgLDaj27bnE8FzU
         oLgEd9pNcdbjQAb1Hw2e0KaNOkShWdGRBJ02DIvI/SRLwZ3BLKOMIM7981Z5t2+7MI4C
         qQTQ==
X-Gm-Message-State: APjAAAVrQVPF/1+EmW4MfX4T8EXga0hyFuTy3K1jpa9FPRe00V65DSjd
	N38r70l7UtuzGMin4V8xLpbR71/sypuk64EF1QEPkbta
X-Google-Smtp-Source: APXvYqzk0qyZcgNKh/EgH/f8F1iKgvq9UEiF/qj5PLiJ758AjdtO8YqametF7nF9MEPuUx1Jt3nwgHfuWQ6oqIQ+9qY=
X-Received: by 2002:a05:6e02:d8b:: with SMTP id i11mr10925176ilj.81.1572097085656;
 Sat, 26 Oct 2019 06:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>
 <20191026064347.GR7189@suse.de>
In-Reply-To: <20191026064347.GR7189@suse.de>
Message-ID: <CA+-XxSH0BqMYE51UAjNynhdCkecCv45q9pKanRRyyH=iWhDDUQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000057ec230595d0606a"
Cc: mathias.payer@nebelwelt.net, Hui Peng <benquike@gmail.com>
Date: Sat, 26 Oct 2019 06:37:29 -0700
From: Igor Seletskiy <i@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?
To: oss-security@lists.openwall.com

--00000000000057ec230595d0606a
Content-Type: text/plain; charset="UTF-8"

I thought the DoS issue wasn't settled specifically due to USB over IP.

Regards,
Igor Seletskiy |  CEO
CloudLinux OS <https://cloudlinux.com/cloudlinuxos>   |   KernelCare
<https://www.cloudlinux.com/kernelcare>   |   Imunify360
<http://imunify360.com/>

Get 24/7 free, exceptionally good support at cloudlinux.zendesk.com
Follow us on twitter for technical updates: @CloudLinuxOS
<https://twitter.com/cloudlinuxos>


On Fri, Oct 25, 2019 at 11:44 PM Marcus Meissner <meissner@suse.de> wrote:

> On Fri, Oct 25, 2019 at 08:09:01PM +0200, Andrey Konovalov wrote:
> > Hi!
> >
> > As we keep getting more USB bugs reported by syzbot [1], I'd like to
> > figure out what to do with those in regards to CVEs. Last time I
> > requested a bunch of CVEs for USB bugs, there was a long discussion
> > about whether that is the right thing to do, see the full thread here
> > [2].
> >
> > I don't want to argue now whether CVEs are useful for the upstream
> > Linux kernel. My question is: with CVEs as they work today, do Linux
> > distros want to see CVEs filed for Linux kernel bugs that are
> > triggerable by a malicious USB device?
> >
> > Since not all USB bugs are the same, let's bucket them into:
> >
> > 1. Different kinds of DoS (e.g. null-ptr-deref).
> > 2. Info / uninitialized memory leaks.
> > 3. Bugs that lead to arbitrary code execution.
> > 4. Non-triaged memory corruptions (UAF/OOB).
> >
> > Points 1-3 refer to the bugs that have been assessed for the impact
> > that they cause, while point 4 refers to the bugs that haven't been
> > looked at closely.
> >
> > Keep in mind that:
> >
> > 1. Most of the time physical access to the USB port is required to
> > trigger these bugs.
> > 2. Sometimes, in cases of e.g. exposed USB/IP or USBAnywhere like
> > vulnerabilities [3] these bugs can be triggered remotely.
> >
> > Thanks!
> >
> > [1] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb
> >
> > [2] https://www.openwall.com/lists/oss-security/2019/08/20/2
> >
> > [3] https://github.com/eclypsium/USBAnywhere
>
> As discussed previously, "denial of service" (e.g. NULL ptr) via USB
> device seems not to classify as CVE. (With the guidance that with physical
> access you can cause more "denial of service" in other ways, like powering
> down the machine.)
>
> So 2-3 could be CVE worthy from a distro perspective.
>
> For 4 I would assume reasonable guess work if its "just" a denial of
> service or
> more for CVE guidance.
>
> Ciao, Marcus
>

--00000000000057ec230595d0606a--
