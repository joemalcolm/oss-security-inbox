X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["865" "Thursday" "15" "October" "2015" "10:30:04" "+0200" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speiro@ai2.upv.es" "<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>" "27" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" nil nil nil "10" "2015101508:30:04" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" (number mark "U       speiro@ai2.u Oct 15   27/865   " thread-indent "\"[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22350 invoked by uid 550); 15 Oct 2015 08:41:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17483 invoked from network); 15 Oct 2015 08:30:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-type;
        bh=MK8f3p50U1KNz0wlqQBxOkRW4yV2V70j0H1SHxFJX40=;
        b=gziDbvQASNH1i+GMdwrcET3oFjNkFmbdDfQpKCqENA+XgM7dGeVatFm4AibSaKyYTV
         BwXJyOuGXWJhE8ZQ9muqj2dCG95RuAJd0+ErD8tifTwUBlyzYxDEs4fGOMRm1P0SqPHU
         fLwDOz41l/bvJpaIx7MNdEyCwE1nbDuQfWN9dW3XULTWAskNwZ3n4gVQkymdu78zWhkX
         WDQu45pURJqDvSugADPHwpHRAPhx5eYMsUOnQ4yzHau+YsVYsYMmmZBP4C6mbAhOhm6W
         fXQ7zwMhOD5xC1Hau3+oGLuNJQ73lcbRnLICUhP6gZh5unhnyZgf8mEurjzlh4+nxAgP
         gyLw==
X-Received: by 10.180.90.229 with SMTP id bz5mr34322624wib.46.1444897823954;
 Thu, 15 Oct 2015 01:30:23 -0700 (PDT)
MIME-Version: 1.0
X-Google-Sender-Auth: jK7ompakOZStpfdt22AC9b3GYK0
Message-ID: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043be276889edc0522207d86
Date: Thu, 15 Oct 2015 10:30:04 +0200
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speiro@ai2.upv.es>
Reply-To: oss-security@lists.openwall.com
Sender: saoret.one@gmail.com
Subject: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb
To: oss-security@lists.openwall.com

--f46d043be276889edc0522207d86
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Is there a CVE for this? If not, could one be assigned, please?

     https://patchwork.kernel.org/patch/6853351/
     commit e203db293863fa15b4b1917d4398fb5bd63c4e88
     iommu/omap: Fix debug_read_tlb() to use seq_printf()

     The debug_read_tlb() uses the sprintf() functions directly on the
buffer
     allocated by buf =3D kmalloc(count), without taking into account the s=
ize
     of the buffer, with the consequence corrupting the heap, depending on
     the count requested by the user.

     The patch fixes the issue replacing sprintf() by seq_printf().

--
Salva Peir=C3=B3 @ https://speirofr.appspot.com
CS Researcher & Software Engineer
Universitat Polit=C3=A8cnica de Val=C3=A8ncia, Spain.

--f46d043be276889edc0522207d86--
