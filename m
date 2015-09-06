X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2040" "Sunday" "6" "September" "2015" "10:26:19" "+0800" "Qinghao Tang" "luodalongde@gmail.com" "<CAPcZBq4gzYosDo4EUGeP9s_+Ngu07Ke=5n+5PVdkUQBHYSGBYg@mail.gmail.com>" "58" "[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue" nil nil nil "9" "2015090602:26:19" "[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue" (number mark "        luodalongde@ Sep  6   58/2040  " thread-indent "\"[oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue\"\n") "<20150905161154.82E526C009F@smtpvmsrv1.mitre.org>" ("<alpine.LFD.2.20.1509050128380.647@wniryva>" "<20150905161154.82E526C009F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24410 invoked by uid 550); 6 Sep 2015 06:34:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28402 invoked from network); 6 Sep 2015 02:26:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=TDqpCGKURho5f9mhjfw/JCa0bRsTZRxlJ3L7zHJ8IyY=;
        b=DfQD+QJ6O1q/qRQu0J6M0gJ5cqrpme4fHrBVJGKC00v21pp0gbZLR1tgEOywb5hRvj
         f3k9WIk5erxtfX4TjbOUCQBH/q47wywH0dDgSc8yu4+9sOL8To5G1KNfbtVxDhFHakO+
         ooCkOQB9FQRUz8IFCc0ELYIIE5zOIui4wEFhw5PAkTnNjcWt1q8IyKORPleMP+Ml/mY6
         pq35m2NJv8XPmZdIKQLdUtmOy+xJXAq+pfCBaVNKeVrT1tJ4mzC8uiTOEfI2Q+Oog8yA
         tYQ2gadUfANgAxYraepCPuVU0mUGz9cuvaMTXIiJD/Yjs67nrnwH9VDdnRx9GDVotb3P
         77Ug==
MIME-Version: 1.0
X-Received: by 10.180.8.164 with SMTP id s4mr21849889wia.5.1441506379792; Sat,
 05 Sep 2015 19:26:19 -0700 (PDT)
In-Reply-To: <20150905161154.82E526C009F@smtpvmsrv1.mitre.org>
References: <alpine.LFD.2.20.1509050128380.647@wniryva>
	<20150905161154.82E526C009F@smtpvmsrv1.mitre.org>
Message-ID: <CAPcZBq4gzYosDo4EUGeP9s_+Ngu07Ke=5n+5PVdkUQBHYSGBYg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d0442807eb585c8051f0adb79
Cc: P J P <ppandit@redhat.com>, oss-security@lists.openwall.com
Date: Sun, 6 Sep 2015 10:26:19 +0800
From: Qinghao Tang <luodalongde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request Qemu: net: e1000 infinite loop issue
To: cve-assign@mitre.org

--f46d0442807eb585c8051f0adb79
Content-Type: text/plain; charset=UTF-8

Can you disclosure this
vulneralbility officially claiming that me of the discoverer since it
will influence my KPI? Thanks.
( Qinghao Tang(tangqinghao@360.cn) from QIHU 360  company )

2015-09-06 0:11 GMT+08:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Qemu emulator built with the e1000 NIC emulation support is vulnerable
> to an
> > infinite loop issue. It could occur while processing transmit descriptor
> data
> > when sending a network packet.
> >
> > A privileged user inside guest could use this flaw to crash the Qemu
> instance
> > resulting in DoS.
>
> > https://lists.gnu.org/archive/html/qemu-devel/2015-09/msg01199.html
> >
> > [The guest can force 'bytes' to 0 by setting the hdr_len and mss
> > descriptor fields to 0.
>
> Use CVE-2015-6815.
>
> (not yet available at
> http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/e1000.c)
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJV6xP0AAoJEL54rhJi8gl5ZzIP/1DtazmDcZVyDAR0BysUdj4E
> /9Jp/RYt5iKmJ7AkYNQQDZs2C6HZ4uOQ7rVcU9zVk+9Z5WmECZ8lwrD/d1FSN6kI
> ZhpbyfkKxlFmMldKMRdYi+I/WUXYfLGiE99KiB0OaSMlH8DzWJmNDlnEAc250enO
> AQkMs7S5qLlZ0nGn0wFNIsw0mgLMNu+L62zvZ37FhISJrMdjgToNFkKMs6AjVgvB
> AsgoCsjO3V9Pxtu8RQ61iX4C33FbQv5DbYv6M+0IBffkpEb8j8nzeYwGBUFIdAfM
> +TEGMUqY5rMLRArvf+Dern5M9RuK/NUl/xtpyy1HpQJl00JAmo8xRd2H7tjQlV9y
> tWB1zhSKU6Ilr0YRPv6ZQ0I7nBoB0BiaslpObVSyKckmxOGPb6FB0UXgF/fuUBKQ
> AIOsKLdxmqqpNIwlL9jwNOURMNVlEelJqkwfoXJRk2ri8AXuJsoDQgodhTv59lBK
> HDWw2+jP12PwDDpvxHbPR1HmyeRVJBuXty73AXHki1gCtjdBYLyX6zoEMiFo56Gp
> mwmTK9IyavHxeLpkCop8XRVsKiI2JvLucXW2Epjw2DbkoaKVDyJUP7IGJAgHQdD6
> nQcT4rm37YvPG1Zgbo5Hvvtr1qe7WlLqujTFduSVqC5LCo/3JzoqKFakjII0zhzz
> Za83YKAaEH3eFasIiUrO
> =8f0T
> -----END PGP SIGNATURE-----
>

--f46d0442807eb585c8051f0adb79--
