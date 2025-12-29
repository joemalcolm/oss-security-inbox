Received: (qmail 1656 invoked by uid 550); 29 Dec 2025 02:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15786 invoked from network); 29 Dec 2025 02:48:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766976491; x=1767581291; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oy23Fzk6o5THBIsOZxfPgaoew3LweOqGzWc60bLCKEM=;
        b=EgHL+3PSq0fSPrIsLC98CfHGRW4Oye6hLuumwP505l/DgsLIsRSLgSTrZn0Gi0RyaD
         0xompeHHtGeXNFlV7MD4WWatt4AwxrN7WLlBB6YXLaB8keDOQeobjWCul6fxpKiIDxlx
         ArDHgUHndb9UiwUOGnXHEV8HelYBrjLBu3C8r0beTN9vSCgflvlQi8yFjnyT8w6KoPOJ
         LykicG/TfgFEASuqypu85ywqoVEsor1jqhbjhf9BxExKiMGOAmPRfS6LlQ0FQSK/DSVG
         y9VVU9WV6DW8QHkznNWVD+i3D2wrNRrWuOzuCZIkF26gCd5WYZB+j5Zhn4jPNXLTiW5n
         F0Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766976491; x=1767581291;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oy23Fzk6o5THBIsOZxfPgaoew3LweOqGzWc60bLCKEM=;
        b=RnGtBSiPHTRKKP5H9QDY13clXgUv5eNHkI8DeyGYgoLJzMnhmxfE9icK7itbKFERWE
         o+rWRwEzAAYm/3SyPvziQwTFI2rQqrfrMOg8clSQz662OfQ5mM7px9fzGOxctbjnhX25
         8HiTiVpUJ/OW0EG/GjkhNFUXzH2OOnvbmIt4Yz4o/H2Cs//0H9oDFblqMc+thN0dm601
         QLnt5EyeLcOC4EPlAB5G4Xu3K+coQbT07ebIpJ4YKGQpURwrT7mPGT2SsiGnVJy/U0xD
         DzflGQZ22Jdk4Bl/3xssa98vHaY8Auw+20y12s03s3s5epO9sR3LM+ymsbdipVhuQiiI
         GLgg==
X-Gm-Message-State: AOJu0YxLohCQDRp1WAamTcwb6amy7ByH/Wi5Ls5fbtQC4Ovl00+uJGmK
	Eo8xujmglcMSsLxLLbtfeno/wbl2JBdUeSbbKRE+WpHG99DVvCGoD1N4K6yoxzyvIObyFnGgf0Y
	5AzZViqAGQPBOo0O3LBRa8i4+O/SaMGex9AsH
X-Gm-Gg: AY/fxX4BPApE0Whwxs8huV117WIxDZ97Yd2rTA4/+IAEJFeWvzLYADaDfvNU6a5cSs1
	6iZqrHHQx+j+fBn7ZbpuUy4XzgrGvHgQrg/MQQdKwGFjrIIt78D2jiFE/dCQVKZXRPrCn/mEdes
	5bVVoca4AJcBL2sf3oP2HbnhFVvTxxyPLyAgmw8eF81kXWhwqPdV9MiMJ/7TVH9ZMBA2dnHR9A/
	YAu4KyojDmwVkAP0g67ACZHL3mSBb1mrFOHxpMAtqjKVKnD/fFWgyiUzorwaTWG17QjYvem
X-Google-Smtp-Source: AGHT+IEjRdHG/5N4ZfsmC8/bq0I3wbfHVcu+RHxp7QyA9QjeXhYHUTO1hxWszvXSHTkp8A79ChYiLLk9cwCy7LkQmY4=
X-Received: by 2002:a05:6214:458b:b0:882:437d:282d with SMTP id
 6a1803df08f44-88d82de8226mr445794436d6.30.1766976491405; Sun, 28 Dec 2025
 18:48:11 -0800 (PST)
MIME-Version: 1.0
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <87pl7ykjqa.fsf@gentoo.org> <87h5takj3q.fsf@gentoo.org>
In-Reply-To: <87h5takj3q.fsf@gentoo.org>
From: Greg Dahlman <dahlman@gmail.com>
Date: Sun, 28 Dec 2025 19:48:00 -0700
X-Gm-Features: AQt7F2pFMZF9RenhqwHM6Wa68FvyznzR5Es7aQvWTK3rlfzU8_EDbHfVUEO-iJY
Message-ID: <CAM=PXV7Aw0-P2AuL917VW8xaRjpLA+o4NLWp+BFzYb3HpGCVfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000018c33206470e4651"
Subject: Re: [oss-security] Systemd vsock sshd

--00000000000018c33206470e4651
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I apologize, there was an intersection of bad wording, polysemy, and
learning curve. I do know this post is public.

To clarify:

I intend to spread the word to as many users as possible within my means,
so they can make the necessary changes to have their systems configured as
they expect. I will not move to that stage before January 6th.

I have and will continue to reach out to some of the more exposed projects
like kubernetes through their security reporting policies as time allows,
after the 6th I will probably just move to public issues, bugs etc...

Thank you,
Greg

On Sun, Dec 28, 2025 at 7:19=E2=80=AFPM Sam James <sam@gentoo.org> wrote:

> Sam James <sam@gentoo.org> writes:
>
> > Greg Dahlman <dahlman@gmail.com> writes:
> >
> >> This information is to be publicly released on January 6 per
> requirements of the distro list.
> >
> > To be clear, are you aware that this list (oss-security) is a public
> > mailing list?
>
> .. though I see you are indeed aware from other correspondence, sorry
> (victim of catching up on inbox in wrong order), but I expect someone
> else would've asked anyway.
>

--00000000000018c33206470e4651--
