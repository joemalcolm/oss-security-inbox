Received: (qmail 17968 invoked by uid 550); 8 May 2026 16:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3372 invoked from network); 8 May 2026 13:00:02 -0000
X-Gm-Message-State: AOJu0Yxh0NRiR0mQJyZB0eIfr+4x3NGzLcwh89DRQmNd5RPQJRO75M8/
	1V8mXAFp2maiOXGQmiBn9bjlIbytux2Y9DsrJaMYpoOyljfr/3/S2xUiQkXiGXqBGTfMFJr20sK
	/GVcQ+AOBPnKQLdMuXr5l+NYT3nrDpbs=
X-Received: by 2002:a05:6a21:6daa:b0:3a2:e0d3:37ea with SMTP id
 adf61e73a8af0-3aa5a3ba131mr13849267637.11.1778245190681; Fri, 08 May 2026
 05:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <afzgS2SCWNcZU3vU@v4bel> <5098645.GXAFRqVoOG@daniel-desktop3>
In-Reply-To: <5098645.GXAFRqVoOG@daniel-desktop3>
From: Kalin KOZHUHAROV <kalin@thinrope.net>
Date: Fri, 8 May 2026 14:59:33 +0200
X-Gmail-Original-Message-ID: <CAKXLc7dbALVK=jV4p9gcAD33LK44fjSan2YX7RYm7J7Qt-mg4g@mail.gmail.com>
X-Gm-Features: AVHnY4K51RFz0hKGk9GXH6J_H0YtjgxxrkCtm4bRfR5AlYul6nBVaMx03Oi0HA4
Message-ID: <CAKXLc7dbALVK=jV4p9gcAD33LK44fjSan2YX7RYm7J7Qt-mg4g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Dirty Frag: Universal Linux LPE

On Fri, May 8, 2026 at 6:39=E2=80=AFAM Daniel Tang
<danielzgtg.opensource@gmail.com> wrote:
>
> > no patches [...] exist
>
Well patches will eventually come, but mitigation across the board hit
a few snags already, so from my lessons learned I baked a script to
apply the mitigation.
Actually renaming the modules, not relying on modprobe config, since
there are some distros that don't have that by default.

After some initial testing and with GNU parallel as (often) last
resort mass deployment tool, I just released it on
https://github.com/thinrope/cf-df in the hope that I may save some
minutes or hours of someones'  job. The script itself is useful on its
own, to be deployed via any configuration management system, or run by
hand.

Any feedback/issues/PR are welcome.

Here is the README (reformatted to plaintext for clarity):
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://github.com/thinrope/cf-df
=3D=3D=3D copy.fail + Dirty Frag patching-on-the-fly =3D=3D=3D

Patch copy.fail[1] and Dirty frag[2] related CVEs

=3D=3D Why? =3D=3D

I suddenly needed to patch a multitude of linux hosts in various
platforms with minimal impact. I don't trust the suggested method of
disabling module loading, I'd rather have the file renamed (or even
deleted at some point).

=3D=3D How? =3D=3D

Execute the cf+df_patching.sh script as root on any host. Use and
configuration management system you have in place. Alternatively, for
those odd mass cases, use the wonderful GNU parallel[5] from a central
host via ssh (run as root, ssh as root[3,4]):

git clone https://github.com/thinrope/cf-df.git
cd cf-df
$EDITOR target.list
parallel --tag --nonall --slf target.list --workdir ... --transferfile
cf+df_patching.sh --cleanup 'bash cf+df_patching.sh'

=3D=3D References =3D=3D

[1] copy.fail: https://copy.fail/
[2] Dirty frag: https://github.com/V4bel/dirtyfrag
[3] If you cannot login via ssh directly as root, use sudo properly
[4] ... or abuse these CVEs before you patch to obtain root :-D
[5] GNU parallel: https://www.gnu.org/software/parallel/
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Regards,
Kalin.
