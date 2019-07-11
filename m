X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1919" "Thursday" "11" "July" "2019" "18:26:01" "+0200" "Steffen Nurpmeso" "steffen@sdaoden.eu" "<20190711162601.RE3Tr%steffen@sdaoden.eu>" "43" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071116:26:01" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        steffen@sdao Jul 11   43/1919  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26100 invoked by uid 550); 11 Jul 2019 21:26:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25997 invoked from network); 11 Jul 2019 16:26:15 -0000
Message-ID: <20190711162601.RE3Tr%steffen@sdaoden.eu>
In-Reply-To: <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
Mail-Followup-To: "Perry E. Metzger" <perry@piermont.com>,
 oss-security@lists.openwall.com, Malte Kraus <malte.kraus@suse.com>
User-Agent: s-nail v14.9.13-111-g4bb54f29
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, Malte Kraus <malte.kraus@suse.com>
Date: Thu, 11 Jul 2019 18:26:01 +0200
From: Steffen Nurpmeso <steffen@sdaoden.eu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop
 Applications
To: "Perry E. Metzger" <perry@piermont.com>

Perry E. Metzger wrote in <20190711114710.09ab5ad9@jabberwock.cb.piermon\
t.com>:
 |On Thu, 11 Jul 2019 13:57:19 +0000 Malte Kraus <malte.kraus@suse.com>
 |wrote:
 |> On Thu, 2019-07-11 at 09:33 -0400,  Perry E. Metzger wrote:
 ...
 |> I didn't (intend to) say there is an (additional) security problem.
 |> I just tried to succinctly explain why the desktop environments are
 |> coming up with these D-Bus interfaces now.
 |
 |It seems like a bad idea.
 |
 |If one wants to have mechanisms by which the operating system can
 |allow unprivileged programs to temporarily assume privileges (which
 |is a frequent idea in security), then they should be carefully
 |designed and part of the OS, rather than creating an ad hoc facility
 |via a subsystem that isn't intended for it. There are good ways to do
 |that, like capabilities.

Sending this remark because a few days ago i posted something
similar to a gnupg ML.

=46rom my point of view there is root user hysteria in Unix and
clones, maybe forever, but i see it consciously in the last years.
If the solution against SETUID programs or other, finer grained
privileges, but which anyway can be detected via file system
tools, is that privilege adjustments u-boat away to something that
needs source code or over-the-wire analysis to being detected at
all, i fail to see how this leads to something better.

Without personally having made it there yet, i think the
traditional way of in-application sandboxing fits better, even
with SETUID programs which first perform some higher-privilege
setup before going more secure, like capsicum on FreeBSD,
pledge/unveil on OpenBSD, or prctl, seccomp (and apparmor) on
Linux.  Or even interesting entire frameworks like CloudABI.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
