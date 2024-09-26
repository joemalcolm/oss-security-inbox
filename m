Received: (qmail 26179 invoked by uid 550); 26 Sep 2024 11:07:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28107 invoked from network); 26 Sep 2024 02:11:03 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YxPanxENWTatSY3v/fT0XjZCXB2Zdf7htJ4+O2OUG6SfjhhWcgk
	JMYLieCwbjyHuHaVy9V3V1TZkPk+ECHd22NJX1FcmWQg4WVmXYfXTCSMyD1RhrChbVg4O/CgxmP
	K50HPUFSQeR6pUGX3HQkg3fEHpVY=
X-Google-Smtp-Source: AGHT+IGVg/8OqxXKyrr4swe/scbdI9ADLXc9a5u7Me185i8rzxccmzzzEXuP4DJs2D8LqQqU9mH3DJRYXvPCem7E2MQ=
X-Received: by 2002:a05:6402:1e89:b0:5c4:2ffc:cc2 with SMTP id
 4fb4d7f45d1cf-5c72061fdaamr2961407a12.13.1727316650473; Wed, 25 Sep 2024
 19:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org> <20240925152119.GA787@openwall.com>
In-Reply-To: <20240925152119.GA787@openwall.com>
From: LinkinStar <linkinstar@apache.org>
Date: Thu, 26 Sep 2024 10:10:38 +0800
X-Gmail-Original-Message-ID: <CAF=YEMyfspxZsA6BiVrD8iKJBiE=EebQB=3YC=Zk-49h3ywm7A@mail.gmail.com>
Message-ID: <CAF=YEMyfspxZsA6BiVrD8iKJBiE=EebQB=3YC=Zk-49h3ywm7A@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005dcd830622fc3fbd"
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

--0000000000005dcd830622fc3fbd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

First of all, thank you very much for your feedback.

Because *Gravatar recommends using sha-256*, we believe there must be a
reason for its modification. Since the official recommendation is to change
the encryption method, why not implement it according to the official
requirements? You must admit that sha-256 is more difficult than md5, even
if only slightly. Although this may not completely solve the problem, I
believe following the official recommendation would be marginally better,
wouldn't it? So I think this fix itself is acceptable.

Best regards,
LinkinStar

On Wed, Sep 25, 2024 at 11:21=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:

> On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
> > Using the MD5 value of a user's email to access Gravatar is insecure and
> can lead to the leakage of user email. The official recommendation is to
> use SHA256 instead.
>
> For practical purposes, this sounds like almost no change to me.  I've
> just checked and https://docs.gravatar.com/api/avatars/hash/ does say:
>
> > All URLs on Gravatar are based on the use of the hashed value of an
> > email address. Images and profiles are both accessed via the hash of an
> > email, and it is considered the primary way of identifying an identity
> > within the system. To ensure a consistent and accurate hash, the
> > following steps should be taken to create a hash:
> >
> > 1. Trim leading and trailing whitespace from an email address
> > 2. Force all characters to lower-case
> > 3. hash the final string with SHA256
>
> So Gravatar URLs by design allow for quick checking of email addresses
> against them, and thus allow to infer not-too-cryptic addresses.  Both
> MD5 and SHA-256 are very fast, with speeds in many billion per second
> per GPU, with SHA-256 being only a few times slower than MD5.  MD5's
> cryptographic weaknesses are irrelevant to this use case.
>
> So I think this CVE should either be rejected (as the issue is with
> Gravatar, not with implementations) or considered unfixable (within
> spec) and thus not fixed.
>
> Alexander
>

--0000000000005dcd830622fc3fbd--
