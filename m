X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1088" "Saturday" "23" "June" "2018" "17:48:14" "+0200" "=?ISO-8859-1?Q?Peter_Kjellstr=F6m?=" "cap@nsc.liu.se" "<17C874D1-EAF8-41E2-91EC-DEE13D8290D2@nsc.liu.se>" "37" "Re: [oss-security] Intel hyper-threading security issues" "^CC:" nil nil "6" "2018062315:48:14" "[oss-security] Intel hyper-threading security issues" (number mark "U       cap@nsc.liu. Jun 23   37/1088  " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<87vaabea58.fsf@concordia.ellerman.id.au>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" "<20180621125049.GA14978@openwall.com>" "<87vaabea58.fsf@concordia.ellerman.id.au>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9955 invoked by uid 550); 23 Jun 2018 16:07:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20200 invoked from network); 23 Jun 2018 15:49:05 -0000
User-Agent: K-9 Mail for Android
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com> <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org> <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com> <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com> <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at> <20180621125049.GA14978@openwall.com> <87vaabea58.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----P22KA07LR631QI763FKZ631PDQW0I0"
Content-Transfer-Encoding: 7bit
Message-ID: <17C874D1-EAF8-41E2-91EC-DEE13D8290D2@nsc.liu.se>
CC: oss-security@lists.openwall.com,Solar Designer <solar@openwall.com>
Date: Sat, 23 Jun 2018 17:48:14 +0200
From: =?ISO-8859-1?Q?Peter_Kjellstr=F6m?= <cap@nsc.liu.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: Michael Ellerman <mpe@ellerman.id.au>

------P22KA07LR631QI763FKZ631PDQW0I0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri, 22 Jun 2018 14:08:03 +1000
Michael Ellerman <mpe@ellerman.id.au> wrote:

> Solar Designer <solar@openwall.com> writes:
> > On Thu, Jun 21, 2018 at 01:54:16PM +0200, Sven Schwedas wrote:=20=20
> >> On 2018-06-21 12:28, Lukas Odzioba wrote:=20=20
...
> > On a related note, attached is a generic Linux /proc/cpuinfo parser
> > I=20=20
>=20
> I guess by "generic" you mean Intel & AMD? :)
>=20
> It won't work on powerpc, or arm, or arm64 ...
>=20
> You should be able to determine all of the info you need from the
> sysfs topology files, which work across arches.
>=20
> See the script below for example, which shows CPUs grouped by core.
...

This is sliding OT a bit I guess, but may I suggest the fairly mature
hwloc (used by many projects in need of numa/core/smt topology):

https://www.open-mpi.org/projects/hwloc/

 $ lstopo

/Peter K
--=20
Sent from my Android device with K-9 Mail. Please excuse my brevity.=

------P22KA07LR631QI763FKZ631PDQW0I0--
