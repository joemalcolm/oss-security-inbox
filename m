X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18723" "Monday" "4" "July" "2016" "10:12:06" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<D277D08F-29E7-4DA7-9FF3-F9939B3FA314@gmail.com>" "307" "[oss-security] Re: [FD] [oss-security] libical 0.47 SEGV on unknown address" nil nil nil "7" "2016070415:12:06" "[oss-security] Re: [FD] [oss-security] libical 0.47 SEGV on unknown address" (number mark "U       bperry.volat Jul  4  307/18723 " thread-indent "\"[oss-security] Re: [FD] [oss-security] libical 0.47 SEGV on unknown address\"\n") "<C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>" ("<6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com>" "<576EA48D.1070502@oracle.com>" "<C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5748 invoked by uid 550); 4 Jul 2016 15:12:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5723 invoked from network); 4 Jul 2016 15:12:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=2s0XA2wEb9jqzE8wehmIfCKirkzNgy40gdOaAyde0Ic=;
        b=SPIA+Hn+Rtkdke6uQUMYr3IvV3gpTO71kveaH22piGmO5OjrM/zIUkJ5VDO8SSVw9m
         /QgqUWT3Kn9rLKvjrvo5FHAfrtKc84mCy7E4QBEWdjSowutMR5EbqU7iCTASPQEWZ1Zx
         scEt53tyviYNuoYxu+SuhICOWSwZqsuagNVRWE79w7e8xRIterTLuSeGEEeIbPIjZ7kB
         ShBjljvNVgnXs33VFlxzlIwzx3t6D8+MGsz+wIopfH6bG94R7L0QRtD10RtmTWxmtrq8
         WQeR75d+KoWstpWYLcdBY/nCKnnqNZ+H6UAlRDd+MWWVUkwOxTI0WpiSEvMFI56p3Ifj
         5Mkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=2s0XA2wEb9jqzE8wehmIfCKirkzNgy40gdOaAyde0Ic=;
        b=dAwcHJE9SIbE0FMChzoGweE+ASIWLAw6Z2NoMVKqlofHjBoiQVBXurGMVm+c4V6vul
         ttadlz/anPrU0W56cQfofV7wbXka1AEzD7GbPLSS6xAGk+2clwGgaDecEjleb5mW5qyO
         AVg7rGGkrgzJvQxiTOsWNf8HKrsQm4RxN8NMtalUIYtpXroBjq4BoBsf2ArIcLhfp596
         LOdWDZdHcGC3U8QLYuu3/wgUfDRKm207U14Q8uXBgBgeJY/c6hc7dVWM2fNWasaOuLtF
         qhL1fzsjvD2Ycd8tg3B85nOQbgCQPo1w2BPtx5q/xkIJWmTDKqhtA9opFQTMfDSh2QFw
         WPbg==
X-Gm-Message-State: ALyK8tKlmOEaQa3TkFbwvKH6Q9kdmM21Ag4oNPbL92tfikSsPHDHdWIP4Z8l3eIJRohwVw==
X-Received: by 10.202.182.66 with SMTP id g63mr7654038oif.69.1467645133078;
        Mon, 04 Jul 2016 08:12:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_453C1A57-317C-4078-917E-FCD5C08895D8"; protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail 2.6b2
From: Brandon Perry <bperry.volatile@gmail.com>
In-Reply-To: <C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>
Date: Mon, 4 Jul 2016 10:12:06 -0500
Cc: fulldisclosure@seclists.org
Message-Id: <D277D08F-29E7-4DA7-9FF3-F9939B3FA314@gmail.com>
References: <6565BB80-B75B-4CE3-819D-84CCE79F0CA3@gmail.com> <576EA48D.1070502@oracle.com> <C5D9B35B-045D-41DD-9419-14D50BE494BA@gmail.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Re: [FD] [oss-security] libical 0.47 SEGV on unknown address

--Apple-Mail=_453C1A57-317C-4078-917E-FCD5C08895D8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_14059D19-3F4F-49C3-A80C-55F9720189B0"


--Apple-Mail=_14059D19-3F4F-49C3-A80C-55F9720189B0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I have gone ahead and just pushed my fuzzing results to Github. These were =
found with American Fuzzy Lop.

https://github.com/brandonprry/ical-fuzz <https://github.com/brandonprry/ic=
al-fuzz>

While Mozilla lists information leaks as viable for a bug bounty [1], unles=
s it straight up crashes Thunderbird (which heap over reads may or may not =
do depending on the surrounding memory), it doesn=E2=80=99t seem they will =
care much and will mark your bugs as sec-low which is not valid for the bug=
 bounty.

ASan reports are in the min_crashes folder with .asan extension. Some of th=
e ical files in the raw_queue and raw_crashes were generated using the comm=
ented out code in the icaltestparser.c file, which will result in some use-=
after-frees as well (some of it in the icaltestparser code actually, but no=
t all).

You actually can=E2=80=99t compile Thunderbird with ASan at the moment, and=
 haven=E2=80=99t been able to for some time as far as I can tell. I have sp=
ent days trying to make this work to no avail. Without this, there won=E2=
=80=99t be a clean reproduction to crash Thunderbird most likely.

[1] https://www.mozilla.org/en-US/security/client-bug-bounty/ <https://www.=
mozilla.org/en-US/security/client-bug-bounty/> (Security bug must be a remo=
te exploit, the cause of a privilege escalation, or an information leak)


> On Jun 25, 2016, at 10:41 AM, Brandon Perry <bperry.volatile@gmail.com> w=
rote:
>=20
>>=20
>> On Jun 25, 2016, at 10:34 AM, Alan Coopersmith <alan.coopersmith@oracle.=
com <mailto:alan.coopersmith@oracle.com>> wrote:
>>=20
>> On 06/24/16 06:54 AM, Brandon Perry wrote:
>>> I am posting this to Full Disclosure/OSS instead of reporting it becaus=
e I have
>>> opened a handful of libical bugs in the Mozilla bug tracker, alerted
>>> security@mozilla.org <mailto:security@mozilla.org> <mailto:security@moz=
illa.org <mailto:security@mozilla.org>>, and worked to show how and
>>> where to reproduce the bugs in Thunderbird, but Mozilla hasn=E2=80=99t =
shown any care at
>>> all about the bugs. Perhaps if I give a sample to the community of the =
bugs in
>>> the bug reports, Mozilla will take the bug reports more seriously. This=
 bug
>>> attached had not been reported yet.
>>=20
>> Did you report them to libcial upstream?  http://libical.github.io/libic=
al/ <http://libical.github.io/libical/><http://libical.github.io/libical/ <=
http://libical.github.io/libical/>>
>=20
> I had initially asked for contact information regarding reporting potenti=
ally sensitive security test cases, but after a couple of days, I decided t=
o look into another product that I figured would have more visibility and m=
ore power to get things fixed.
>=20
> https://github.com/libical/libical/issues/235 <https://github.com/libical=
/libical/issues/235> <https://github.com/libical/libical/issues/235 <https:=
//github.com/libical/libical/issues/235>>
>>=20
>>> My roommate mentioned Thunderbird being a second-class citizen in the M=
ozilla
>>> world, so if this is the case, this should be made explicit in regards =
to bug
>>> bounty expectations.
>>=20
>> While Thunderbird is still a beloved child of Mozilla, it's been told it=
's time
>> to move out of its parents house and find its own sources of income/supp=
ort:
>>=20
>> https://groups.google.com/d/msg/mozilla.governance/kAyVlhfEcXg/Eqyx1X62B=
QAJ
>> https://blog.mozilla.org/thunderbird/2015/12/thunderbird-active-daily-in=
quiries-surpass-10-million/
>>=20
>> --
>> 	-Alan Coopersmith-              alan.coopersmith@oracle.com
>> 	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
>=20
>=20
> _______________________________________________
> Sent through the Full Disclosure mailing list
> https://nmap.org/mailman/listinfo/fulldisclosure <https://nmap.org/mailma=
n/listinfo/fulldisclosure>
> Web Archives & RSS: http://seclists.org/fulldisclosure/ <http://seclists.=
org/fulldisclosure/>

--Apple-Mail=_14059D19-3F4F-49C3-A80C-55F9720189B0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><div class=3D"">I =
have gone ahead and just pushed my fuzzing results to Github. These were fo=
und with American Fuzzy Lop.&nbsp;</div><div class=3D""><br class=3D""></di=
v><div class=3D""><a href=3D"https://github.com/brandonprry/ical-fuzz" clas=
s=3D"">https://github.com/brandonprry/ical-fuzz</a></div><div class=3D""><b=
r class=3D""></div><div class=3D"">While Mozilla lists information leaks as=
 viable for a bug bounty [1], unless it straight up crashes Thunderbird (wh=
ich heap over reads may or may not do depending on the surrounding memory),=
 it doesn=E2=80=99t seem they will care much and will mark your bugs as sec=
-low which is not valid for the bug bounty.</div><div class=3D""><br class=
=3D""></div><div class=3D"">ASan reports are in the min_crashes folder with=
 .asan extension. Some of the ical files in the raw_queue and raw_crashes w=
ere generated using the commented out code in the icaltestparser.c file, wh=
ich will result in some use-after-frees as well (some of it in the icaltest=
parser code actually, but not all).</div><div class=3D""><br class=3D""></d=
iv><div class=3D"">You actually can=E2=80=99t compile Thunderbird with ASan=
 at the moment, and haven=E2=80=99t been able to for some time as far as I =
can tell. I have spent days trying to make this work to no avail. Without t=
his, there won=E2=80=99t be a clean reproduction to crash Thunderbird most =
likely.</div><div class=3D""><div class=3D""><br class=3D""></div><div clas=
s=3D"">[1]&nbsp;<a href=3D"https://www.mozilla.org/en-US/security/client-bu=
g-bounty/" class=3D"">https://www.mozilla.org/en-US/security/client-bug-bou=
nty/</a>&nbsp;(Security bug must be a remote exploit, the cause of a privil=
ege escalation, or an information leak)</div></div><div class=3D""><br clas=
s=3D""></div><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 25, 2016, at 10:41 AM, Brandon Perry &lt;<a href=3D"mailt=
o:bperry.volatile@gmail.com" class=3D"">bperry.volatile@gmail.com</a>&gt; w=
rote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><blockqu=
ote type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; font-st=
yle: normal; font-variant-caps: normal; font-weight: normal; letter-spacing=
: normal; orphans: auto; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text=
-stroke-width: 0px;" class=3D""><br class=3D"Apple-interchange-newline">On =
Jun 25, 2016, at 10:34 AM, Alan Coopersmith &lt;<a href=3D"mailto:alan.coop=
ersmith@oracle.com" class=3D"">alan.coopersmith@oracle.com</a>&gt; wrote:<b=
r class=3D""><br class=3D"">On 06/24/16 06:54 AM, Brandon Perry wrote:<br c=
lass=3D""><blockquote type=3D"cite" class=3D"">I am posting this to Full Di=
sclosure/OSS instead of reporting it because I have<br class=3D"">opened a =
handful of libical bugs in the Mozilla bug tracker, alerted<br class=3D""><=
a href=3D"mailto:security@mozilla.org" class=3D"">security@mozilla.org</a><=
span class=3D"Apple-converted-space">&nbsp;</span>&lt;<a href=3D"mailto:sec=
urity@mozilla.org" class=3D"">mailto:security@mozilla.org</a>&gt;, and work=
ed to show how and<br class=3D"">where to reproduce the bugs in Thunderbird=
, but Mozilla hasn=E2=80=99t shown any care at<br class=3D"">all about the =
bugs. Perhaps if I give a sample to the community of the bugs in<br class=
=3D"">the bug reports, Mozilla will take the bug reports more seriously. Th=
is bug<br class=3D"">attached had not been reported yet.<br class=3D""></bl=
ockquote><br class=3D"">Did you report them to libcial upstream? &nbsp;<a h=
ref=3D"http://libical.github.io/libical/" class=3D"">http://libical.github.=
io/libical/</a>&lt;<a href=3D"http://libical.github.io/libical/" class=3D""=
>http://libical.github.io/libical/</a>&gt;<br class=3D""></blockquote><br s=
tyle=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-v=
ariant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; font-s=
tyle: normal; font-variant-caps: normal; font-weight: normal; letter-spacin=
g: normal; orphans: auto; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; float: none; display: inline !important;" class=3D"">I=
 had initially asked for contact information regarding reporting potentiall=
y sensitive security test cases, but after a couple of days, I decided to l=
ook into another product that I figured would have more visibility and more=
 power to get things fixed.</span><br style=3D"font-family: Helvetica; font=
-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: no=
rmal; letter-spacing: normal; orphans: auto; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: auto; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-famil=
y: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a hr=
ef=3D"https://github.com/libical/libical/issues/235" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: sta=
rt; text-indent: 0px; text-transform: none; white-space: normal; widows: au=
to; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">https://=
github.com/libical/libical/issues/235</a><span style=3D"font-family: Helvet=
ica; font-size: 12px; font-style: normal; font-variant-caps: normal; font-w=
eight: normal; letter-spacing: normal; orphans: auto; text-align: start; te=
xt-indent: 0px; text-transform: none; white-space: normal; widows: auto; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inli=
ne !important;" class=3D""><span class=3D"Apple-converted-space">&nbsp;</sp=
an>&lt;</span><a href=3D"https://github.com/libical/libical/issues/235" sty=
le=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-var=
iant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: au=
to; text-align: start; text-indent: 0px; text-transform: none; white-space:=
 normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://github.com/libical/libical/issues/235</a><span style=3D"=
font-family: Helvetica; font-size: 12px; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">&gt;</span><br style=3D"font-=
family: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-al=
ign: start; text-indent: 0px; text-transform: none; white-space: normal; wi=
dows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">=
<blockquote type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant-caps: normal; font-weight: normal; letter=
-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-=
transform: none; white-space: normal; widows: auto; word-spacing: 0px; -web=
kit-text-stroke-width: 0px;" class=3D""><br class=3D""><blockquote type=3D"=
cite" class=3D"">My roommate mentioned Thunderbird being a second-class cit=
izen in the Mozilla<br class=3D"">world, so if this is the case, this shoul=
d be made explicit in regards to bug<br class=3D"">bounty expectations.<br =
class=3D""></blockquote><br class=3D"">While Thunderbird is still a beloved=
 child of Mozilla, it's been told it's time<br class=3D"">to move out of it=
s parents house and find its own sources of income/support:<br class=3D""><=
br class=3D""><a href=3D"https://groups.google.com/d/msg/mozilla.governance=
/kAyVlhfEcXg/Eqyx1X62BQAJ" class=3D"">https://groups.google.com/d/msg/mozil=
la.governance/kAyVlhfEcXg/Eqyx1X62BQAJ</a><br class=3D"">https://blog.mozil=
la.org/thunderbird/2015/12/thunderbird-active-daily-inquiries-surpass-10-mi=
llion/<br class=3D""><br class=3D"">--<br class=3D""><span class=3D"Apple-t=
ab-span" style=3D"white-space: pre;">	</span>-Alan Coopersmith- &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alan.coo=
persmith@oracle.com<br class=3D""><span class=3D"Apple-tab-span" style=3D"w=
hite-space: pre;">	</span><span class=3D"Apple-converted-space">&nbsp;</spa=
n>Oracle Solaris Engineering - http://blogs.oracle.com/alanc<br class=3D"">=
</blockquote><br style=3D"font-family: Helvetica; font-size: 12px; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; orphans: auto; text-align: start; text-indent: 0px; text-transform=
: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-=
stroke-width: 0px;" class=3D""><br style=3D"font-family: Helvetica; font-si=
ze: 12px; font-style: normal; font-variant-caps: normal; font-weight: norma=
l; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family=
: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: normal=
; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; displ=
ay: inline !important;" class=3D"">________________________________________=
_______</span><br style=3D"font-family: Helvetica; font-size: 12px; font-st=
yle: normal; font-variant-caps: normal; font-weight: normal; letter-spacing=
: normal; orphans: auto; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text=
-stroke-width: 0px;" class=3D""><span style=3D"font-family: Helvetica; font=
-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: no=
rmal; letter-spacing: normal; orphans: auto; text-align: start; text-indent=
: 0px; text-transform: none; white-space: normal; widows: auto; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !impor=
tant;" class=3D"">Sent through the Full Disclosure mailing list</span><br s=
tyle=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-v=
ariant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
" class=3D""><a href=3D"https://nmap.org/mailman/listinfo/fulldisclosure" s=
tyle=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-v=
ariant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
" class=3D"">https://nmap.org/mailman/listinfo/fulldisclosure</a><br style=
=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-varia=
nt-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" cl=
ass=3D""><span style=3D"font-family: Helvetica; font-size: 12px; font-style=
: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: n=
ormal; orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; float: none; display: inline !important;" class=3D"">Web A=
rchives &amp; RSS:<span class=3D"Apple-converted-space">&nbsp;</span></span=
><a href=3D"http://seclists.org/fulldisclosure/" style=3D"font-family: Helv=
etica; font-size: 12px; font-style: normal; font-variant-caps: normal; font=
-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">http://secli=
sts.org/fulldisclosure/</a></div></blockquote></div><br class=3D""></body><=
/html>=

--Apple-Mail=_14059D19-3F4F-49C3-A80C-55F9720189B0--

--Apple-Mail=_453C1A57-317C-4078-917E-FCD5C08895D8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXenzLAAoJEKJq8VjVbt2ppGEP/RtStqp+vngs0mkwc5M5E9bK
cJEwNBykqsQ4xYdd/7v/jYkl9ZrTCmM3f+ALIgxWLByA5ysYEU49lE9nXLfDJ3nY
KCq7qIFSQ1gfauOcrMuVUIZi3aps0bu/fG82agVIwbvCvaUH9Kj8VYV/ZlJBde5K
3lG+l1HmGKl7sea9uGBMM7e277Gxv+bQ9LkUSrhuzilkH/az6d71htofHZhST4d9
4rXw5JJodl9/xZiet/Z27qw8319cfTZZUgpLk2FXy9A4d16IIJDg18MRoFBZPAYb
LC4r2ro0T0+dA/fGy0L0e913n3GOPHSIe1vrEgG1l8k8j5xMupgMkiIRTC78UZZk
9CM5BofaN8aI3bqw/9sApXNaPpUaopMgt1uOI9rXP6xYohCF+1x8l/w62clazkHf
dTIDUfwfacgwsiagn7D5tTc9LJ8Atw0y3JSosNJfoAJPTA9/IvnSytSD/cpcH9ww
4z3IwGfsqvKJUsaYRNXCrgsz3+dbYnFt5V5QXoY/MALy07faJLggUnha7RI5O8P+
hPwsccXfq2EXOlj0yFxVE5CFoevVxS9/1aBj15EBPZNirvUsMY4Lav29UJT0vKBk
PV90bJ3e3NmorOJqNkfQXIbpQ7fow8fCnPJ4Vkw1Bx42sjw5NgOoRUoCAp0Xt4Ma
IDLKSvB+cjOYkWpE6Non
=VzUr
-----END PGP SIGNATURE-----

--Apple-Mail=_453C1A57-317C-4078-917E-FCD5C08895D8--
