X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1953" "Friday" "19" "February" "2021" "23:55:50" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "72" "Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" nil nil nil "2" nil nil (number mark "U       rkeshri@redh Feb 19   72/1953  " thread-indent "\"Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21655 invoked by uid 550); 19 Feb 2021 18:53:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8035 invoked from network); 19 Feb 2021 18:26:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613759167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=668GFuehBDqaQ6qojsQLzas7KlcT9Zbpc3dtLlJgeFE=;
	b=aK161rfoKBP+uf6KrTcfwJPKeNkn9oiaP9scjdXpRBGJQC6qSoOjixxaBkZ3fznJlYIXfv
	4Jaw1MI7QcBGfkJJGI60/LnRcPDmK1LCtAy3C010gJvgu9DZJnEtUQqkJ3rxAa4biP1Y9X
	d4iledLr/F+DOTQ56rVHL1Bp78g+ArA=
X-MC-Unique: _SyjZD6NObixDYoOJEwr3w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=668GFuehBDqaQ6qojsQLzas7KlcT9Zbpc3dtLlJgeFE=;
        b=CK3C/3bsLMfhsD88wBAv+x4c9DkbjYkp/RliXFmgoa1iZzZqLrIb5a/S32ZwMun2rb
         PP/peKZ2apW5fjGaCZ8TZG5UpJX0YTz4659HeaEfrXPJZP838dvZwkzKZVWkpHqrQhkn
         WytTKS1CM92vBlPTKeY9FiSliGeqzHDNdPyGN6oRw7Rp9vV4KTP5jxxDxLWHqwuGR6Dr
         iI4v0V4ahnnJh3o9ya7lL5wTLeM4RWT4H2j2gj19tmBRIwZjKUWRSKpYC1RAhF2aWdKY
         m1tO9M/4WoducfjpPm2/qrzx5ZebDDA8oStK/tU57wETHorTDB2VlUc+rNE5ZT7/8VKQ
         bugw==
X-Gm-Message-State: AOAM53160befTgOSrF3corhtnnIz0y9rHKk+Me2LgkcDTKXCREiXAGLb
	aLLtPKT0A4uKlb3EHSI8nXH0p5GYq7YBtiWreAGAV0bBE9KHJCeO4ipP2WFpO8CzDFR95zfceGW
	GpZ+19oyzFyXqAoGYY+rRpGajhl9/+7I3CDM6mAijz3ma
X-Received: by 2002:ac2:554f:: with SMTP id l15mr1387608lfk.63.1613759162814;
        Fri, 19 Feb 2021 10:26:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyySUHcOJ2pO5j8TOWaGUwyZ1OUkSRA/0WZepOOUY+18/OSfwdM8UUr093BVuQFH2MQXg+KJDy7wWwopBS72D4=
X-Received: by 2002:ac2:554f:: with SMTP id l15mr1387595lfk.63.1613759162516;
 Fri, 19 Feb 2021 10:26:02 -0800 (PST)
MIME-Version: 1.0
References: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
 <9e832bad-8dc7-dd8a-eadd-feab14ab2507@suse.de>
In-Reply-To: <9e832bad-8dc7-dd8a-eadd-feab14ab2507@suse.de>
From: Rohit Keshri <rkeshri@redhat.com>
Date: Fri, 19 Feb 2021 23:55:50 +0530
Message-ID: <CAKx+4-r0OpY3XpT9njG7OD3TGDvb+7srhPgbYUJ1cqwMvsSq0g@mail.gmail.com>
To: Alexandros Toptsoglou <atoptsoglou@suse.de>
Cc: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000a2998c05bbb495d8"
Subject: Re: [oss-security] CVE-2021-20200: Linux kernel: close race between
 munmap() and expand_upwards()/downwards()

--000000000000a2998c05bbb495d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexandros, CVE-2021-20200 is a duplicate of CVE-2020-29369, and we
are revoking this.

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response


On Wed, Feb 10, 2021 at 9:03 PM Alexandros Toptsoglou <atoptsoglou@suse.de>
wrote:

> Hi,
>
> is the information listed here correct? Especially the CVE-2021-20200
> assignment.
>
> In project-zero reference at the last comment CVE-2020-29369 is mentioned.
>
> Best regards,
>
> Alexandros
>
> On 2/10/21 4:04 PM, Rohit Keshri wrote:
> > Hello Team,
> >
> > A use-after-free flaw may be seen due to a race problem while in
> > detach_vmas_to_be_unmapped() in mm/mmap.c in VMA access while
> > munmap(). This flaw could allow a local attacker with a user privilege
> > to crash the system, because VMA with VM_GROWSDOWN or VM_GROWSUP flag
> > set may change their size under mmap_read_lock(). This vulnerability
> > could even lead to a kernel information leak problem.
> >
> >
> > 'CVE-2021-20200' was assigned by Red Hat.
> >
> > References:
> > https://bugs.chromium.org/p/project-zero/issues/detail?id=3D2056
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D246c320a8cfe0b11d81a4af38fa9985ef0cc9a4c
> >
> > Thanks and Regards
> > ..
> > Rohit Keshri / Red Hat Product Security Team
> > PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D
> >
> > secalert@redhat.com for urgent response
> >
>
> --
> Alexandros Toptsoglou <atoptsoglou@suse.de>
> Security Engineer
> OpenPGP fingerprint: C270 3848 AA4A 783A 9848  BB06 56A3 3D9C B652 1869
>
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5
> 90409 Nuremberg
> Germany
> (HRB 36809, AG N=C3=BCrnberg)
> Managing Director: Felix Imend=C3=B6rffer
>
>

--000000000000a2998c05bbb495d8--

