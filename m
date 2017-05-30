X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Tuesday" "30" "May" "2017" "21:12:40" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+wzhV4PBENUzD5SeCp_vjtT84B-ER+cWU9=FvZxfavJhw@mail.gmail.com>" "14" "[oss-security] Linux kernel: CVE-2017-9242: out-of-bounds write in __ip6_append_data" nil nil nil "5" "2017053019:12:40" "[oss-security] Linux kernel: CVE-2017-9242: out-of-bounds write in __ip6_append_data" (number mark "U       andreyknvl@g May 30   14/593   " thread-indent "\"[oss-security] Linux kernel: CVE-2017-9242: out-of-bounds write in __ip6_append_data\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30181 invoked by uid 550); 30 May 2017 19:12:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30109 invoked from network); 30 May 2017 19:12:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=KHtoKvLS7l4/NnkaxnFQdm942qkCWsKQJLX4zqZnEEA=;
        b=EbB/tKl2lmyPThRG4cvpznCz3mN9xQWihloYA4Nrnv2JAEWDi1WYpzBoLPXSSVOdOH
         A7T1iSA/cd0mijzOSX555bsATEHbg8npkutzYt7X4/mQH4TXVaAGcrmgq2mLUuGu6UTp
         YmbGlWrqxJU9jCuK4+V4ASMMYPr5Nj2O65YQEbOWFtdnOIqXXIkSodOmvwVgVsfFh1E3
         oBW1vGYair58szxW4kXNQOwX13x4YrXGL2KOircARD559/rGNg5Q6AuU7UhDV0D+g6/2
         VxNBkSxYp1wj5lb3/pVDAHun69pmEVnupt/ViL+64nzpV9GSfeC6fa4jVcbC/4bE34Qs
         r+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=KHtoKvLS7l4/NnkaxnFQdm942qkCWsKQJLX4zqZnEEA=;
        b=gzI/5MKX+n9+ype13yEyV+gqQ5iS5CVjd5ScA8nFTVuoQrzzNnkTpoQlWnU2GYU9Xb
         hOIbBTn6IjSNXLIkJ0v3a4jSaU2U/XNBZZsc5FlQIwMCl+Evg2cnw4mDI/1FPYk2PrH1
         KC5vLxcXzD0cZjSIxgMh1xOwNAAD4Nqeilm5MDGvHLzf/WhmLjDtCdQRXcmqNUfReORX
         oPqNuKwJ1omafuuDC3RXLS45Dne6/WhfxTUFVepn4OjE5EFHbE7s9sjvw4sc9WCv3bts
         R2taKcMHI70h7sfdheMGNNjFWQnOt5dog0QULbHU4yim4Zt0UCflXbEAMmX8UIRWHxcw
         hnHg==
X-Gm-Message-State: AODbwcBkSL0AoPxd5mUG9AxwePSxVNzJ/olYusFh9a7AcODYIxrvKx6q
	uofwcpUH67ikO7g8igQWE2VE1lmF7uQEfeI=
X-Received: by 10.129.172.65 with SMTP id z1mr16637814ywj.237.1496171561179;
 Tue, 30 May 2017 12:12:41 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 30 May 2017 21:12:40 +0200
Message-ID: <CAAeHK+wzhV4PBENUzD5SeCp_vjtT84B-ER+cWU9=FvZxfavJhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: idaifish@gmail.com, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: CVE-2017-9242: out-of-bounds write in __ip6_append_data

The following CVE was assigned for an out-of-bounds write in IPv6
socket buffers.

The bug was found with syzkaller.

* CVE-2017-9242

The __ip6_append_data function in net/ipv6/ip6_output.c in the Linux
kernel through 4.11.3 is too late in checking whether an overwrite of
an skb data structure may occur, which allows local users to cause a
denial of service (system crash) via crafted system calls.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9242
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=232cd35d0804cc241eb887bb8d4d9b3b9881c64a
