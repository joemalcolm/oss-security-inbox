Received: (qmail 24083 invoked by uid 550); 22 Mar 2024 19:12:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24065 invoked from network); 22 Mar 2024 19:12:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711135028; x=1711739828; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvUL3W2zJTRaGz0/7GB1VGv32BPLzKb0uNLajUS/G4I=;
        b=JRIUADx5+aEB492Asx365B6SrEpjOMQY9Nm4fN/L/+JcQ1yLGpEuXp4517V3ZF8E7Y
         XugTcyrUG+470YdXS2Jv+DFE7h6QSG4bCuU5S7C6KUnyU/rBi8iXcBBqz9qVorem+6EH
         y2aoj5eVV1yRuzJ6iNM121M3Gktd6feUj6fPwmC95yPazz1OjwdCRI9/0XpdgjogddbJ
         q/hmt0F3VPTWmng56vMzconauk0mP+3tzh1s4NJmnIxBnxJD0HHOifPgv0u9voAa6gm3
         27IIIxTUq+CIvMC6mz8zIGrAt3CH0NPkY2PTcbP1BqUchuf+TfMSeV1ffxEd5h6h+JXG
         bWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711135028; x=1711739828;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mvUL3W2zJTRaGz0/7GB1VGv32BPLzKb0uNLajUS/G4I=;
        b=CW3V7q3RDd6Y1qv5ZTc0HZGMup+Tn4vQXkv2MvvffBuYdlESsEeJhc24YKJLDVjLpm
         /AelVS5xDg8/124KzXTnOHKcyng8eIjDghoizsm4DUTGM/8Cf50NH2JR+KNZskgeZF45
         8W3MRry4PAlgRAFYoCiOkCxIIxz78To0eiMdXmAcYtVGvWmx0Z7LgfDlAEL6xsHtXdbR
         KDKKId+IgY0yN9RNAL5EDB7GG/EJx2Au9CDXVQ9tLfa/LPZfRYeQ9wsaMhJocodsgqlH
         Hb2FfMxeglJBTkkY74oHAKXvp5YeuHGFuzyS2siGvAheL6LSStQsWytHcnGhQr0+geYR
         JZ4g==
X-Gm-Message-State: AOJu0YxKNw9KjIOeomTnRxnpRrDrWL57VkRT7G48spVXNT8rEfDBqGA/
	K507a0YSjtD9GNFbieZ/VDgVIadWCDZqyDwss2G/nh6mJ64HSPg/5fjDfxfS2POvPRyQiEZA+sQ
	GUjoOF0n4sAcdU7LZYo4zYnf3vJSlwHM4BG0=
X-Google-Smtp-Source: AGHT+IFhNZ+oLOsonbd6uItLjf0rggBJWgnhkqa1dASrcP6reXYp3bdcsr1kQNKrHaQa/vm9zUv7kfiqV/fqJECDke8=
X-Received: by 2002:a25:b004:0:b0:dcc:d5aa:af36 with SMTP id
 q4-20020a25b004000000b00dccd5aaaf36mr315746ybf.44.1711135027665; Fri, 22 Mar
 2024 12:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <2c65862c-886c-435c-ac5c-0ad954a2b7cb@oracle.com>
In-Reply-To: <2c65862c-886c-435c-ac5c-0ad954a2b7cb@oracle.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 22 Mar 2024 15:16:56 -0400
Message-ID: <CAFRnB2W+-G1XkSUk4NfmxPWcbgLgJ7-ASR-JDW1m67MvwDHmUA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] GnuTLS 3.8.4 released, fixes CVE-2024-28834 & CVE-2024-28835

One thing that may be of interest to this group: Will found
CVE-2024-28835 by running the x509-limbo test suite against gnutls.
x509-limbo is a set of test cases that can be used to test x.509 path
building implementations against a variety of edge cases (inspired by
wycheproof). The tests are at https://github.com/C2SP/x509-limbo

Cheers,
Alex

On Fri, Mar 22, 2024 at 3:12=E2=80=AFPM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://lists.gnupg.org/pipermail/gnutls-help/2024-March/004845.html
> announced the release of GnuTLS 3.8.4, including these fixes:
>
> > ** libgnutls: Fix side-channel in the deterministic ECDSA. Reported by
> > George Pantelakis (#1516). [GNUTLS-SA-2023-12-04, CVSS: medium]
> > [CVE-2024-28834]
> >
> > ** libgnutls: Fixed a bug where certtool crashed when verifying a
> > certificate chain with more than 16 certificates. Reported by William
> > Woodruff (#1525) and yixiangzhike (#1527). [GNUTLS-SA-2024-01-23, CVSS:
> > medium] [CVE-2024-28835]
>
> https://gnutls.org/security-new.html#GNUTLS-SA-2023-12-04 says:
>
> > CVE-2024-28834  Severity Medium; timing sidechannel in deterministic EC=
DSA
> >
> > A vulnerability was found that the deterministic ECDSA code leaks bit-l=
ength
> > of random nonce which allows for full recovery of the private key used =
after
> > observing a few hundreds to a few thousands of signatures on known mess=
ages,
> > due to the application of lattice techniques. The issue was reported in=
 the
> > issue tracker as #1516.
> >
> > https://gitlab.com/gnutls/gnutls/-/issues/1516
> >
> > Recommendation: To address the issue found upgrade to GnuTLS 3.8.4 or l=
ater
> > versions.
>
>
> https://gnutls.org/security-new.html#GNUTLS-SA-2024-01-23 says:
>
> > CVE-2024-28835  Severity Medium; Denial of service
> >
> > When validating a certificate chain with more then 16 certificates GnuT=
LS
> > applications crash with an assertion failure. The issue was reported in=
 the
> > issue tracker as #1527 and #1525.
> >
> > https://gitlab.com/gnutls/gnutls/-/issues/1527
> > https://gitlab.com/gnutls/gnutls/-/issues/1525
> >
> > Recommendation: To address the issue found upgrade to GnuTLS 3.8.4 or l=
ater
> > versions.
>
>
>
> --
>          -Alan Coopersmith-                 alan.coopersmith@oracle.com
>           Oracle Solaris Engineering - https://blogs.oracle.com/solaris



--=20
All that is necessary for evil to succeed is for good people to do nothing.
