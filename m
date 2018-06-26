X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Tuesday" "26" "June" "2018" "15:45:57" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=UCp-bw7312gxmSP8d1ioYr1YBmOuSiSsJKCvJakzHS4A@mail.gmail.com>" "47" "Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" nil nil nil "6" "2018062613:45:57" "[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" (number mark "U       glider@googl Jun 26   47/1517  " thread-indent "\"Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl\"\n") "<460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>" ("<CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>" "<460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15686 invoked by uid 550); 26 Jun 2018 13:46:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15662 invoked from network); 26 Jun 2018 13:46:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Aro17a7jtvuBCxLXcWjsV+prl1lERmlognR4uvkR3l8=;
        b=qD0odOQGAGUoFG+Jkk4EMqvY73u7GjQETUJPkry5EpYd8DiPihysKm8RbksLLYIYwE
         4SZNLsHJE2g+Kmh9fIF1SLdzysGJEB5cfLsxIC8IkkOyLzqdHWNo5mnJfBdly6yaPVh4
         S4rgr+M9pKZr6UeV5xQfnNvvZ3I9Bur+rBFUACMnlxqm/C1J/oGMI7S9xyMCxzC0orAu
         m84sS9pU/OSOfSEMLvpJWSe1oH5NSMK1IPuXLQ+V6BRSR9mEho8abbMV4rOwQPnFgWXw
         ciw40apo+Cmp0cq9Wwwbjn6/XHYRSeMwUfEHxSdh7vkluQJ/k/WhmKG8/0V9p/eOMGHz
         jD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Aro17a7jtvuBCxLXcWjsV+prl1lERmlognR4uvkR3l8=;
        b=ctJyiLL2t0FRoa9mFdlYrrpzS95hOdoND/l97xQoDvDZmzmUeOLacemb4GpvycpnhF
         G2CGuVsFdD630wXA4B+TSyCUt3i/YCkHz/0BBjNpDCPeCPkw3o8ZqYewBujXU47nRGCV
         MFXR1Vkr+k0QFUtu94sTlwRUFUwnGFpUfp8ZOtcQd7DMyG0S7nfodEXSzS/Z4HXEC8wD
         UYALbSDnmDB/8eI5drFBur1wvtIlc5K49N7Bpz2Fv/2Mx6CF//zSiE99K/UltCQIoIka
         4IzZvJewE0WVGOZtlLs4VemK8Gy+4wIt7dc4VQQ/zCZoU3ZO3AOlAYhOsIGUTZoudUcE
         2E3g==
X-Gm-Message-State: APt69E2m5GyECCE24TX1TaInsBFAlKVlOY+rH329O4Ykvj4FQcum2WIZ
	CvPfkP7DITg0wZ7GPwZNS3YL76JiOEScEtBh+VjlSg==
X-Google-Smtp-Source: AAOMgpcdOwL3rt4CZfjxWVwNwvh7KvpevLbeV1Mix4MyOcRe9DAKPv3zHSD8EbFr2MeKJqDo4SCGDrvDYBj+0/rsdck=
X-Received: by 2002:ab0:663:: with SMTP id f90-v6mr982442uaf.167.1530020768808;
 Tue, 26 Jun 2018 06:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>
 <460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>
In-Reply-To: <460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 26 Jun 2018 15:45:57 +0200
Message-ID: <CAG_fn=UCp-bw7312gxmSP8d1ioYr1YBmOuSiSsJKCvJakzHS4A@mail.gmail.com>
To: Vladis Dronov <vdronov@redhat.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16
 infoleak due to incorrect handling of SG_IO ioctl

On Fri, Jun 22, 2018 at 3:32 PM Vladis Dronov <vdronov@redhat.com> wrote:
>
> Hello, Alexander,
Hi Vladis,
> Could you please, explain, why do you think CVE-2018-1000204 is a security
> flaw?
>
> > The problem has limited scope, as users don't usually have permissions
> > to access SCSI devices. On the other hand, e.g. the Nero user manual
> > suggests doing `chmod o+r+w /dev/sg*` to make the devices accessible.
>
> There is a check in the kernel in sg_build_indirect() exactly for this
> situation:
>
>         [drivers/scsi/sg.c]
>         if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_RAWIO))
>                 gfp_mask |=3D __GFP_ZERO;
Yes, you're right. It appears unlikely that a user has both
CAP_SYS_ADMIN and CAP_SYS_RAWIO.

> This means non-root user will get zero-ed pages even if it has o+rw access
> to /dev/sg*. Tests of your reproducer on systems available to me confirm
> this, i.e. non-root user gets a zero-ed out buffer even if it is able to
> access /dev/sg*.
>
> I may not got smth correctly, but for now I do not see CVE-2018-1000204
> as a security flaw and I believe a reject request to MITRE should be
> issued.
How do I proceed with this?
>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer

Thank you,


--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
