Received: (qmail 15761 invoked by uid 550); 27 Jan 2026 18:48:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1880 invoked from network); 27 Jan 2026 18:46:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769539598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ArzMfGKlblKYLrfeT6d+RvPpmVDxtWZb8czN4K3C1fI=;
	b=T2zu4Zfb2SW2woz1E7FFQokdcjwcTayhwIlAPvrVsgv3XySO7PmsmnZcdmHkBUp0LMcvyh
	WMAlxW8mlFPbGt8iy+cYghd+87dNIQROYxF8Uzs2TSvMZhva7ypy6OdfMACzabwUcqziuY
	v7TTffalP5KvSyGhGj9xfCLtH0kN9OM=
X-MC-Unique: XyXLFC8OOui8Fd0RDMpdSw-1
X-Mimecast-MFC-AGG-ID: XyXLFC8OOui8Fd0RDMpdSw_1769539595
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769539594; x=1770144394;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ArzMfGKlblKYLrfeT6d+RvPpmVDxtWZb8czN4K3C1fI=;
        b=Qy1dDoKcRQ2tDUU0YznFS4nUVYhqazs4FnaULAT+tgXAp/a/JFQbQts4lxy3yHOCiy
         jBRMQAN8/HyHtXLsNxuUbIr4FoRiC4bE2eS855kGAj+JaGJUOl0ZmnuXoPiSgpfIT/3K
         DmA1ky6Px/skk6MZQGv1WyK7hu7gPeSkVTZiLMv+Ne24TjS/d5SW6OXSV9wnNTGrgBgs
         ayiaNxdGUBmtimrNhZoyvrkSlm1SOrAky29u+Dv80bkl167fQQ337PMUkP2HLJb5/b3q
         UoSrZD7DulQcFn4tDZIMwdbCGT7nGpiBVkioUs062J6nIZMQFmOAvg0y8EYCTxniRnDc
         PDWg==
X-Gm-Message-State: AOJu0YwTBGVsqjjPo89j6mZ9nZ3wq2FZQ/AnGABwvWaFLZ6QTZQk146I
	z34TaUfCu56V2RzgoWLVtG0npcCzeXPwfiudqzo/MwQIWIT01q1M3u+S3GfrEjfmEkJHOTzUgrG
	U1MMyDFEWV1KiFfBLlDFTgIYuqHn9iUqjiNnL2/7E1mMd+bRUWv+/cvYiGG6qh/LdD592MWvJTc
	UXjYjGuOi7vw60rMmFVrr5/SVbG6DeBf57wUjW5NrXmV67T6+2MOtW
X-Gm-Gg: AZuq6aLU23YaXfJH6fwcA9eEEy/ma0ogPq+cjd23SAoKie3Ixfam8uBHnUr6ynLEXSI
	fyuB9PAXcrItbSeZkONpnikuAuz59KbB5c4pYBMNq6F/Z6fadkCMTIaYvW2ugQMblJTlaN9dcL9
	le2wiyxCyKoCSGK0tEyceCcnoJ373qzIYKlxN8cQyBKAjGk+f++G65OuYhJRUzaZ93tAQ=
X-Received: by 2002:a05:690e:144b:b0:649:5ff5:70d with SMTP id 956f58d0204a3-6498fbed204mr1690980d50.2.1769539594612;
        Tue, 27 Jan 2026 10:46:34 -0800 (PST)
X-Received: by 2002:a05:690e:144b:b0:649:5ff5:70d with SMTP id
 956f58d0204a3-6498fbed204mr1690959d50.2.1769539594004; Tue, 27 Jan 2026
 10:46:34 -0800 (PST)
MIME-Version: 1.0
References: <87343rqa3o.fsf@gentoo.org>
In-Reply-To: <87343rqa3o.fsf@gentoo.org>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Tue, 27 Jan 2026 15:46:18 -0300
X-Gm-Features: AZwV_QjP_io-OnY7nYn1fVlaYtI8Ga_yxfFYlv6eorrsrLnZ_0avQ5PK44t-ofU
Message-ID: <CAEFhzs_+x1hEAHWqJsDR1j-Gfso9hOSmmGfN2unF4fqxcVKwEg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G3lqXhh3ezu5iTPOGIdMjK6kY_8Vxxm52J9o13Fjw14_1769539595
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000eacb440649630aac"
Subject: Re: [oss-security] GnuPG security release

--000000000000eacb440649630aac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have a CVE ID been requested? If not Red Hat CNA can assing one.

Please let us know.

On Tue, Jan 27, 2026 at 2:40=E2=80=AFPM Sam James <sam@gentoo.org> wrote:

> GnuPG 2.5.17 has been released to fix a possible RCE:
> * https://dev.gnupg.org/T8044 ("gpg-agent stack buffer overflow in
> pkdecrypt using KEM")
>
> [Description for this one at the end, for the full quoted advisory.]
>
> There's two other security-relevant bugs too:
> * https://dev.gnupg.org/T8045 ("Stack-based buffer overflow in TPM2
> `PKDECRYPT`")
>
> > A stack-based buffer overflow exists in GnuPG=E2=80=99s tpm2daemon when=
 handling
> > the PKDECRYPT command for TPM-backed RSA and ECC keys. A local attacker
> > who can access the daemon=E2=80=99s Assuan socket can send an oversized
> ciphertext
> > and trigger memory corruption, resulting in a crash and potentially
> > arbitrary code execution. When a user stores private keys inside a TPM,
> > GnuPG runs a helper process called tpm2daemon to perform cryptographic
> > operations on their behalf. Other GnuPG components communicate with this
> > daemon over Assuan, a local IPC protocol. During a PKDECRYPT request,
> > tpm2daemon copies the attacker-supplied ciphertext into fixed-size TPM
> > work buffers without validating that the ciphertext fits. If the suppli=
ed
> > ciphertext is larger than the TPM buffer, the copy operation writes past
> > the end of the stack buffer and corrupts adjacent stack memory. This
> > affects both supported TPM decrypt paths: RSA (tpm2_rsa_decrypt) and ECC
> > (tpm2_ecc_decrypt). Because the overflow occurs on the stack and is
> > attacker-controlled, it is potentially exploitable for code execution
> > inside the tpm2daemon process.
>
> * https://dev.gnupg.org/T8049 ("Null pointer dereference with overlong
> signature packet")
>
> > Overlong signature packet length causes parse_signature to return
> > success with sig->data[] left NULL, leading to a crash in later
> > consumers.
>
> The advisory is at https://dev.gnupg.org/T7996#212268 (not yet on
> gnupg-announce ML). Quoting that, which discusses the main bug (T8044):
>
> > These versions are affected:
> >
> >    GnuPG 2.5.16 (released 2025-12-30)
> >    GnuPG 2.5.15 (released 2025-12-29)
> >    GnuPG 2.5.14 (released 2025-11-19)
> >    GnuPG 2.5.13 (released 2025-10-22)
> >    Gpg4win 5.0.0 (released 2026-01-14)
> >    Gpg4win 5.0.0-beta479 (released 2026-01-02)
> >    Gpg4win 5.0.0-beta476 (released 2025-12-22)
> >    Gpg4win 5.0.0-beta395 (released 2025-10-22)
> >
> > All other versions are not affected.
> >
> > A crafted CMS (S/MIME) EnvelopedData message carrying an oversized
> > wrapped session key can cause a stack buffer overflow in gpg-agent
> > during the PKDECRYPT--kem=3DCMS handling. This can easily be used for a
> > DoS but, worse, the memory corruption can very likley also be used to
> > mount a remote code execution attack.
> >
> > A CVE-id has not been assigned. We track this bug as T8044 under
> > https://dev.gnupg.org/T8044. This vulnerability was discovered by:
> > OpenAI Security Research. Their report was received on 2026-01-18;
> > fixed versions released 2026-01-27.
> >
> > Solution:
> >
> > If an affected GnuPG version is used please update ASAP to the new
> > version 2.5.17.
> >
> > If an affected version of Gpg4win is used please update ASAP to the new
> > version 5.0.1.
> >
> > If an immediate update is not possible please remove the gpgsm or
> > gpgsm.exe binary, this way the the bug can't be remotely triggered.
>
> sam
>


--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

--000000000000eacb440649630aac--

