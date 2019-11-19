X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1538" "Tuesday" "19" "November" "2019" "17:00:00" "+0100" "=?utf-8?B?THVkb3ZpYyBDb3VydMOocw==?=" "ludo@gnu.org" "<877e3vrh4v.fsf@gnu.org>" "40" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Cc:" nil nil "11" "2019111916:00:00" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        ludo@gnu.org Nov 19   40/1538  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191119121910.g6tc5zwbmbdiuiuh@anathema>" "<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15852 invoked by uid 550); 19 Nov 2019 16:00:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15831 invoked from network); 19 Nov 2019 16:00:18 -0000
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
	<20191119121910.g6tc5zwbmbdiuiuh@anathema>
	<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 29 Brumaire an 228 de la =?utf-8?Q?R=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-pc-linux-gnu
In-Reply-To: <2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl> (Tim Kuijsten's
	message of "Tue, 19 Nov 2019 15:37:23 +0100")
Message-ID: <877e3vrh4v.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
Cc: oss-security@lists.openwall.com
Date: Tue, 19 Nov 2019 17:00:00 +0100
From: =?utf-8?Q?Ludovic_Court=C3=A8s?= <ludo@gnu.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: Tim Kuijsten <info+oss-security@netsend.nl>

Hi,

Tim Kuijsten <info+oss-security@netsend.nl> skribis:

>> There is not a definitive solution here. But there are multiple efforts =
and
>> research going on. The most important one, in my opinion, is the reprodu=
cible
>> builds project [1]. We need to ensure we are not inserting random or
>> non-deterministic data into our build artifacts. This stretches from ups=
tream
>> developers providing tarballs, to pre-compiled sources and packages from
>> distributions. There is no distribution today that has full reproducible=
 builds,
>> but there are many projects that work towards this and work on reproduci=
ble
>> builds.
>
> One attack that is not solved by reproducible builds is one on the toolch=
ain.
> This can be solved with bootstrappable builds[1] which is about minimizin=
g the
> number of trusted binaries that are needed to produce the toolchain, that
> produced the toolchain, ... that was used to build your package.

Efforts in that area are fruitful and have already led to a smaller set
of =E2=80=9Cbootstrap seeds=E2=80=9D (binaries from which the rest of the s=
ystem is
built from source) for GNU=C2=A0Guix, an important step forward:

  https://guix.gnu.org/blog/2019/guix-reduces-bootstrap-seed-by-50/

Thanks to people working on GNU=C2=A0Mes and related projects at
<https://bootstrappable.org/>, we have good hope to see that set of
bootstrap seeds further reduced soon.

Reproducible builds and bootstrappable builds enable provenance tracking
and auditing, which are key to security.

Ludo=E2=80=99.
