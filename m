Received: (qmail 11845 invoked by uid 550); 31 Mar 2024 21:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1828 invoked from network); 31 Mar 2024 21:36:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711920979; x=1712525779; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rw+t1p3WYBdvMqdIGGVLnxvwM3p6bbcBDYbZSrrJUok=;
        b=CVZdg5HbtsOuhBZNMZkuqYkJGoVKKo5FsCi2Jy5bkLxFei7jNjHywQNWSTcWihp+uw
         iqFyCS20z+6G6wzfNUAiC9/cSis1FHFmhGKoLZNHn8t8lG3XY8eWMKpumV/xKjeq5gyV
         aPlUWiKNlz4M4wOFxVMF+Zk7/Rk33gmUDrGCp8x+lx0foIAdXG89UgbkWSAHRvTihchi
         5wpyxme8r75WaPWNbAERGneIy5LtAb9W4r63ueeAuVIC7ecEhZwopQzILgzoU1lPTnF2
         WMlwCs2HsQdcR+JN2t4hs7NH48un0ZjMb37odSstM44xIysEG+hLQZYev09hk3HPVMMN
         gNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711920979; x=1712525779;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rw+t1p3WYBdvMqdIGGVLnxvwM3p6bbcBDYbZSrrJUok=;
        b=bwqxKrBU6x0PfoYyaralu7ZZDdJbmYdvmBGfbX5RN79Ai07j6pcwhWu9x62/4rjFnq
         0j1X4VGIcjmgK49ohBtSaajnPn/GxKUlHpdHRfPpWmtexWAGIe6q4Cb5vkm6QtB0Eky0
         QJ4QSV16tKzf3iyiGa+5kM5SOlmG5sR5EjusN9qrCQRbb+t2FspE94sS65CnoillXq4w
         w3+Ns8fPsNumiflBAtWImSxncZtex7jogCmyIjboo4MfjIWXASfFDnCDldwWGYzq0rJx
         pwjQtq/UKTbLcM7fzy6KHaCtP19S1OPxX5XJvDQw1JxSUbHNp3m70phaVoC2zdhdE1TQ
         aQGA==
X-Gm-Message-State: AOJu0Yy3XSeTHm8TMALxlzn2UovKhCTv5rqZ8e9quXCCh1R7VgQduY4j
	ek1gjZNyoGbx50bvh5J2deyvHap8073pLDk0Evnmt7ThWEIeJa9Sv03Vn/JJ8ozfqtTPxdk+eEt
	T3usG+VRSYv/IKpMPtERxM/nFsDoxOpbr
X-Google-Smtp-Source: AGHT+IEMlGgChHPr2LV6jwRfQ/53YNwPX8YD0iQ7SqLxXZCJpihnd20m/RoWTWFVqxYzqny+wlcWb8xvLbMjm3FN9Rk=
X-Received: by 2002:a05:6820:1f10:b0:5a7:be22:933d with SMTP id
 dl16-20020a0568201f1000b005a7be22933dmr1033352oob.8.1711920979532; Sun, 31
 Mar 2024 14:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de> <20240330214617.fzevnlz4nrqvgbwp@sym.noone.org>
 <20240330220131.apxz26ieckj27vnd@awork3.anarazel.de> <20240331210908.GA22607@openwall.com>
In-Reply-To: <20240331210908.GA22607@openwall.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sun, 31 Mar 2024 17:36:07 -0400
Message-ID: <CAH8yC8kny9HTNcOZ73xApsop2vWbWDOt_wPZT5PmztyO2g2-Ng@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

On Sun, Mar 31, 2024 at 5:11=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:
>
> On Sat, Mar 30, 2024 at 03:01:31PM -0700, Andres Freund wrote:
> > On 2024-03-30 22:46:17 +0100, Axel Beckert wrote:
> > > On Sat, Mar 30, 2024 at 12:48:50PM -0700, Andres Freund wrote:
> > > > FWIW, RSA_public_decrypt is reachable, regardless of server configu=
ration,
> > > > when using certificate based authentication.
> > >              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > >
> > > Wait, do you really mean SSH keys verified by certificates issued by a
> > > (usually internal, SSH-specific) certificate authority (CA) for a key?
> > >
> > > See e.g.
> > > https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Certificate-based_Auth=
entication
> > > what certificate-based authentication in SSH actually means.
> > >
> > > From my experience certificate-based SSH authentication (i.e. those
> > > algorithms with *-cert-* in their names) is rather rare, while simple
> > > public key authentication (where you just put your according pubkey
> > > into .ssh/authorized_keys) is very common.
> > >
> > > Can you clarify if you really meant that solely certificate based
> > > authentication (with certificates issued by a CA) triggers that code
> > > path or if you actually meant all sorts of public key based
> > > authentication in general?
> >
> > I meant CA based auth - but note that, from what I can tell, you don't =
need to
> > have it set up on the server side or anything. You might not even be ab=
le to
> > disable it. If the client sends a signed key, the signature is loaded a=
nd
> > verified before approved algorithms are checked.
> >
> > This seems suboptimal regardless of the backdoor issue, so I opened an
> > enhancement request for openssh: https://bugzilla.mindrot.org/show_bug.=
cgi?id=3D3675
> >
> > I might be misreading the code around some of the details, but I did
> > experimentally verify that an rsa signature is verified without CA auth=
 being
> > configured.
>
> keeganryan on GitHub has posted a Python class that may help experiment
> with the above, and with passing commands to the backdoor (but of course
> we don't currently have the private key to sign them with):
>
> https://gist.github.com/keeganryan/a6c22e1045e67c17e88a606dfdf95ae4
>
> class ModifiedRSAClient:
>     """ Connect to a SSH host using a modified RSA public key and signatu=
re.
>
>     During public key authentication, an SSH client sends its public key =
to the SSH host.
>     If this public key is a certificate, the signature of the certificate=
 is verified by
>     OpenSSH. This class allows for modification of the public key and sig=
nature in the
>     certificate parsed by OpenSSH.
>     """

=46rom the crypto perspective, we've told developers to always validate
security parameters, like private keys and public keys, upon loading
them. The concern (for me) was weak keys that could lead to
information disclosure.

This definitely requires a new leaf in the threat model, where the
public key is a payload. What I am less sure of, is it possible to
detect a potential payload using classical security parameter
validation techniques.

Jeff
