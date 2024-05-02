Received: (qmail 5583 invoked by uid 550); 2 May 2024 19:38:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31925 invoked from network); 2 May 2024 18:21:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1714674108; x=1715340774; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=gLqGBMUHp+s6z9fIbumakU+gPtYtWKufkoxhnbXecUI=;
 b=eohKQT3jqQ4tA1oFFheZLml2I2jRSPBe3uhKDS3HiNMSMjoCOIDB8Eiy2o414L/T4+6R1S1N
  NdqcFrypNaR3/kkRPpEKrH1J3jJjnOhklW9wCfsCHaCR8IgVMhGsNqV1b15dEBw//6cqoFRyTb
  vJQws+1+ObH+WudwVbC8SaKg08HeSIbtZmdecOPRWyhyqcx98CgXZY3CL5yKLDO2tn0Dx7jPzy
  CZ71lw9bMjjOPl2vVtefGFNNAu2u0nDxjNdkwdrwB21CGJ4aKZNI8UKhd5CmvuHhfptvjGGvph
  UiMQfrJumAxb2XVEkjp9KOcFVS+3g0yLmRR8vkuhnhRFnbUA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1714674108; x=1715340774; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=gLqGBMUHp+s6z9fIbumakU+gPtYtWKufkoxhnbXecUI=;
 b=72jfL/E6grM5HLzSKuc4wQhxZJn9t+uz0rgsm4JyIWvIBQcoDCttGqyWKX1YyvTByet7ODjL
  50FHxsIfcjVrBQ==
Date: Thu, 02 May 2024 20:21:46 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240502182146.ygWZjB-Z@steffen%sdaoden.eu>
In-Reply-To: <20240430224823.uA8Nr1Cp@steffen%sdaoden.eu>
References: <20231221143630.GD14101@suse.de> <ZjBHOEHylGAaIo57@moon>
 <20240430224823.uA8Nr1Cp@steffen%sdaoden.eu>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] New SMTP smuggling attack

Please let me elaborate a little more on this, not to be
misunderstood and also..

Steffen Nurpmeso wrote in
 <20240430224823.uA8Nr1Cp@steffen%sdaoden.eu>:
 |Mark Esler wrote in
 | <ZjBHOEHylGAaIo57@moon>:
 ||To mitigate future end-of-data sequence attacks, like SMTP Smuggling, MTAs
 ||should comply with RFC 5321 section 4.1.1.4 [0] to strip control
 ||characters other than <SP>, <HT>, <CR>, and <LF> in the DATA section of
 ||SMTP messages.
 |
 |Given that RFC 733 is from 1977 and RFC 822 is from 1982 i feel
 |this entire thread is exaggerating.
 |
 |The smuggling problem solely was rooted in the LF / CRLF "wars"
 |from at minimum the early 70s (Unix and more), with terminal
 |drivers doing auto-translation on-the-fly etc etc etc.
 ..
 |[.]Ie, in January i also (funny)
 |talked to John Klensin on an IETF list saying
 |
 |  [.]The CR/LF "problem" seems to have been "addressed" in
 |  UNIX as early as 1972, ie "6/12/72 STTY (II)" gives
 ...
 |  In 1974 it became
 ...
 |    -nl allow carriage return for new-line,
 |        and output CR-LF for carriage return or new-line
 |    nl  accept only new-line to end lines
 ...

..because two drafts on character set cramping circulate in the
IETF (of which i am not a representative (member), just like i do
not use airplanes in my adult life, eat meat etcetc).  For one
there is draft-bormann-dispatch-modern-network-unicode, and there
is another one by the writer of the (uh! horror!) JSON RFC 8259.

I myself oppose any such cramping in general, and do not
understand their usefulness.  I said, yes, if you cat(1) such
a file to a UNIX terminal [..you can think the rest..].  (There is
btw "cat -vet", which i do not deem harmful in that sense.)  In
general Unicode also has the "SYMBOL FOR [ascii-control]" range to
visualize controls, at U+2400 ff., it seems is not widely known.

To make it short, if you have some protocol or media type
somewhere, you define its semantics, and those can be whatever is
needed or desired.  For example if you mutilate somewhat user
friendly SGML to XML, you can restrict the available code points:
they did, and so you cannot represent the entire possible range of
filenames of neither POSIX nor Windows with XML.

But, i said, a *general* restriction of the range of code points,
what should this be good for.  For example SMTP can transport all
these for many decades, and it works a billion times each day;
today mostly MIME content-transfer-encoding is applied though, and
Unicode aware applications either show those "this-font-has-that-
codepoint-NOT" boxes (no normal user gets that btw), or the symbol
as such, *even for control codes*, as above, for example U+2400
for NUL (Unicode NULL).
Yes, i mean, a program must deal with it, the one way or the
other.  Has someone tested how many XML programs for example
adhere to the standardized range of allowed code points.
Bugs and logical errors also exist everywhere, the rust of it.
Etc etc.  A control character is nothing special.
See, with JSON, for example, you get surrogates encoded as UTF-8
which is a totally forbidden thing according to Unicode, and any
poor conforming UTF-8 decoder has to deal with that mess if really
JSON has to be used for K=V\0K=V\0\0 value lists.

Anyway, there was a pretty good discussion in October last year
(on art AT IETF), and to my suprise again in March, somehow not
taking into account many items raised in last October.
Any i very much liked the actual IETF session for which dozens of
people flew hundreds of thousands of kilometres to Brisbane in
Australia, and Rob Sayre of i think Mozilla thankfully posted an
URL to the correct timeline position

  https://youtu.be/bPNRO2HYITg?si=zyWwK26TqYel7mRT&t=6684

I very much agree with all the people in the crowd ("define
a profile!"), and i loved the one who said something like
"presentation is fantastic, conclusions are not".
No people, that not.


While (presumably) here, i also dislike that demonization of SUID
programs currently on the table again.  Is it really so much safer
and better to have some program talk to an all-capable
super-daemon via IPC, which then starts another program with the
desired "environment", instead of having a program like "super"
(which somehow disappeared somewhen after Y2K?), "sudo" or "doas"
(what i now use because my needs are very small minded, and i use
scripts which do the real work, for example

  $ sed '/^$/d;/^#/d' < /etc/doas.conf | wc -l
  14
..
  permit nopass nolog keepenv setenv { -SSH_AGENT_PID -SSH_AUTH_SOCK } :shared as root cmd /x/pub/box-web.sh
->
  [ $(id -u) -ne 0 ] && exec ${SUPER} /x/pub/box-web.sh "${@}"
  runit "${@}"
->
                boxit ${action} </dev/null >/dev/null 2>&1 &
->
        cd /
        ip netns exec ${netns} \
                /usr/bin/env -i AUTHDISPLAY=${AUTHDISPLAY} DISPLAY=${DISPLAY} TERM=${TERM} XAUTHORITY=${XAUTHORITY} \
                        /usr/bin/unshare --ipc --uts --pid --fork --mount --mount-proc ${kill_child} ${rooter} ${prog} &
        pid=${!}
        [ -d /sys/fs/cgroup/_box_web ] && printf '%s\n' ${pid} > /sys/fs/cgroup/_box_web/cgroup.procs

A bit racy, unfortunately.  I mean, if you *design* a SUID
program, and it sets up things (clearing environment, closing
FDs..), and then looses privileges, how is that worse?  Where is
the attack surface?  Parsing the configuration file maybe, and you
*could* outsource that into a dedicated subprocess and talk with
that via IPC.

I need ping sometimes, i need video and audio access, and "my"
user is in the necessary groups; whether some super-server allows
some other non-SUID program to access those via some configuration
file somewhere, or whether normal (searchable) UNIX
user/group[/capability] credentials are used to control access to
a carefully designed and audited SET[GU]ID binary that creates
a ping socket / opens an audio device and ioctl-inits it etc etc,
before it once and for all drops those privileges.

I think it is unfair to compare programs which have decades of
history, which where developed in a software world where maybe
OpenSSL already existed, like surely malicious actors, too, but in
a completely different mental set without the experience of mass
surveillance and mass exploits etc etc.  If you want to demonize,
demonize that, not programs like sudo; not to mention that in
order to support the configurability friendliness of sudo, any
other implementation had to go a long road.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
