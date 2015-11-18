X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7292" "Wednesday" "18" "November" "2015" "10:49:58" "-0500" "Steve Grubb" "sgrubb@redhat.com" "<1673938.GaGbo5rB5J@x2>" "197" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111815:49:58" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       sgrubb@redha Nov 18  197/7292  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564C582B.6080803@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<20151118021008.GB31188@openwall.com>" "<564C582B.6080803@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20385 invoked by uid 550); 18 Nov 2015 15:50:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20347 invoked from network); 18 Nov 2015 15:50:14 -0000
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: Florian Weimer <fweimer@redhat.com>, Solar Designer <solar@openwall.com>,
        Jeff Law <law@redhat.com>, Bernd Schmidt <bschmidt@redhat.com>
Date: Wed, 18 Nov 2015 10:49:58 -0500
Message-ID: <1673938.GaGbo5rB5J@x2>
Organization: Red Hat
User-Agent: KMail/4.14.10 (Linux/4.2.3-203.fc22.x86_64; KDE/4.14.14; x86_64; ; )
In-Reply-To: <564C582B.6080803@redhat.com>
References: <20151117153951.GA28672@openwall.com> <20151118021008.GB31188@openwall.com> <564C582B.6080803@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

On Wednesday, November 18, 2015 11:51:23 AM Florian Weimer wrote:
> On 11/18/2015 03:10 AM, Solar Designer wrote:
> > This approach makes sense to me, but I think we should have a better
> > idea of whether and how "a point where ROP gadgets are reasonably hard
> > to find & exploit" is potentially reachable.  If it is not even
> > potentially reachable, then this undermines the effort, unfortunately.
>=20
> This came up in other discussions as well.  We even got to the point
> where someone ran a ROP gadget finding tool on a core library, which did
> not find any gadgets at all, and someone else found a useful one in a
> few minutes with objdump and no other tool support (and this did not
> even include jumping into the middle of instructions).

This was something that I was involved in. What I did was get the latest=20
source code of ROPgadget. [1]  I have no idea how good it is compared to ot=
her=20
tools. But it does have a command line switch that builds a full ROP chain =
so=20
that you have a working exploit.

Next, I wrote a small script to iterate over the directories on my Fedora 2=
2=20
system that should hold programs or libraries the attacker might exploit an=
d=20
check each and every one of them using ROPgadget. I was curious what the si=
ze=20
of the elephant is that we have.

What I found was that the list of libraries or programs that ROPgadget coul=
d=20
build a chain for is fairly small. I thought about reasons why that might b=
e=20
the case and then considered that maybe if the gadgets from several librari=
es=20
were combined, maybe it would find more. But I think ASLR would make too ma=
ny=20
moving parts for that to be practical. If you use a whole library or=20
application, then everything moves together up or down as a unit to the new=
=20
offset.

Another thought in explaining why the list was so small is that the quality=
 of=20
the chaining that ROPgadget has needs a lot of improvement. Could someone m=
ore=20
clever piece together gadgets that make a chain that ROPgadget didn't see? =
I=20
don't have the expertise to do this by hand. So, I'll do what others would =
do=20
and look for another tool. There is only one other tools that I could find,=
=20
ropper [2]. It dies due to a programming bug. So, I doubt its being used.

The following files are the ones that ROPgadget was able to build a chain f=
or:

/usr/lib64/ld-2.21.so
/usr/lib64/libasound.so.2.0.0
/usr/lib64/libavfilter.so.5.11.102
/usr/lib64/libc-2.21.so
/usr/lib64/libcln.so.6.0.4
/usr/lib64/libdb-5.3.so
/usr/lib64/libfreetype.so.6.11.4
/usr/lib64/libgs.so.9.16
/usr/lib64/libgtk-3.so.0.1600.7
/usr/lib64/libgtk-x11-2.0.so.0.2400.28
/usr/lib64/libliveMedia.so.36.0.6
/usr/lib64/libmozjs-17.0.so
/usr/lib64/libmozjs185.so.1.0.0
/usr/lib64/libmozjs-24.so
/usr/lib64/libpython3.4m.so.1.0
/usr/lib64/libQtWebKit.so.4.10.4
/usr/lib64/libruby.so.2.2.0
/usr/lib64/libsamba-util.so.0.0.1
/usr/lib64/libsmbconf.so.0
/usr/lib64/libsqlite3.so.0.8.6
/usr/lib64/libtcl8.6.so
/usr/lib64/libwebkit2gtk-4.0.so.37.6.8
/usr/lib64/libwebkitgtk-1.0.so.0.22.15
/usr/lib64/libwebkitgtk-3.0.so.0.22.15
/usr/lib64/libxml2.so.2.9.2
/usr/libexec/mysqld
/usr/sbin/ldconfig
/usr/sbin/sln
/usr/bin/clang
/usr/bin/clang-check
/usr/bin/dvipdfmx
/usr/bin/gimp-2.8
/usr/bin/inkscape
/usr/bin/js
/usr/bin/shotwell
/usr/bin/virtuoso-t

This is on a desktop with a lot of server and software development packages=
=20
that total up to approx 3800 rpms. If we are going to try to spoil ROP=20
gadgets, I would suggest that we as a community pick one tool and give it s=
ome=20
love so that it finds all kinds of gadgets. This way we know how effective =
any=20
mitigations are.

During this study, Florian had suggested checking -fstack-protector-all. Th=
is=20
defeated ROPgadget. It was not able to find any ROP gadgets in anything=20
compiled that way. If it were better at finding gadgets I would like to ret=
ry=20
the study to see if that still holds true.

=20
> In the end, this boils down to lack of concrete goals.  =E2=80=9CBlinding=
 ROP
> gadget finder X=E2=80=9C is easy (just change the ELF format in such a wa=
y that
> it's no longer recognized by the tool), but probably not very useful if
> you want to improve security, for any useful definition of =E2=80=9Csecur=
ity=E2=80=9D.
>=20
> We face the problem that I and my immediate colleagues (on the Red Hat
> tools team) do not have access to information about successful
> compromises, and what attackers actually do today, on GNU/Linux systems,
> both to achieve initial access

There is information about this scattered around. It largely depends on wha=
t=20
the role of the system is, what exploit is recently circulating, and extern=
al=20
vs internal threat actors. Fishing around for the top uses of Linux servers=
=20
[3] reveals probably what we all knew its used for: virtualization, databas=
e=20
servers, web servers, application servers, etc.

For web servers, there are studies [4] that show what people do. TL;DR: the=
y=20
find a hole in the web software to issue a wget command to pull down softwa=
re,=20
this lands in /tmp, they then execute the software downloaded.

There's 3 different points where this could have been defeated. 1) mod_secu=
rity=20
probably would have blocked whatever weird URL or hole they found. 2) /tmp=
=20
should be mounted noexec. But noexec is easy to defeat by invoking the=20
interpreter or ld.so directly. 3) This is the hard one and yet so simple to=
=20
fix....make all interpreters check the execute bit before executing. They n=
eed=20
to be a policy enforcement point for the noexec mount option. Otherwise we =
may=20
as well ask the kernel guys to remove the noexec mount option because its=20
useless.

For other servers, its a similar pattern.

> and to maintain a presence afterwards.

This is something I am also interested in. There are groups of people study=
ing=20
this. One such project is ATT&CK [5] run by MITRE. I have been collecting=20
information for Linux systems to add to their project. The idea of that=20
project is to enumerate the various ways that an attacker can perform actio=
ns=20
post exploit. With a catalogue, you can then go build tools that check the=
=20
hiding places. If they get a rootkit installed, you might not be able to=20
detect it on the host, but rather by its actions on the network.

>From this catalogue, you can the create indicators of compromise to look fo=
r.=20
Mandiant has one method [6], but I would rather see something based around=
=20
SCAP tooling so that its standardized.


> Under these conditions, anything we implement is, to some degree,
> arbitrary and a shot in the dark.  We can still use our best judgment to
> set priorities, but we are very far from being guided by empirical eviden=
ce.

I hope I filled in some of the blanks. I am sure that others can point to m=
ore=20
information to help fill in more gaps.

-Steve


1 - http://shell-storm.org/project/ROPgadget/
2 - https://github.com/sashs/Ropper
3 - https://www.daniweb.com/hardware-and-software/linux-and-unix/news/25864=
7/10-ways-that-enterprises-use-linux
4 - https://www.sans.org/reading-room/whitepapers/malicious/introduction-li=
nux-based-malware-36097
5 - https://attack.mitre.org/wiki/Main_Page
6 - http://www.openioc.org/


