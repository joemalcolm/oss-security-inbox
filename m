Received: (qmail 9511 invoked by uid 550); 25 Sep 2024 22:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12022 invoked from network); 25 Sep 2024 22:07:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727302058; x=1727906858; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GldeWiPy1Dt4dSVc8FjRb8FSYGQ1LwugGVj1MhIdMM=;
        b=LoSJGLbP3HMvXO1q857U9lISrNXHdunWPZp7pdPtvlUCpS9rm45FOkFU63rV/Rb747
         tcTAuEbb7tg8m8us0Da5wLIldY6MbOXq5jaE5m0HmQK3YDzp3LI7o53p3OSccSOS997L
         9hZixf63kw2tMPCo0YjnPSG18erk/ujmSLY+vwxx6ZS+qe3XSOzyQGWnjEpSh7NVKXVi
         IbOe66+4GnffgVJfvJs6jzGl0Lzcrfy5fb9pi93gmpPL+1DGEvMVzPLVmqbkfVAl1Zko
         OacnRQcga4pEB1FERNwTE1d+MANOOdmpDmBkfMFssB4ye94DVPYJlAvMJiLBH88oc252
         R6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727302058; x=1727906858;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GldeWiPy1Dt4dSVc8FjRb8FSYGQ1LwugGVj1MhIdMM=;
        b=QQMRavDFrgDQ8Enp7A43ObNv16IBK4bHB3LqQ7eK75Ow6X/zqU1MzN2Px3pVvSREwe
         J//7b/M+MA3E0wJCZ87bgs7jCqhQLtEIiUC+pgjJgmO8RAeSkyLBq/p6HCLJmWdDLnSd
         m8Oz0+p1tAskSOO24Yrz+xQ0hVh9LXmJR+DdyZfLwh+7ay9O16rlcQ4pj6NDMMaTSAuX
         ugNvIZBEL61bWngGeCsS9V7weiy3Syx5mjtprxzyxYyq2ZC31fECquQkIZKxar5px2oj
         zIrg6A0+so3OVG74dPOjHQqq/ZICpDv6DF6UEenXWyzv/doZ1muBckuDcYSYU9EnukmM
         j3MQ==
X-Gm-Message-State: AOJu0YzcjyL/MeGQPviF/XQK/Icr49vYGldjwB7XIIcfw1ZedcrAjsaF
	oAK6fM1R4eaD0iW36+rpv/cvBAekPlpvGS5mA1qevP1KAmJJBlYEAASd4l8L+Qlyc+skXIGFY7f
	Tsr8chpwd/5FWBKBjFzb5AkQtFc7X+RJI
X-Google-Smtp-Source: AGHT+IGVIuPB1jyuuijc4OORrgM+ABNox3zifhRk3ULuJ38Cg+TLwaegMgUonBrLOHHzmFlaei3qzh6nXkRpRQSr2EA=
X-Received: by 2002:a05:6902:1682:b0:e1d:a51f:e6d1 with SMTP id
 3f1490d57ef6-e24d7debdf0mr3399858276.9.1727302057713; Wed, 25 Sep 2024
 15:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
 <20240925152119.GA787@openwall.com> <BY3PR13MB4769D5EB969804CD5B905A748B692@BY3PR13MB4769.namprd13.prod.outlook.com>
In-Reply-To: <BY3PR13MB4769D5EB969804CD5B905A748B692@BY3PR13MB4769.namprd13.prod.outlook.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 25 Sep 2024 18:07:01 -0400
Message-ID: <CAH8yC8kdMD1-UH87ur9jKZenc0+HLDXhebtWpB7Ffkj4J7tD3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

On Wed, Sep 25, 2024 at 5:45=E2=80=AFPM Goldberg, Adam <Adam.Goldberg@sony.=
com> wrote:
>
> > On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
> > > Using the MD5 value of a user's email to access Gravatar is insecure =
and can lead to the leakage of user email. The official recommendation is t=
o use SHA256 instead.
>
> > For practical purposes, this sounds like almost no change to me.  I've
> > just checked and https://urldefense.com/v3/__https://docs.gravatar.com/=
api/avatars/hash/__;!!JmoZiZGBv3RvKRSx!6zoU_J4wgUshOcGT7WCRwWgz0hjESorDYcuC=
X8cOARG6zrVpuLHmeayYJmf2ZnIO1QaQVFfeopQ2u6GQ6g$ does say:
>
> > > All URLs on Gravatar are based on the use of the hashed value of an
> > > email address. Images and profiles are both accessed via the hash of =
an
> > > email, and it is considered the primary way of identifying an identity
> > > within the system. To ensure a consistent and accurate hash, the
> > > following steps should be taken to create a hash:
> > >
> > > 1. Trim leading and trailing whitespace from an email address
> > > 2. Force all characters to lower-case
> > > 3. hash the final string with SHA256
>
> Note that this is a recommendation, "the following steps *should* ...", w=
hich doesn't require that those three steps be taken.
>
> > So Gravatar URLs by design allow for quick checking of email addresses
> > against them, and thus allow to infer not-too-cryptic addresses.  Both
> > MD5 and SHA-256 are very fast, with speeds in many billion per second
> > per GPU, with SHA-256 being only a few times slower than MD5.  MD5's
> > cryptographic weaknesses are irrelevant to this use case.
>
> > So I think this CVE should either be rejected (as the issue is with
> > Gravatar, not with implementations) or considered unfixable (within
> > spec) and thus not fixed.
>
> See above, it seems to be an implementation issue (at least in part -- an=
 application must take specific actions in order to create the hash in a se=
cure way).

I believe this is a use case for Aumasson and Bernstein's SipHash,
<https://eprint.iacr.org/2012/351>. Wikipedia has a nice description
of how SIpHash differs from a hash like SHA; see
<https://en.wikipedia.org/wiki/SipHash>.

Jeff
