X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1715" "Wednesday" "15" "April" "2015" "20:05:30" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>" "48" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041603:05:30" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   48/1715  " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>" "<CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11872 invoked by uid 550); 16 Apr 2015 03:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11849 invoked from network); 16 Apr 2015 03:06:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=wd8D5LZrLFEGGamL48PABQl2oGxJjhUS/f0OfyW9bxY=;
        b=LUYx3OV3MQ0oA2t1TEo4FPnMuICEWobZWBehYkE4D/zo2CaVL7DOEyTX1nJKeh+HSh
         ig3gWGnkwnWKi0aABUJMSrFTevTh+XYC3MocS/eNRc02gMIKiCCGPSWkwyU5SYy/ggOK
         KhhWYgvCHGCW/moKulD14kTxc/JtleylS9p9gTOAVBhE+kkUb8Mqx9/zWSuRRCHLgiXi
         f3svM8ff5hobtMm8BAD6lv0PklBV0l//0vYJ51IB0P3C3diF76pEW8uh9XhOqwJBSPuy
         H00Av66QljNeffYDKD7MFuIbx3/Ustl2XzbzMLscmAKApkY5Jyo/8Up59Ty1FFU1K9W0
         2n9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=wd8D5LZrLFEGGamL48PABQl2oGxJjhUS/f0OfyW9bxY=;
        b=Zm06uJ2DBSOa/yX0NyXjQJ0vIgtaSyvgzGVAV7bV7qf+E+Y7aI0mmTrWhgDFGYnlyL
         RDFif1ASqZ2I/12TKUladl6rqpu+kBoMo0yWc7wF7bZqMq6fRK6AoHtYgyrumdwFgLs6
         oh5/fLPDbgMOtMaMlUOkExu+CS+vjT7g4RKxQfQq8/5w15IF66uzCk0WqqZWEJ1huQTa
         HiTku2IbxrRTm4TKNnoA3l3OLAChfVfKwr0zozlEJ3YKuDqsLMW/m+d0FB1EqSpyJHbC
         Ed3A4LiDXbF4u8SKze7tY4FTyZTVReL/sBqhPWF7BJQhRKtv6Ze4/Ufp07QEviLgpQzX
         sSVA==
X-Gm-Message-State: ALoCoQmtfxo5FSB0sacQex3EhkB+0+Sfp271gkiAGs5owqowM77UWNAbbzuU52GCh9m66VPfsbFc
X-Received: by 10.55.33.94 with SMTP id h91mr58552670qkh.69.1429153550965;
 Wed, 15 Apr 2015 20:05:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd> <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
 <CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>
Message-ID: <CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Wed, 15 Apr 2015 20:05:30 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

On Wed, Apr 15, 2015 at 12:55 PM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Apr 15, 2015 at 11:48 AM, Tavis Ormandy <taviso@google.com> wrote:
>> FWIW, I verified this is exploitable.
>>
>
> Here's the script I used to verify, it should create the file
> /etc/rootfiletest. By using the partial trick or creating parse
> errors, this is easy to turn into a root shell.

It looks like there's a new patch here:
https://launchpadlibrarian.net/203416094/apport.diff

In get_parentns_pid code, it looks like it has the same problem as
before in that there's no guarantee ppid isn't recycled (possibly by
root). Also, you can easily get an untrusted process reparented to
init. If you're not convinced of this, try this:

$ bash -c 'sleep 600 & echo $!; disown -ah'
28396
$ egrep '(PPid|Name):' /proc/28396/status
Name: sleep
PPid: 1

I'm almost certain it's not possible for the core_patten handler to
perform any meaningful analysis on the parent process.

This code is definitely not sufficient:

        os.chdir("/proc/%s/" % ppid)
        ...
        with open("status", "r") as fd:
        ....
                            if line.startswith("Uid:"):


Because you can just wait for ppid to be recycled before the chdir().
The UDS inode validation is a neat idea, but I don't think it works -
the obvious case is reparenting to init and then using one of the
inode numbers init uses, but even if you special-case init, pid
recycling is possible.

I saw the duplicate inode checks, but that doesn't work....it's racy,
and you can just use a netlink socket or similar.

Once you've passed this check, it's a controlled lxc.Container() and
you can use my previous PoC to verify that is exploitable.

Tavis.
