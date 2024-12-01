Received: (qmail 30165 invoked by uid 550); 1 Dec 2024 00:50:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5479 invoked from network); 1 Dec 2024 00:35:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733013307; x=1733618107; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EPdtAcNjoewszY31MUB8Atfbc2TNHFfRy3qYzLWE+l8=;
        b=fWn6oGEtLpPE8Jd2bea1cfGtVZ5WV67Wf1OQkBF6RfIVuF53HQnOuzRNw4IGui3YCZ
         vnAZYnR/dNCC6xfaQkSsDV5VewQFFLeTC19D2OGrW38T3XnAoYfGR0tqtwYVL6clhQCa
         thBEblhVES+rqHkDaR5pWes1/G1jMhmqO1TdIvprJ9jzG2+y8eoO7k6P1M8fKKKrzx2W
         1dUjCTQPXqIHVediXIwJDjlcaop4CPl7Cp3q+IUUqyjJYal26c6lrEwGl/wXVgnLoOED
         WXQXY4ERnZ1txwH4BBQFUD9ZY3186NacYhYsWrjd7wNclVuJqf96434LCCwinIU9SXwL
         n3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733013307; x=1733618107;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EPdtAcNjoewszY31MUB8Atfbc2TNHFfRy3qYzLWE+l8=;
        b=T+LFXUdnLtmDTGvwJT7JFvICoy2SgOvXE744SdvBJ9IaantduTYHusn29zuW0eZxin
         Ll5/M+4jB5poiUg49CpD+iS8BBS9NeD3mCZxRCt15NugM/LnahGraJQM+q4e3qk0sc4x
         ITU7b/0VzmIZihpYY2kRRLZWLOBs/xgV95nUPMeIU1S7xH6qrpyH+q9OK05gd4DRr2Qt
         Z1TObEd3Wr7r66dhWx0+xDaO0uQHd+xknPAGe1Hvh0iNh93bnDJJBXBphcKiABJLSUQ4
         xW1LTVt1tC4X6l2+c6dIby4+tbJhPJrUG8hfg3FTTKEMqOkF/shCl4vDG60yM4yWTi4F
         da8g==
X-Gm-Message-State: AOJu0Yy5V+9VVVXH0HzEGn/4rW4G3GKdwUYW7Ds86+N8Sr+Uzc8Guu9B
	Yez2kyt/vbHmLTjJSab146ZBUY238HzKoeDWWBZ96iyOmZajp4VFZFZ/CgOfsKikdXGZs50Gf2f
	baiD7gbWw59KfSZQvCnfkTU88kDisNy0R
X-Gm-Gg: ASbGnctMLEecCgMC2nxuygddll8H9d6noIHxWxNHRibMEgONy3CK4QYAQvV3JmUERZa
	PsKa9BPBPKoB0XYNQ/8Idbt4Pf9g0GwFg
X-Google-Smtp-Source: AGHT+IHwiYaJpcmhfL/rje2BMNzyUeVT6Q8WmVeP98Cm2OD510V9i+ogigrNGqDlNoleDaHNKLhFjltdfMOurigw0Gc=
X-Received: by 2002:a05:6402:27cf:b0:5cf:74c0:b4af with SMTP id
 4fb4d7f45d1cf-5d0951604ccmr13419566a12.13.1733013306681; Sat, 30 Nov 2024
 16:35:06 -0800 (PST)
MIME-Version: 1.0
References: <20241129044032.GA5009@openwall.com> <CABBYNZKNpv7ArhxYoZhO8S5zdqFj9ydMb+eg9tyzDF-i+g=N5g@mail.gmail.com>
 <CAH_BBqfhd=4MP8XRWTvfcqFkQtZzwCOtqACtio0tGLKBp+vE0Q@mail.gmail.com>
 <20241130054634.GA12730@openwall.com> <CAH_BBqfO2dUX+H7RAUDfPJUG=oofYP9+SLJU07MUWkW8CW6Huw@mail.gmail.com>
 <20241130220516.2debb17b@del.fritz.box>
In-Reply-To: <20241130220516.2debb17b@del.fritz.box>
From: tianshu qiu <jimuchutianshu97@gmail.com>
Date: Sun, 1 Dec 2024 08:34:54 +0800
Message-ID: <CAH_BBqdjufLB46c7MniJMUpc23i9aR4ScCMNV7-mb5_zd6w_og@mail.gmail.com>
To: Jeroen Roovers <jer@xs4all.nl>
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Marcel Holtmann <marcel@holtmann.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000008932e506282a9aeb"
Subject: Re: [oss-security] Linux: Race can lead to UAF in net/bluetooth/sco.c:
 sco_sock_connect()

--0000000000008932e506282a9aeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your explanation.

On Sun, Dec 1, 2024 at 5:05=E2=80=AFAM Jeroen Roovers <jer@xs4all.nl> wrote:

> On Sat, 30 Nov 2024 16:32:17 +0800
> tianshu qiu <jimuchutianshu97@gmail.com> wrote:
>
> > After careful analysis and debugging,i guess the commit:
> >
> https://github.com/torvalds/linux/commit/e6720779ae612a14ac4ba7fe4fd5b27d=
900d932c
> >  has solved the UAF.
> > The introduction of kref object ensures the dangling sco_conn object
> > being freed in the function sco_conn_del when asynchronous hci event
> > thread is invoked, which stops
> > the subsequent exploit chain.
> >
> > I'm not sure if this commit is related to the email I sent, because i
> > sent the first email to security@kernel.org on  November 14th, and
> > the commit was on  November 15th.
>
> The commit you mention above was submitted on 1 October 2024:
>
>
> commit e6720779ae612a14ac4ba7fe4fd5b27d900d932c
> Author: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
> Date:   Tue Oct 1 15:46:10 2024 -0400
>
>     Bluetooth: SCO: Use kref to track lifetime of sco_conn
>
>     This make use of kref to keep track of reference of sco_conn which
>     allows better tracking of its lifetime with usage of things like
>     kref_get_unless_zero in a similar way as used in l2cap_chan.
>
>     In addition to it remove call to sco_sock_set_timer on
>     __sco_sock_close since at that point it is useless to set a timer
>     as the sk will be freed there is nothing to be done in
>     sco_sock_timeout.
>
>     Signed-off-by: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
>
>
> Luiz' commit from 15 November 2024 is this one:
>
>
> commit 0b882940665ca2849386ee459d4331aa2f8c4e7d
> Author: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
> Date:   Fri Nov 15 10:45:31 2024 -0500
>
>     Bluetooth: MGMT: Fix slab-use-after-free Read in set_powered_sync
>
>     This fixes the following crash:
>
>     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>     BUG: KASAN: slab-use-after-free in set_powered_sync+0x3a/0xc0
>     net/bluetooth/mgmt.c:1353 Read of size 8 at addr ffff888029b4dd18
>     by task kworker/u9:0/54
>
>     [...]
>
>     Reported-by: syzbot+03d6270b6425df1605bf@syzkaller.appspotmail.com
>     Tested-by: syzbot+03d6270b6425df1605bf@syzkaller.appspotmail.com
>     Closes: https://syzkaller.appspot.com/bug?extid=3D03d6270b6425df1605bf
>     Fixes: 275f3f648702 ("Bluetooth: Fix not checking MGMT cmd pending
>     queue") Signed-off-by: Luiz Augusto von Dentz
>     <luiz.von.dentz@intel.com>
>
>
>
> Kind regards,
>      jer
>

--0000000000008932e506282a9aeb--
