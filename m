Received: (qmail 29893 invoked by uid 550); 21 Dec 2022 18:25:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19581 invoked from network); 21 Dec 2022 18:14:02 -0000
MIME-Version: 1.0
Date: Wed, 21 Dec 2022 18:13:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
From: "Yann Droneaud" <ydroneaud@opteya.com>
Message-ID: <cad6e3380e53431ae91d5a3b520e59a59043ab90@opteya.com>
To: oss-security@lists.openwall.com
In-Reply-To: <Y6NBGsQ+7FAaWuv/@itl-email>
References: <Y6NBGsQ+7FAaWuv/@itl-email>
 <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
X-Originating-IP: 10.0.20.16
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

Hi,

21 d=C3=A9cembre 2022 =C3=A0 18:59 "Demi Marie Obenour" <demi@invisiblethin=
gslab.com> a =C3=A9crit:
> On Wed, Dec 21, 2022 at 06:13:17PM +0100, Dmitry Vyukov wrote:
>=20
> >=20
> > Hello,
> >=20=20
> >  This is not a single vulnerability, the list of affected software is
> >  large, but it's not a security issue for all of it.
> >=20=20
> >  It occurred to me that most of the Linux procfs /proc/pid/stat and
> >  /proc/pid/task/tid/stat parsing code out there is buggy. The fine
> >  contains a set of numbers about the task:
> >  https://man7.org/linux/man-pages/man5/proc.5.html
> >=20=20
> >  e.g. $ cat /proc/self/stat
> >  1715376 (cat) R 1544883 1715376 1544883 34819 1715376 4194304 106 0 0
> >  0 0 0 0 0 20 0 1 0 42505561 9207808 237 18446744073709551615
> >  93955355631616 93955355651497 140737444557056 0 0 0 0 0 0 0 0 0 17 36
> >  0 0 0 0 0 93955355667504 93955355669120 93955385581568 140737444559745
> >  140737444559765 140737444559765 140737444564971 0
> >=20=20
> >  Most of the code splits it by space and takes an N-th field.
> >  The problem is that the process name "(cat)" can contain spaces (and
> >  brackets). Potentially some important software (containers/sandboxes)
> >  can be tricked into getting wrong data, and I've seen cases close to
> >  stack overflows (buffer for a fixed number of fields is allocated on
> >  stack).
> >=20=20
> >  Some examples:
> >  OpenJDK:
> >  https://sourcegraph.com/github.com/openjdk/jdk/-/blob/src/jdk.manageme=
nt/unix/native/libmanagement_ext/OperatingSystemImpl.c?L133-139
> >  https://sourcegraph.com/github.com/openjdk/jdk8u/-/blob/jdk/src/solari=
s/native/sun/management/OperatingSystemImpl.c?L223-229
> >=20=20
> >  Ansible:
> >  https://sourcegraph.com/github.com/ansible/ansible/-/blob/lib/ansible/=
modules/yum.py?L507-510
> >=20=20
> >  Libuv:
> >  https://sourcegraph.com/github.com/libuv/libuv/-/blob/src/unix/linux.c=
?L674-701
> >=20=20
> >  bdwgc:
> >  https://sourcegraph.com/github.com/mono/linux-packaging-mono/-/blob/ex=
ternal/bdwgc/os_dep.c?L1138-1155
> >=20=20
> >  But really most of the code that does it:
> >  https://sourcegraph.com/search?q=3Dcontext:global+/%5C%22%5C/proc%5C/.=
*%5C/stat%5C%22/
> >=20=20
> >  The only way to parse it is to do strrchr(')') first (fortunately it
> >  contains just one unescaped string).
> >=20=20
> >  Thanks
> >=20
>=20
> Should Linux be patched to somehow escape the spaces, or replace them
> with something else? /proc/pid/status is even harder to parse robustly.

It might be difficult because of Linux's policy to not break userspace ABI.

For example, I've suggested some sort of escaping on /proc/net/unix, and
it was not welcomed.

https://lore.kernel.org/all/20220406102213.2020784-1-ydroneaud@opteya.com/

In a follow up, I've added a PoC for injecting fake entries in /proc/net/un=
ix

https://lore.kernel.org/all/8a87957e-4d33-9351-ae74-243441cb03cd@opteya.com/

I didn't found a way to abuse this issue: no vulnerability, no need for
a change that would break userspace ABI.

Regards.

--=20
Yann Droneaud
OPTEYA
