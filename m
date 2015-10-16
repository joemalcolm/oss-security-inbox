X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1377" "Friday" "16" "October" "2015" "08:56:46" "+0200" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speiro@ai2.upv.es" "<CAJpd-bHNU1HDh6odDqiVDmqJK=_H0pfwUx=AnwV292T+gKqokA@mail.gmail.com>" "44" "Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" nil nil nil "10" "2015101606:56:46" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" (number mark "        speiro@ai2.u Oct 16   44/1377  " thread-indent "\"Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb\"\n") "<20151015135348.GA8128@kroah.com>" ("<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>" "<20151015135348.GA8128@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26467 invoked by uid 550); 16 Oct 2015 07:02:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21636 invoked from network); 16 Oct 2015 06:57:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:sender:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=ERoEoHwjdAZm5u0BCLbUy4Xmf6hJd9p6l+KorepSyXA=;
        b=Eny7xH4Cp/jcQddqgfd4f3bYw0vgJGCT3Y3XKNq7MIGyPwg+5NlDwYeZKZIen9nuTr
         aQEYRbHhISE8AlUkYxHOT5qPWtasOlkw3FHqRRQ0/Hib6Fi+GFZOUTIMmU6/Xwpa+W8O
         t99G3x00Qpy5NUIQHsG0XTgfw8cezVShvhfdpINwRTU1nr4cNvZIih8DdpGZuj8Gu8e4
         Ui4ecEBpD1ePNGLUny4SXPPuSvtg/lQy/+lfk9LtbH1jZdhrLATIzuRtoCtTAR/oGGN8
         M/g42fe5viuGSFuclG533MDHPy2PyLDV/JCYlOI1sPW6iDyZVP+ZF4hvVPRAkWMEvToO
         v6iQ==
X-Received: by 10.194.113.101 with SMTP id ix5mr15185460wjb.107.1444978625560;
 Thu, 15 Oct 2015 23:57:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20151015135348.GA8128@kroah.com>
References: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
 <20151015135348.GA8128@kroah.com>
X-Google-Sender-Auth: ljEXwdAlma7BrSLIZ4mDs62Ing0
Message-ID: <CAJpd-bHNU1HDh6odDqiVDmqJK=_H0pfwUx=AnwV292T+gKqokA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1130c8c6af48360522334dc1
Cc: Greg KH <greg@kroah.com>
Date: Fri, 16 Oct 2015 08:56:46 +0200
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speiro@ai2.upv.es>
Reply-To: oss-security@lists.openwall.com
Sender: saoret.one@gmail.com
Subject: Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb
To: oss-security@lists.openwall.com

--001a1130c8c6af48360522334dc1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 10/15/15, Greg KH <greg@kroah.com> wrote:
> On Thu, Oct 15, 2015 at 10:30:04AM +0200, Salva Peir=C3=B3 wrote:
>> Hello,
>>
>> Is there a CVE for this? If not, could one be assigned, please?
>>
>>      https://patchwork.kernel.org/patch/6853351/
>>      commit e203db293863fa15b4b1917d4398fb5bd63c4e88
>>      iommu/omap: Fix debug_read_tlb() to use seq_printf()
>>
>>      The debug_read_tlb() uses the sprintf() functions directly on the
>> buffer
>>      allocated by buf =3D kmalloc(count), without taking into account the
>> size
>>      of the buffer, with the consequence corrupting the heap, depending
>> on
>>      the count requested by the user.
>>
>>      The patch fixes the issue replacing sprintf() by seq_printf().
>
> For a root-only-readable file?  Why is a CVE needed?
>
> thanks,
>
> greg k-h
>

When the root user reads from /sys/kernel/debug/omap_iommu/mmu*/tlb
this leads to a corruption of the SLUB allocator control structures.
Later use of the SLUB cache causes a kernel panic, and the machine stops
responding.

As triggering the bug, causes the machine to stop responding,
the issue impacts the availability of the whole machine and its services,
that's why I consider requesting a CVE.

--
salva

--001a1130c8c6af48360522334dc1--
