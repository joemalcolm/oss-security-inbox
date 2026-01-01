Received: (qmail 3784 invoked by uid 550); 1 Jan 2026 06:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11702 invoked from network); 1 Jan 2026 01:03:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767229395; x=1767834195; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Eni49HKEy/2mxzSupvuKVI2SG0h9JQgv4WVfgk4PWKI=;
        b=CaFAYk7fAPjSfeZtrKDjYsZwPRdUm+VAQl1fR7kcVyxbdG+TBQ03rar1Usj1W14UV4
         N1DKWGcTLp7OCScvWOfP+La/ZJA5EUMmz5+y6u9UnnzgbaKUKuiwuXHeh4UVPpX3zo4v
         Dym4N1jIVCL6gfX7NTRNEXa1RQh2LzOi81eIf6ecOmcn3q637kW/4vd21aWFmytDyV+/
         NzrXolGhIUp3X9tBni6wDdRv3QI2Vs1SvTt9dV550rZpgyH+8Ww9Esdbweqe0TmIThKs
         +UaeSl0GPERbsLigyPS+5ojp448J66/2cmpZvKaNjDRyvii9l+VVZWlSZbWuFNX1sZrb
         RqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767229395; x=1767834195;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eni49HKEy/2mxzSupvuKVI2SG0h9JQgv4WVfgk4PWKI=;
        b=B+e7BWCT5v6F3ymPQmxfHNIsLSETJTuNW07qf8o4WflbhUkaljrO9RzP6dnTiiZrjd
         tw8Fnp1G829sSXGHrdp84Sxxacx6cuoJHzlPuyqDIPYtwqGivU6e1vKzjLauU79Yt/8B
         IZYS1bsoe6zvq7uD7f2GTetwJ5U0oz5IlWfHTSNo3RGJXZkGL50o/q8ykMW+L/kK+ZO6
         QOqQiKO1XvPwMigXCN+f62qjneYLLEL7WsIjOGzBks/dGfP7mTcj8eWb2CMvYl3fzLEN
         PIopSqL7mj2IhCOUQTmKCINmHma1At/+7/gwMK9KByCq/jWBlcghesi3Uhj/gvLrhRXE
         HT8Q==
X-Gm-Message-State: AOJu0YzaETeSEknkp3msY7mJsPEAO1qD4QqXYCX2yfdKjwStPf197tBi
	2V1YdDr6eu1jjuSyoctvabcu1KQHDMmSJ/L9mZYxJE3tP4TGA7O6BYlVIRCtBDRTDD3BjC34Qxl
	Y65kQKCwR02vQSPcSQihu2ImfCs1EgQHpj0Aj
X-Gm-Gg: AY/fxX7do8Zojbd1OWjoQk4mSugLUzwAqGRzEZz9/JU3hIWktHsJdvGKA7g/mOvesG+
	WWm/nAW0/tJp82rBUgWx90SJ7HW3WN8bwL6rHdNonXimDWIX+hWJwy3F0+MAXiTx2zlVNv43+Eb
	H3HdaKmnUk4QVcCziD3E/DzIfKWE8xOmIie1Pq4neKdORD0EYZ0gY1vVlMj/+hSPBHA8fmeHatH
	wCcVrVLDOZ6VEFRFAkKJVhbrA6obRAQTi2PWDT4nUBJmIBdixH19nvAWMaF6GARFqiqj4UnkHlW
	K2xWUgoo
X-Google-Smtp-Source: AGHT+IEmx7G4lAV2+FV9967qXkulvrJU9ik/ZZU2qaptaXND2MWT7l3v84ygTp7P4JMRpct1LMQsHq/W8QJ0rZE1PZg=
X-Received: by 2002:a05:600c:4447:b0:47a:9560:ec22 with SMTP id
 5b1f17b1804b1-47d1954a2fdmr410049885e9.14.1767229394958; Wed, 31 Dec 2025
 17:03:14 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com> <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
 <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com>
 <CADz+4x-t+9rW+OSef9A1rf4wV6zwxZQLnSk_NsxYm4ONv3HH8w@mail.gmail.com>
 <CAM=PXV4yADSZ2udrWhiWNocroCj4ceefd2V5ANOUYYcTF_+SHA@mail.gmail.com>
 <937f78c2-45fc-4062-8941-f6f419004318@gmail.com> <73140d6f-dd6d-4d67-8b24-63368c99bc3d@gmail.com>
In-Reply-To: <73140d6f-dd6d-4d67-8b24-63368c99bc3d@gmail.com>
From: Pat Gunn <pgunn01@gmail.com>
Date: Wed, 31 Dec 2025 20:03:02 -0500
X-Gm-Features: AQt7F2q_oF3_hXsqIGeJY8qz2AwtIHGn0hU7Gj1W1rRK_2snzdfQdEi7ainquP0
Message-ID: <CADz+4x-k76tPYd3JL0F5320U4fzzJo_-Kvzg8A8iuDudmxnEUA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000052bcdf06474928f2"
Subject: Re: [oss-security] Systemd vsock sshd

--00000000000052bcdf06474928f2
Content-Type: text/plain; charset="UTF-8"

There's another option; someone could reach out to the OpenSSH team and see
if they'd be open to having OpenSSH refuse to permit it without explicit
configuration, getting rid of the need to deal with the systemd project on
the topic, although what the systemd team may do in response to such a move
is anybody's guess. It's arguably within the OpenSSH project's scope if
because of the misdesign of systemd OpenSSH becomes part of an attack
vector for a lot of systems, and we know that the OpenSSH team takes
security seriously.

On Wed, 31 Dec 2025 at 01:04, Demi Marie Obenour <demiobenour@gmail.com>
wrote:

> On 12/30/25 01:33, Jacob Bachmeyer wrote:
> > On 12/29/25 13:53, Greg Dahlman wrote:
> >> I did reach out to the systemd team, while I was working with the kernel
> >> security team and I encouraged others to do so if they think it will be
> >> productive.
> >>
> >> There are sensitivities and frustrations that span all groups that make
> >> that conversation difficult, but I think someone with an established
> trust
> >> with the project could make forward progress.
> >
> > I certainly agree that the systemd team's apparent "cavalier" attitude
> > towards security (and sound architecture) makes lots of frustrations.
> > (For example, the "katamari" architecture that made the xz-utils sshd
> > backdoor possible is definitely a bad practice, although a distressingly
> > common one not unique to systemd.)
> >
> > To *really* set things off here, this vsock listener that crosses what
> > is otherwise a security boundary *looks* like an attempt at a backdoor,
> > although I believe it to be ignorance/negligence rather than malice.
>
> If systemd *also* configured OpenSSH to only allow key-based login,
> this would be unexploitable unless OpenSSH has a vulnerability.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

--00000000000052bcdf06474928f2--
