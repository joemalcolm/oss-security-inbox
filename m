X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1051" "Tuesday" "19" "November" "2019" "15:37:23" "+0100" "Tim Kuijsten" "info+oss-security@netsend.nl" "<2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>" "27" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019111914:37:23" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        info+oss-sec Nov 19   27/1051  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191119121910.g6tc5zwbmbdiuiuh@anathema>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191119121910.g6tc5zwbmbdiuiuh@anathema>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30156 invoked by uid 550); 19 Nov 2019 15:51:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24486 invoked from network); 19 Nov 2019 14:37:37 -0000
References: 
 <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
 <20191119121910.g6tc5zwbmbdiuiuh@anathema>
In-Reply-To: <20191119121910.g6tc5zwbmbdiuiuh@anathema>
Message-Id: <2XW7E21KHVYC6.30SSXH9R06ZEM@seraph.netsend.nl>
User-Agent: mblaze/0.5.1 (2019-10-11)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Nov 2019 15:37:23 +0100
From: Tim Kuijsten <info+oss-security@netsend.nl>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

> There is not a definitive solution here. But there are multiple efforts a=
nd
> research going on. The most important one, in my opinion, is the reproduc=
ible
> builds project [1]. We need to ensure we are not inserting random or
> non-deterministic data into our build artifacts. This stretches from upst=
ream
> developers providing tarballs, to pre-compiled sources and packages from
> distributions. There is no distribution today that has full reproducible =
builds,
> but there are many projects that work towards this and work on reproducib=
le
> builds.

One attack that is not solved by reproducible builds is one on the toolchai=
n.
This can be solved with bootstrappable builds[1] which is about minimizing =
the
number of trusted binaries that are needed to produce the toolchain, that
produced the toolchain, ... that was used to build your package.

There was a talk this year called "Bitcoin Build System Security" by Carl D=
ong
about this topic[2].

[1] https://bootstrappable.org
[2] https://www.youtube.com/watch?v=3DI2iShmUTEl8
