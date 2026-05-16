Received: (qmail 16028 invoked by uid 550); 16 May 2026 17:15:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16001 invoked from network); 16 May 2026 17:15:22 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sat, 16 May 2026 19:15:07 +0200
Message-ID: <1888082.3VsfAaAtOV@fcf>
In-Reply-To: <20260516150545.7570323b@hboeck.de>
References: <20260516150545.7570323b@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart3383203.AJdgDx1Vlc"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

--nextPart3383203.AJdgDx1Vlc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On sabato 16 maggio 2026 15:05:45 Ora legale dell=E2=80=99Europa centrale H=
anno=20
B=C3=B6ck wrote:
> To pick the example of IPSEC, i wonder if it wouldn't be better to
> have, e.g., a separate "linux-modules-ipsec" package that isn't
> installed by default. People who use and need IPSEC will likely know
> that they need it, and can install it separately.

Hello Hanno,

I understand your rationale. To reduce the "complexity" of your proposal,=20
those modules can be configured as modules (I mean CONFIG_[snip]=3Dm)=20
and blacklisted by default in /etc/modprobe.d/
What do you think?

--nextPart3383203.AJdgDx1Vlc--



