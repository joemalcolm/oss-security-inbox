X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1757" "Friday" "29" "January" "2021" "12:30:01" "-0500" "David A. Wheeler" "dwheeler@dwheeler.com" "<B55D8C2E-39CF-4588-9C85-B78849C7D903@dwheeler.com>" "42" "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil "1" "2021012917:30:01" "[oss-security] Linux Kernel: local priv escalation via futexes" (number mark "U       dwheeler@dwh Jan 29   42/1757  " thread-indent "\"Re: [oss-security] Linux Kernel: local priv escalation via futexes\"\n") "<20210129170111.GO2759@suse.de>" ("<20210129100928.GD6548@suse.de>" "<20210129164208.GA8779@openwall.com>" "<20210129170111.GO2759@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21685 invoked by uid 550); 29 Jan 2021 17:30:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21650 invoked from network); 29 Jan 2021 17:30:18 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_21E76CFE-44C8-4703-B333-05DB9A8BBFD0"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Fri, 29 Jan 2021 12:30:01 -0500
References: <20210129100928.GD6548@suse.de>
 <20210129164208.GA8779@openwall.com> <20210129170111.GO2759@suse.de>
To: oss-security@lists.openwall.com
In-Reply-To: <20210129170111.GO2759@suse.de>
Message-Id: <B55D8C2E-39CF-4588-9C85-B78849C7D903@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] Linux Kernel: local priv escalation via futexes

--Apple-Mail=_21E76CFE-44C8-4703-B333-05DB9A8BBFD0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Jan 29, 2021, at 12:01 PM, Marcus Meissner <meissner@suse.de> wrote:
> Mitre has now assigned CVE-2021-3347.
>=20
> On Fri, Jan 29, 2021 at 05:42:08PM +0100, Solar Designer wrote:
>> Hi,
>>=20
>> I'm not familiar with futexes, but just to save others a few minutes on
>> looking this up:
>=20
> (Is anyone? Futex are too complex for me at least, I would guess also=20
> using them is error prone.)

Here=E2=80=99s some helpful context. "A futex overview and update=E2=80=9D =
(2009) at https://lwn.net/Articles/360699/
"The futex mechanism... is a fast, lightweight kernel-assisted locking prim=
itive for user-space applications. It provides for very fast uncontended lo=
ck acquisition and release. The futex state is stored in a user-space varia=
ble (an unsigned 32-bit integer on all platforms). Atomic operations are us=
ed in order to change the state of the futex in the uncontended case withou=
t the overhead of a syscall. In the contended cases, the kernel is invoked =
to put tasks to sleep and wake them up. Futexes are the basis of several mu=
tual exclusion constructs commonly used in threaded programming."

More recently: "Rethinking the futex API=E2=80=9D (2020): https://lwn.net/A=
rticles/823513/
"The current effort to rework futexes appears to be driven by a couple of c=
oncerns. One that goes mostly unstated is the desire to create a system-cal=
l interface that makes a bit more sense than futex(), which is a complex, m=
ultiplexed API with wildly varying arguments and a number of special cases.=
=E2=80=9D

--- David A. Wheeler


--Apple-Mail=_21E76CFE-44C8-4703-B333-05DB9A8BBFD0--
