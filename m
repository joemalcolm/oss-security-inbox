X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1987" "Tuesday" "15" "December" "2015" "04:48:25" "+0100" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145phM81D08ZaeKXXtWNQQktGSuXRR85TY_=jhQYcdruGTpA@mail.gmail.com>" "44" "Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" "^Cc:" nil nil "12" "2015121503:48:25" "[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       robert@swiec Dec 15   44/1987  " thread-indent "\"Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<566F35F9.4070106@stressinduktion.org>" ("<20151211164118.344948BC165@smtpvmsrv1.mitre.org>" "<566F35F9.4070106@stressinduktion.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12253 invoked by uid 550); 15 Dec 2015 03:48:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12235 invoked from network); 15 Dec 2015 03:48:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=uIltKiieXUkTE1OZAcxCuDLmbHFaQD6HHA+0N0swXE4=;
        b=RqMLh2lmta2evJR6GGfLLfS9XosLGHJHGdfQPARLdluRlhc5Vu2kzKOW4r5rBzVAFV
         ntFpoVeYiM+6EOPQTGNMk582QjPb+RWjmcQ9uKQ6ysEoOwdrPaHa/DDaI/YuElyBcA8n
         s31F1/MjUHl/NzSuiOJxppZQxrT/furCthqAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=uIltKiieXUkTE1OZAcxCuDLmbHFaQD6HHA+0N0swXE4=;
        b=SiDpMHIsCS769ujopsdxeH7g4SE8ywZfYQ1pKKNnSfQbnA44RIRE6yE1cUftQld76k
         NiSXdH28kIJev4fe5eNeCq93597QAfo5tmG4cpchknU4D5dpWbUmhZz3HFZlATbo3iNW
         OwOYbEb3eo9bbTwOt63Jc3lKgE53Hf7xyWNjq8zF9hqH5g1c7R+GjtUkrArAiGS5VKqy
         c89rs2P4ui/G9L9vPGIoUwxX3/ALxVHaS1rIIIYzydw3mPWEl1yVhCQpd/Bi6WpqaNSb
         prZAVHKfaNKnEFU7QkcIpvXHJ6Cm5GndBYmUQuEPJMHY5tOPV2KYi3Fhm1+2Xa7LXRhK
         ZyQQ==
X-Gm-Message-State: ALoCoQkF5za3d9xJ2Sv5RMtfYwokSScU7PfbXZyofonhnTFESSbvoffc3k3IPYdsZT9f9D5A+xmtZ0n++JBHOKE0fmrEr2suzw==
MIME-Version: 1.0
X-Received: by 10.31.6.75 with SMTP id 72mr27742873vkg.105.1450151305788; Mon,
 14 Dec 2015 19:48:25 -0800 (PST)
In-Reply-To: <566F35F9.4070106@stressinduktion.org>
References: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
	<566F35F9.4070106@stressinduktion.org>
Message-ID: <CAP145phM81D08ZaeKXXtWNQQktGSuXRR85TY_=jhQYcdruGTpA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: guoyonggang@360.cn, cve-assign@mitre.org
Date: Tue, 15 Dec 2015 04:48:25 +0100
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect
 cause a denial of service
To: oss-security@lists.openwall.com

> > Use CVE-2015-8543 for the originally identified bug. We realize that,
> > for example,
> > http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/net/ipv4/af_inet.c
> > has not yet been changed. If Linux kernel developers determine that
> > multiple independent bugs result in situations where
> > sk->sk_prot->get_port is NULL above, then it is possible that
> > additional CVE IDs will be assigned later.
>
> The following patch fixes this issue:
>
> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=79462ad02e861803b3840cc782248c7359451cd9
>
> It is queued up for -stable.
>

Not sure if it's important for you, but the description of this diff
may not be exactly correct:

a) ... as root ..

If a given kernel supports CLONE_NEWUSER then everybody can create
SOCK_RAW sockets. And CLONE_NEWUSER seems to be enabled with most
modern Linux distros.

b). .. could simply crash the kernel ..

It'll cause GPF in the supervisor mode, and it seems that with most of
supported CPU architectures under Linux, this will actually cause
SIGSEGV to be sent to the user-land counterpart of the kernel thread
which caused such GPF. So, it's not really crash of the kernel in most
cases (may depend on sysctl and CPU architecture in use though).
However, given that such GPF can happen when the socket struct seems
to be locked, this could potentially cause some kernel dead-locks with
subsequent accesses to sk (may result in unkillable processes and
similar artifacts)

Also, it could be potentially turned into a privilege escalation
problem if there was a way to map the NULL page. Under x86/x86-64 I
reviewed the code (install_special_mapping() and friends from mmap.c)
and it seems to be correctly protected. But if anybody is using any
alternative CPU architecture, I'd suggest looking at their
arch-specific vdso/vvar mapping code. In case the address is
controllable by user, this could likely allow for mapping of the NULL
page and pwning the kernel.
