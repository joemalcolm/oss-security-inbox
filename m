X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8564" "Wednesday" "18" "November" "2015" "17:33:37" "+0100" "Fabio Pagani" "pagabuc@gmail.com" "<CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>" "222" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111816:33:37" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       pagabuc@gmai Nov 18  222/8564  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<1673938.GaGbo5rB5J@x2>" ("<20151117153951.GA28672@openwall.com>" "<20151118021008.GB31188@openwall.com>" "<564C582B.6080803@redhat.com>" "<1673938.GaGbo5rB5J@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14300 invoked by uid 550); 18 Nov 2015 16:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3141 invoked from network); 18 Nov 2015 16:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=p9y/QrlaZcVjsUEInAR0Nt8mn5wcZ008L/dQwGSin3A=;
        b=t70lwgLOMheMjLQqDgz5EiqL4Ar8+i1JrDAn/3jeFcmbTkpwA128vCur6hVhGdF3BA
         zNWQrDg8L2HK6pCC+JsShbH2u3jCOa79zkzvsqF0cgTLWsMBSUXEqtV7rXTG3nxw5jaT
         BiamrgnM+4hG6pWUiJG34o6wuI6oFJ1cuPcTwPAhfuLzQwq4Pgx0Ke3CwRSCzOGxQi8e
         49NvfovgD36XA9MbLiK/Q8eKme4vKEkdxZzwFjlZ0jR6a7TRn2G5jXwEOT5bPGsq7gVa
         GTk4VZlouSAxdoa2Kl03AaASDJSSXOefdI/5nMKGuO/HqYOXKOHAZRz+veuEvIK5wZXA
         xoZw==
MIME-Version: 1.0
X-Received: by 10.107.151.144 with SMTP id z138mr3651785iod.89.1447864417194;
 Wed, 18 Nov 2015 08:33:37 -0800 (PST)
In-Reply-To: <1673938.GaGbo5rB5J@x2>
References: <20151117153951.GA28672@openwall.com>
	<20151118021008.GB31188@openwall.com>
	<564C582B.6080803@redhat.com>
	<1673938.GaGbo5rB5J@x2>
Date: Wed, 18 Nov 2015 17:33:37 +0100
Message-ID: <CAGfLVYzktacNa_ZyenDrybe-37A499rv4LEw6BSp9Jqcj5YaOA@mail.gmail.com>
From: Fabio Pagani <pagabuc@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

Hello everybody,

I'm jumping into this discussion since I've worked the last couple of
months on this topic.

The plan outlined in the previous email seems reasonable but, for a
more complete overview, you should definitely check G-Free:
https://www.iseclab.org/papers/gfree.pdf

> It seems to me that if the stack canary check happened directly before
> the RET instruction, after restoring the registers, it would make it
> more difficult to abuse the RET instruction.  With the code above, you
> can just jump to the address 1c6e7 and have access to quite a few useful
> POP instructions.

You are right. Attackers will have access to POP instruction and
potentially to any instruction found in an unaligned fashion.
Shifting down the check will work but it's very dangerous, because you
are accessing a part of the stack that was deallocated with the add.

Actually I've implemented G-Free for X86-64 (except the "symbolic
addresses" part) in the LLVM backend.
The source will be released max in 2 weeks, but anyway i will be very
happy to discuss and help for a GCC implementation.

// Fab

On Wed, Nov 18, 2015 at 4:49 PM, Steve Grubb <sgrubb@redhat.com> wrote:
> On Wednesday, November 18, 2015 11:51:23 AM Florian Weimer wrote:
>> On 11/18/2015 03:10 AM, Solar Designer wrote:
>> > This approach makes sense to me, but I think we should have a better
>> > idea of whether and how "a point where ROP gadgets are reasonably hard
>> > to find & exploit" is potentially reachable.  If it is not even
>> > potentially reachable, then this undermines the effort, unfortunately.
>>
>> This came up in other discussions as well.  We even got to the point
>> where someone ran a ROP gadget finding tool on a core library, which did
>> not find any gadgets at all, and someone else found a useful one in a
>> few minutes with objdump and no other tool support (and this did not
>> even include jumping into the middle of instructions).
>
> This was something that I was involved in. What I did was get the latest
> source code of ROPgadget. [1]  I have no idea how good it is compared to =
other
> tools. But it does have a command line switch that builds a full ROP chai=
n so
> that you have a working exploit.
>
> Next, I wrote a small script to iterate over the directories on my Fedora=
 22
> system that should hold programs or libraries the attacker might exploit =
and
> check each and every one of them using ROPgadget. I was curious what the =
size
> of the elephant is that we have.
>
> What I found was that the list of libraries or programs that ROPgadget co=
uld
> build a chain for is fairly small. I thought about reasons why that might=
 be
> the case and then considered that maybe if the gadgets from several libra=
ries
> were combined, maybe it would find more. But I think ASLR would make too =
many
> moving parts for that to be practical. If you use a whole library or
> application, then everything moves together up or down as a unit to the n=
ew
> offset.
>
> Another thought in explaining why the list was so small is that the quali=
ty of
> the chaining that ROPgadget has needs a lot of improvement. Could someone=
 more
> clever piece together gadgets that make a chain that ROPgadget didn't see=
? I
> don't have the expertise to do this by hand. So, I'll do what others woul=
d do
> and look for another tool. There is only one other tools that I could fin=
d,
> ropper [2]. It dies due to a programming bug. So, I doubt its being used.
>
> The following files are the ones that ROPgadget was able to build a chain=
 for:
>
> /usr/lib64/ld-2.21.so
> /usr/lib64/libasound.so.2.0.0
> /usr/lib64/libavfilter.so.5.11.102
> /usr/lib64/libc-2.21.so
> /usr/lib64/libcln.so.6.0.4
> /usr/lib64/libdb-5.3.so
> /usr/lib64/libfreetype.so.6.11.4
> /usr/lib64/libgs.so.9.16
> /usr/lib64/libgtk-3.so.0.1600.7
> /usr/lib64/libgtk-x11-2.0.so.0.2400.28
> /usr/lib64/libliveMedia.so.36.0.6
> /usr/lib64/libmozjs-17.0.so
> /usr/lib64/libmozjs185.so.1.0.0
> /usr/lib64/libmozjs-24.so
> /usr/lib64/libpython3.4m.so.1.0
> /usr/lib64/libQtWebKit.so.4.10.4
> /usr/lib64/libruby.so.2.2.0
> /usr/lib64/libsamba-util.so.0.0.1
> /usr/lib64/libsmbconf.so.0
> /usr/lib64/libsqlite3.so.0.8.6
> /usr/lib64/libtcl8.6.so
> /usr/lib64/libwebkit2gtk-4.0.so.37.6.8
> /usr/lib64/libwebkitgtk-1.0.so.0.22.15
> /usr/lib64/libwebkitgtk-3.0.so.0.22.15
> /usr/lib64/libxml2.so.2.9.2
> /usr/libexec/mysqld
> /usr/sbin/ldconfig
> /usr/sbin/sln
> /usr/bin/clang
> /usr/bin/clang-check
> /usr/bin/dvipdfmx
> /usr/bin/gimp-2.8
> /usr/bin/inkscape
> /usr/bin/js
> /usr/bin/shotwell
> /usr/bin/virtuoso-t
>
> This is on a desktop with a lot of server and software development packag=
es
> that total up to approx 3800 rpms. If we are going to try to spoil ROP
> gadgets, I would suggest that we as a community pick one tool and give it=
 some
> love so that it finds all kinds of gadgets. This way we know how effectiv=
e any
> mitigations are.
>
> During this study, Florian had suggested checking -fstack-protector-all. =
This
> defeated ROPgadget. It was not able to find any ROP gadgets in anything
> compiled that way. If it were better at finding gadgets I would like to r=
etry
> the study to see if that still holds true.
>
>
>> In the end, this boils down to lack of concrete goals.  =E2=80=9CBlindin=
g ROP
>> gadget finder X=E2=80=9C is easy (just change the ELF format in such a w=
ay that
>> it's no longer recognized by the tool), but probably not very useful if
>> you want to improve security, for any useful definition of =E2=80=9Csecu=
rity=E2=80=9D.
>>
>> We face the problem that I and my immediate colleagues (on the Red Hat
>> tools team) do not have access to information about successful
>> compromises, and what attackers actually do today, on GNU/Linux systems,
>> both to achieve initial access
>
> There is information about this scattered around. It largely depends on w=
hat
> the role of the system is, what exploit is recently circulating, and exte=
rnal
> vs internal threat actors. Fishing around for the top uses of Linux serve=
rs
> [3] reveals probably what we all knew its used for: virtualization, datab=
ase
> servers, web servers, application servers, etc.
>
> For web servers, there are studies [4] that show what people do. TL;DR: t=
hey
> find a hole in the web software to issue a wget command to pull down soft=
ware,
> this lands in /tmp, they then execute the software downloaded.
>
> There's 3 different points where this could have been defeated. 1) mod_se=
curity
> probably would have blocked whatever weird URL or hole they found. 2) /tmp
> should be mounted noexec. But noexec is easy to defeat by invoking the
> interpreter or ld.so directly. 3) This is the hard one and yet so simple =
to
> fix....make all interpreters check the execute bit before executing. They=
 need
> to be a policy enforcement point for the noexec mount option. Otherwise w=
e may
> as well ask the kernel guys to remove the noexec mount option because its
> useless.
>
> For other servers, its a similar pattern.
>
>> and to maintain a presence afterwards.
>
> This is something I am also interested in. There are groups of people stu=
dying
> this. One such project is ATT&CK [5] run by MITRE. I have been collecting
> information for Linux systems to add to their project. The idea of that
> project is to enumerate the various ways that an attacker can perform act=
ions
> post exploit. With a catalogue, you can then go build tools that check the
> hiding places. If they get a rootkit installed, you might not be able to
> detect it on the host, but rather by its actions on the network.
>
> From this catalogue, you can the create indicators of compromise to look =
for.
> Mandiant has one method [6], but I would rather see something based around
> SCAP tooling so that its standardized.
>
>
>> Under these conditions, anything we implement is, to some degree,
>> arbitrary and a shot in the dark.  We can still use our best judgment to
>> set priorities, but we are very far from being guided by empirical evide=
nce.
>
> I hope I filled in some of the blanks. I am sure that others can point to=
 more
> information to help fill in more gaps.
>
> -Steve
>
>
> 1 - http://shell-storm.org/project/ROPgadget/
> 2 - https://github.com/sashs/Ropper
> 3 - https://www.daniweb.com/hardware-and-software/linux-and-unix/news/258=
647/10-ways-that-enterprises-use-linux
> 4 - https://www.sans.org/reading-room/whitepapers/malicious/introduction-=
linux-based-malware-36097
> 5 - https://attack.mitre.org/wiki/Main_Page
> 6 - http://www.openioc.org/
>
>
