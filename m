Received: (qmail 31752 invoked by uid 550); 1 Mar 2023 13:40:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32214 invoked from network); 1 Mar 2023 13:04:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TaIay7VzpbnBSLM7xP+makP2vKUnvdNqizmSKLDctFY=;
        b=Xg4TGw1ogrRQrPwwBtJyTLbjzJNeXN+sb/5SNJQDejOLPCdUduaDIjDDf98YuSBjPJ
         mKnatTsvXEc+pAcq0x2ohsXolfxtWE8jt8RHat54cjrTs+u94EDhAJyJAttm0rx6aX4w
         XM2Nc1vHY3Rh92obpK5lQf19UJjBsyRRhUeM9I4HFsG/FKJvnvBUwQnDXFn9B6SHBmU5
         H4K9maR3a+braN+vZn5yBhv+tjk/KBk6/sbKfSxU3He3ypRDR03Kd1Hhb9MpQimnAi9t
         NFqdueiFDbWEZhkZginbRbWf9/zcV3GQTuEh8cXsaRNW+YcJUQkSD3Pn5no2e9qNO5+e
         Uv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TaIay7VzpbnBSLM7xP+makP2vKUnvdNqizmSKLDctFY=;
        b=P1opfCf1hTCJA/ODqsvHONEgRMwKPnMu7D6pgZyxKpfxzMwbAC08ENjsNIw+Qb3NpO
         zzPflBf/GovPu7gje1fwbzg2p4KLEo8rlua4unmr+Psjtf/iVwopLBNMjnPlP/IE6/15
         9GJwfnR56zaAJ+x0x8IKzMykvNALrRn2DkL4vvzBZqjwUfNdqVUPne5cksrx5MwxiJXn
         g4Fc647RmVulapZh4r1IlIhAJUuaE64AKRAYvNm67HrvKsM9RzhO2ZDxPxomkoiAOeDq
         roPWlBZ8aNU/6UB5fe+6ICfO7X4/xx06dgGhmlP+tqUMZ2IDo1xjTae8M382PBMEA+C4
         lssQ==
X-Gm-Message-State: AO0yUKWgDldZN7r4xvPxZfqyPcFkMkX5jbL3/bt8M5QmOGs9vfEvvvgN
	PmSbWvhmeCGrE0KOwo4IGnFmVH1gA4jfTCuuMLF5ChqzARM=
X-Google-Smtp-Source: AK7set8FXD0jP3vWR7RMhbf4t2CmXMuc2cGKiBKTVGparYmMWGP4JvdANbHg6hvBHTwmm8OSz8Xvb2nvvf2xmLmfSZ8=
X-Received: by 2002:a05:6808:8cf:b0:383:f8b1:c259 with SMTP id
 k15-20020a05680808cf00b00383f8b1c259mr2177101oij.7.1677675859704; Wed, 01 Mar
 2023 05:04:19 -0800 (PST)
MIME-Version: 1.0
References: <6ce790cbffb04331@millert.dev> <Y/6wnzgxs4K7zeYp@gentoo.org>
In-Reply-To: <Y/6wnzgxs4K7zeYp@gentoo.org>
From: Noryungi <noryungi@gmail.com>
Date: Wed, 1 Mar 2023 14:04:08 +0100
Message-ID: <CAA_Lw3_wha4rCNvu5hbwsu-kEsp96761WgOB4rh7DZxXtiyQZw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000aa812405f5d659fd"
Subject: Re: [oss-security] sudo: double free with per-command chroot sudoers rules

--000000000000aa812405f5d659fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://www.sudo.ws/security/advisories/double_free/

says:

CVE ID
No CVE has been assigned to this issue due to its low impact.

Le mer. 1 mars 2023 =C3=A0 13:15, John Helmert III <ajak@gentoo.org> a =C3=
=A9crit :

> Has a CVE been requeested?
>
> On Tue, Feb 28, 2023 at 07:31:11AM -0700, Todd C. Miller wrote:
> > A flaw exists in sudo's per-command chroot feature that could result
> > in the variable that stores the command being freed more than once.
> >
> > I believe this is a fairly low-impact bug as the per-command chroot
> > feature is not widely used.  The bug was caught by glibc's double-free
> > detection while I was performing some chroot-related testing.  No
> > one else has reported the bug which leads me to believe it probably
> > has not been encountered in the wild.
> >
> > Sudo versions affected:
> >
> >     Sudo versions 1.9.8 through 1.9.13p1 inclusive are affected.
> >     Versions of sudo prior to 1.9.8 are not affected.
> >
> > Details:
> >
> >     Starting with Sudo 1.9.3, it is possible to specify an alternate
> >     root directory that sudo will change to before executing the
> >     command.  For example:
> >
> >       someuser ALL =3D CHROOT=3D/var/www /bin/sh
> >
> >     will result in /bin/sh being run inside the chroot jail /var/www
> >     when the specific user runs "sudo sh".
> >
> >     Sudo 1.9.8 included a fix for a memory leak in the set_cmnd_path()
> >     function which can result in the "user_cmnd" variable being
> >     freed twice, but only when processing a sudoers rule that
> >     contains a "CHROOT" setting.  This does not affect the "chroot"
> >     Defaults setting.  Only a per-rule "CHROOT" setting will trigger
> >     the bug.
> >
> > Impact:
> >
> >     The bug can only be triggered by a user that has been granted
> >     sudo privileges using a sudoers rule that contain a "CHROOT"
> >     setting and the rule must match the current host.  If no users
> >     have sudoers rules containing "CHROOT" there is no impact.  This
> >     feature is not commonly used.
> >
> > Workaround:
> >
> >     Remove rules from the sudoers file than contain a "CHROOT"
> >     setting if using an affected version of sudo.
> >
> > Fix:
> >
> >     The bug is fixed in sudo 1.9.13p2.
>

--000000000000aa812405f5d659fd--
