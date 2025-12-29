Received: (qmail 5783 invoked by uid 550); 29 Dec 2025 17:08:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26478 invoked from network); 29 Dec 2025 15:34:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767022430; x=1767627230; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IAjDdbLdhGRHCQN2Kl3NtDm0Nk3CgBH1R+D/PG6EfAw=;
        b=Rf6s6Np+Cv65wvaYGbozXpx1tVtW11pie9bLGmks/si/EQgqOVriqTwh3nsBl5EkTP
         zjHDs/nF2Ba9v1y9M2QgiwkUBmk0z2Th3h+iFxu+bncuGlDweAiDnqoc6yeI5i7R70oW
         Wd1h3Pts8MPWPwAvIfQhwkZ/yfIF7oFR5a1okNJO6CrAopKO9G3rEO0jjHZFTwLsFXde
         +E1Wb/4wbqcsydbfGChdagpA93g6eSBVKXFyL6FwodQhKsxYqWhWtrFRv8EqmMY77fgc
         iVnI2AHrj4Gj5t5lx8DxejG2ijuWpCl7oQafoWeICEGrEvq0n0heUNOoN3Lt5vfFSthG
         1grQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767022430; x=1767627230;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAjDdbLdhGRHCQN2Kl3NtDm0Nk3CgBH1R+D/PG6EfAw=;
        b=ETMa7Zisj8C5TJLnNqbx4Qc3JsZXsFn1LrT2yl1WBLiRmKJ6ER8UO2TmQC7k7jFMIh
         B4vat7akHeXDDZfowu/k/0dHSHOZXS/wVertXXKauuLkKkzEVD8W5WhsxEnU8j5nUu1k
         FpG9jaCs2Ulnyjk5rVbsVIT/3MhDqHOQ0eqLyZy9RNW59yIBA5RIPwyDkP7wlXYtRfN1
         +ZziZvmKAsHPT1qv0d3L/4pUNzGcls/jZWsDa68nTTOPt4knPmZo4CVuz5sQ7L+mst36
         fvMSq9MqzQMPhCdfcw7BcwYNKynOfLKeH1ipHntK9enSN6zjOqxEyDXwdPtWojGnlApf
         BkEQ==
X-Gm-Message-State: AOJu0YyN1CzH27UcOFGoX4RqlEf1SkXQDHJwiAHgaY/3Wii0EP+gzXRs
	0UjeqPg2kcSHYs3Xo+3FKFVUySvK/p42+LKtL9oH08ipdQTuDXXny9WotckBkJf+xOO5QqOxw2H
	Qwk1zN9EOSgegappMI/jAnaB8sJ3iGpc=
X-Gm-Gg: AY/fxX5riPo/kV+GlhuX1Hv6CUHo8z+ZyPPfXVd9+nNkTN+vQNfEQ02ZhuZO3rhuUA/
	eNFv37ygR0MwzMMl1g7YsKbjC5cu7ZiJInWOhGGTkg+0budARcmiz+l4KvqIzde8TIiYp1pY6LX
	ysZAOzvVezihj2temiOm91ORkBsebdj4QgIrP3y9efSE0zFc8x53jY1IUlso+w3rwqhcAShYzy4
	bEIfpUPzSoiOvLML63dQzVc+SlKuLzV0G9J/6OSqDZXAQv9N+nyBOU+yHlOyCeXpfQcHEVm
X-Google-Smtp-Source: AGHT+IEFzqCXRX4536lQO1qTgcEEBvpqFTrsrB04r0v+LoChdLc9UZj9S5yw4Hd1+KO02yBP2eQdUB60T+hpOy8JajA=
X-Received: by 2002:a05:6214:4198:b0:88f:d134:b97a with SMTP id
 6a1803df08f44-88fd134ba75mr384849966d6.18.1767022430225; Mon, 29 Dec 2025
 07:33:50 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
In-Reply-To: <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Mon, 29 Dec 2025 08:33:39 -0700
X-Gm-Features: AQt7F2pts35FEKJK9Ufqr5TSCfjngwcoXjRTgJBSbPf2dm2i-hlzYrDXK62pUP4
Message-ID: <CAM=PXV5NkBC+qaYbxfvZMkAGXz6RirLwKAmwSCi1YfUsOF0qXg@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004388cc064718f8c8"
Subject: Re: [oss-security] Systemd vsock sshd

--0000000000004388cc064718f8c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The official way to disable this behavior requires appending
"systemd.ssh_auto=3Dno" to the kernel boot line.

https://man7.org/linux/man-pages/man8/systemd-ssh-generator.8.html

On Sun, Dec 28, 2025 at 9:11=E2=80=AFPM Jacob Bachmeyer <jcb62281@gmail.com=
> wrote:

> On 12/27/25 21:46, Greg Dahlman wrote:
> > [...]
> >
> >   **Systemd v256 change** - When the *openssh-server* package is
> >   installed on a VM with vsock support, systemd now automatically
> >   starts an *sshd* instance that listens on the **af_vsock** socket in
> >   the **global network namespace** without any manual configuration.
>
> Obvious question:  what manual configuration is required to kill that
> listener?
>
>
> -- Jacob
>
>

--0000000000004388cc064718f8c8--
