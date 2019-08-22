X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4470" "Thursday" "22" "August" "2019" "17:16:03" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "102" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082215:16:03" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        andreyknvl@g Aug 22  102/4470  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19990 invoked by uid 550); 22 Aug 2019 15:16:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19972 invoked from network); 22 Aug 2019 15:16:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=hNUwMLztI6uPLWoKM1J9Gv99vIPF+ot2iZc6QfWZTrc=;
        b=EmE8NxvT49LMHpHo2swaj6lUGTi4KHjOOJYciu6V8L6a7dYn20COtAXWC4OcPQCF+3
         tvieGZCN3tYymHK0skcrQ8xRkcSCzgw3R2+r9rlw6378xYyt8BoeJrHi+VfCS/huQDef
         iOApALSQRpBZiW0kDhFWm7fCuPYDv7izTLBIHp8RmnLMpoFNokHajsNbmcx/gFXT3Hou
         GdiXqKYMv9eo1uGh0B8FmCrbLor2EBHiQjyQrNeh0unV8d+n5sydWgHCfeTM32sgftZ6
         KR3J8SDKe01jj88Fc8xz8j0LXYan2JCNeEgToGtKMOESv2Qc5bGD/HLIdnnGuAqBCuFx
         Q/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=hNUwMLztI6uPLWoKM1J9Gv99vIPF+ot2iZc6QfWZTrc=;
        b=OGzTWHrPFJ8N+ikHvvOu7mB4iuFu168YQK1+2vB40UhF/yE8Mh09/xpFOyTebtSDCh
         SaTT6IVqBqA+MUvGgEVfYtM+cy/MyQCYb4BN7EycJCenixK9ReDL++wF4W6Aqn6oZLLs
         82d8AG8X45mSkb32SolmI3aIuY5ZNILSl7o/+mTwGmfbrV3eSpqVTKxuGmbw/GL9XQK2
         KnggMLCdgaitTwQB0L2ZzZ9Jymrk+vHPFXF67q8kkU1kGSyL6lm4t9JBGZFVIFe5F20A
         5O+iyMM5yyH+gkHTC87b1IK7s72ri4d5iowNtxfO4QglnlacuOU8CGy4Y89MALEHt5Uf
         2H5g==
X-Gm-Message-State: APjAAAUjfpJipALNkvQBtN/tsUdfnnyQ11cl3YBexx0JV1oeC7yOtCYg
	zkrjlB9Kdga40ko6HQFaeYF5I+LkOMxHFc6r7+Nq8fPF
X-Google-Smtp-Source: APXvYqy26UPE2hOxX+WDUsq4u53mUovtTkve+ekum32nYUv9429vkM+BqnxvUoprxtUKoTWHkfRKaV6d0TDNIMy50GY=
X-Received: by 2002:a2e:948:: with SMTP id 69mr21149502ljj.39.1566486974973;
 Thu, 22 Aug 2019 08:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com> <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
In-Reply-To: <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
Message-ID: <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Aug 2019 17:16:03 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 1:00 PM John Haxby <john.haxby@oracle.com> wrote:
>
>
>
> > On 22 Aug 2019, at 10:31, Marcus Meissner <meissner@suse.de> wrote:
> >
> > On Thu, Aug 22, 2019 at 10:04:42AM +0100, John Haxby wrote:
> >>
> >>
> >>> On 20 Aug 2019, at 19:20, Andrey Konovalov <andreyknvl@gmail.com> wro=
te:
> >>>
> >>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15216
> >>>
> >>> An issue was discovered in the Linux kernel before 5.0.14. There is a
> >>> NULL pointer dereference caused by a malicious USB device in the
> >>> drivers/usb/misc/yurex.c driver.
> >>>
> >>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15217
> >>>
> >>> An issue was discovered in the Linux kernel before 5.2.3. There is a
> >>> NULL pointer dereference caused by a malicious USB device in the
> >>> drivers/media/usb/zr364xx/zr364xx.c driver.
> >>>
> >>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15218
> >>>
> >>> An issue was discovered in the Linux kernel before 5.1.8. There is a
> >>> NULL pointer dereference caused by a malicious USB device in the
> >>> drivers/media/usb/siano/smsusb.c driver.
> >>>
> >>> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15219
> >>>
> >>> An issue was discovered in the Linux kernel before 5.1.8. There is a
> >>> NULL pointer dereference caused by a malicious USB device in the
> >>> drivers/usb/misc/sisusbvga/sisusb.c driver.
> >>
> >>
> >> Are these even realistic?   If I'm going to leave malicious USB device=
s in the parking lot for mischief am I going to rely on the unknown victim =
running a Linux distro with the requisite kernel modules or am I going to j=
ust drop a cheap and near-universal USB killer?
> >>
> >> If I'm going to be connecting the USB device to unguarded laptops myse=
lf to crash them, as opposed to destroy them, why not just casually lean on=
 the power button for a few seconds?[1]
> >>
> >> Actually, this is the CVSS3 score for a laptop's power button: 4.6 (CV=
SS:3.0/AV:P/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (Medium).   There isn't a vector=
 for a USB killer because there's no "A:P" (permanent loss).
> >>
> >> I'm not saying that these aren't bugs that should be fixed, far from i=
t.  That's not the issue.  The issue is that, for example, PCI DSS requires=
 fixes for anything with a score >=3D 4.0 so we have endless end-users dema=
nding fixes for their servers which don't have even physical access or, ind=
eed, physical presence.  It's not even demanding the fixes as they may alre=
ady be fixed or simply not applicable because the affected driver isn't pre=
sent; it's the hours or days wasted verifying that the fix available or not=
 present.[2]
> >>
> >>
> >>
> >> Frustrated of Lancashire, jch
> >>
> >>
> >> [1] Some may remember the VAX 11/750 reset button.  In order to be abl=
e to use the serial console (usually a DECwriter) you had to have the key i=
n which also enabled the reset button.   Before I put the VAX "Do Not Copy =
this Key" key (yes, it fits all 750s) I pressed accidentally pressed the re=
set button a couple of times just by propping myself up on the machine.  Sp=
ectacularly bad design by today's standards.
> >>
> >>
> >> [2] Full disclosure.  It's ultimately about me because it's me that ev=
entually gets the "customer requires fix for CVE-2019-15216" :)
> >
> > In the past we have considered Denial Of Service only USB vulnerabilite=
s as non-issues, as physical access
> > can cause the same.
>
> <nod>
>
> >
> > USB Vulnerabilities where you can achieve code execution by a malicious=
 USB device are something else though and in my opinion warrant a CVE.
> >
>
> I carefully didn't quote any of the UAF bugs -- those definitely do warra=
nt a CVE.   Null pointer dereference is a DoS.

Yeah, I don't think those DoS USB bugs are in any way useful to an
attacker. I've looked at existing USB CVEs before I've started
reporting these, and MITRE does assign CVEs to such issues. I don't
know whether they should warrant CVEs or not.

On a side note, currently there's an issue with many Linux kernel bugs
being fixed, but not backported to distro kernels. Those bugs might
have security implications, but there's no way to know that, unless
someone specifically spends time to assess them in that regard.
Requesting CVEs for those bugs is a way to get the fixes into distro
kernels (even though that doesn't always work promptly [1] :).

[1] https://www.openwall.com/lists/oss-security/2018/10/30/2
