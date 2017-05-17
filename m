X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["20394" "Wednesday" "17" "May" "2017" "16:21:42" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<A312BA48-B89C-422A-A75C-0C0C2502A9CF@gmail.com>" "325" "Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues" nil nil nil "5" "2017051721:21:42" "[oss-security] Dolibarr ERP & CRM - Multiple Issues" (number mark "U       bperry.volat May 17  325/20394 " thread-indent "\"Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues\"\n") "<fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>" ("<24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>" "<fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3588 invoked by uid 550); 17 May 2017 21:22:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3555 invoked from network); 17 May 2017 21:22:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=aP8LCP4Fb4UOiNEe6UPyqN9dhe24lC2iBZZsKiR+pTU=;
        b=b0BBFsSXm8V3QeoWQ6swKIJ/YDWL5ZdRolBJDAxTbhCbYhnklP8dL1Gs4ne44JKpzX
         83wBCdh4e6gA1WTPQjjgDJCoNRbrHJ9uYriAX9iJWDvWH6YIHDyltNWkJp5mi/lv9IQZ
         UK3VKQUuNcZIE1R0gNIKfKaT+Gx+1ET2OUrESLoiGKvlylJhTI3vZ+6a2gMC1sXlIkJy
         LP+AVCoKgZhzq4EBlMjK4z1Y6MgoEdrXTe6PlcPB931NrMek6YKOVqLcwPzPZqGUs9cP
         BPUGQdFEUdxP7EaWoTUhZoYJSXDP6d8EvkFIQgi6KsqyI1v7DSzLXsSZkVk2xRy6Dnw7
         0/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=aP8LCP4Fb4UOiNEe6UPyqN9dhe24lC2iBZZsKiR+pTU=;
        b=PY1BDcH5I/2tIyZIG/cKQNn2zBxoN82NlyXoaIjrGv5KP3pToqcsZBzp1J5JsrA6go
         91PidPeNOPLsgE8DKdI7QCTFxAH+4z+1eLWa7L/Mh21JjFSOTC3TF+gLUK7XFUXFKfBI
         zbd2Ru37UDPyY/Ch80fYdMYUQktSRV6Gt37+aew5CMPOZWIwTXXmr+Y1ahcWNaMirjgs
         uNvvord9CAAIBOqKsdkPCg1E3d990GkJQEnh2REYbwKcNeJoF9pUZ6/1nALkjFBYhLRY
         QP1BlmsaRjW1zruzBlhU1WynZbuOFbgxOSa9V/hj72S5QLtuA7fYpzl7D/uwS16wDpp3
         w13A==
X-Gm-Message-State: AODbwcBlQlQeNiddTmJMxMUBCxQw3gGqLS+BKw4jhowabuMuBPg5jbhg
	veeTwK6LBfU3T8f7VmM=
X-Received: by 10.157.53.54 with SMTP id o51mr578870otc.41.1495056108900;
        Wed, 17 May 2017 14:21:48 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Message-Id: <A312BA48-B89C-422A-A75C-0C0C2502A9CF@gmail.com>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_EDCE0B87-624B-4C27-9B7C-9E6609DF94BA";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 17 May 2017 16:21:42 -0500
In-Reply-To: <fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>
Cc: fulldisclosure@seclists.org
To: oss-security@lists.openwall.com
References: <24585059-6758-7cd1-f142-8c56a1a9ffb8@foxmole.com>
 <fd8ae002-bf60-d687-8d52-2a00378b1713@foxmole.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [oss-security] Dolibarr ERP & CRM - Multiple Issues

--Apple-Mail=_EDCE0B87-624B-4C27-9B7C-9E6609DF94BA
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_487FAAA0-8D7A-4473-A3CC-1C9D15C644FA"


--Apple-Mail=_487FAAA0-8D7A-4473-A3CC-1C9D15C644FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 17, 2017, at 3:08 PM, Stefan Pietsch <stefan.pietsch@foxmole.com> =
wrote:
>=20
> On 10.05.2017 10:28, FOXMOLE Advisories wrote:
>> =3D=3D=3D FOXMOLE - Security Advisory 2017-02-23 =3D=3D=3D
>>=20
>> Dolibarr ERP & CRM  - Multiple Issues
>> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>=20
>> Affected Versions
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> Dolibarr 4.0.4
>>=20
>> Issue Overview
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> Vulnerability Type: SQL Injection, Cross Site Scripting,
>>                    Weak Hash Algorithm without Salt, Weak Password Chang=
e Method
>> Technical Risk: critical
>> Likelihood of Exploitation: medium
>> Vendor: Dolibarr
>> Vendor URL: https://www.dolibarr.org/
>> Credits: FOXMOLE employees Tim Herres and Stefan Pietsch
>> Advisory URL: https://www.foxmole.com/advisories/foxmole-2017-02-23.txt
>> Advisory Status: Public
>> OVE-ID: OVE-20170223-0001
>> CVE Number: CVE-2017-7886, CVE-2017-7887, CVE-2017-7888
>> CVE URL: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7886
>>         https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7887
>>         https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7888
>> CWE-ID: CWE-79, CWE-89, CWE-327, CWE-620, CWE-759
>> CVSS 2.0: 10.0 (AV:N/AC:L/Au:N/C:C/I:C/A:C)
>=20
> --- snip ---
>=20
> Here is a small update to our security advisory.
>=20
> An additional CVE ID got assigned for the password change finding:
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-8879 <https://c=
ve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-8879>
>=20
>=20
> Meanwhile the Dolibarr developers fixed more possible SQL injection bugs
> in this git commit:
> https://github.com/Dolibarr/dolibarr/commit/fa290c34fad108ec7c0751c0372ae=
9c4b4f63b06 <https://github.com/Dolibarr/dolibarr/commit/fa290c34fad108ec7c=
0751c0372ae9c4b4f63b06>
>=20
> They still didn't release a fixed version of the Dolibarr software.
>=20
>=20
>=20
> For CVE-2017-7886 I don't agree with the CVSS v2 scoring from the NIST.
> They rated "Confidentiality Impact" as partial while I think it is
> complete as we have full access to all tables.
>=20

But you don=E2=80=99t have access to the underlying system, such as configu=
ration files with plaintext passwords or similar. Only in a poorly configur=
ed MySQL instance would you be able to read files in the first place. I agr=
ee that the Confidentiality Impact is partial.

>=20
> Regards,
> Stefan


--Apple-Mail=_487FAAA0-8D7A-4473-A3CC-1C9D15C644FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><br class=3D""><di=
v><blockquote type=3D"cite" class=3D""><div class=3D"">On May 17, 2017, at =
3:08 PM, Stefan Pietsch &lt;<a href=3D"mailto:stefan.pietsch@foxmole.com" c=
lass=3D"">stefan.pietsch@foxmole.com</a>&gt; wrote:</div><br class=3D"Apple=
-interchange-newline"><div class=3D""><span style=3D"font-family: Helvetica=
; font-size: 12px; font-style: normal; font-variant-caps: normal; font-weig=
ht: normal; letter-spacing: normal; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; float: none; display: inline !important;" class=3D"">On 10=
.05.2017 10:28, FOXMOLE Advisories wrote:</span><br style=3D"font-family: H=
elvetica; font-size: 12px; font-style: normal; font-variant-caps: normal; f=
ont-weight: normal; letter-spacing: normal; text-align: start; text-indent:=
 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit=
-text-stroke-width: 0px;" class=3D""><blockquote type=3D"cite" style=3D"fon=
t-family: Helvetica; font-size: 12px; font-style: normal; font-variant-caps=
: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-=
align: start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-te=
xt-stroke-width: 0px;" class=3D"">=3D=3D=3D FOXMOLE - Security Advisory 201=
7-02-23 =3D=3D=3D<br class=3D""><br class=3D"">Dolibarr ERP &amp; CRM &nbsp=
;- Multiple Issues<br class=3D"">~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br c=
lass=3D""><br class=3D"">Affected Versions<br class=3D"">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br class=3D"">Dolibarr 4.0.4<br class=3D"=
"><br class=3D"">Issue Overview<br class=3D"">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br class=3D"">Vulnerability Type: SQL Injection, Cross Site=
 Scripting,<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Weak Hash =
Algorithm without Salt, Weak Password Change Method<br class=3D"">Technical=
 Risk: critical<br class=3D"">Likelihood of Exploitation: medium<br class=
=3D"">Vendor: Dolibarr<br class=3D"">Vendor URL: <a href=3D"https://www.dol=
ibarr.org/" class=3D"">https://www.dolibarr.org/</a><br class=3D"">Credits:=
 FOXMOLE employees Tim Herres and Stefan Pietsch<br class=3D"">Advisory URL=
: <a href=3D"https://www.foxmole.com/advisories/foxmole-2017-02-23.txt" cla=
ss=3D"">https://www.foxmole.com/advisories/foxmole-2017-02-23.txt</a><br cl=
ass=3D"">Advisory Status: Public<br class=3D"">OVE-ID: OVE-20170223-0001<br=
 class=3D"">CVE Number: CVE-2017-7886, CVE-2017-7887, CVE-2017-7888<br clas=
s=3D"">CVE URL: <a href=3D"https://www.cve.mitre.org/cgi-bin/cvename.cgi?na=
me=3D2017-7886" class=3D"">https://www.cve.mitre.org/cgi-bin/cvename.cgi?na=
me=3D2017-7886</a><br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;<a href=3D"https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-=
7887" class=3D"">https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-=
7887</a><br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a h=
ref=3D"https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7888" clas=
s=3D"">https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7888</a><b=
r class=3D"">CWE-ID: CWE-79, CWE-89, CWE-327, CWE-620, CWE-759<br class=3D"=
">CVSS 2.0: 10.0 (AV:N/AC:L/Au:N/C:C/I:C/A:C)<br class=3D""></blockquote><b=
r style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; fon=
t-variant-caps: normal; font-weight: normal; letter-spacing: normal; text-a=
lign: start; text-indent: 0px; text-transform: none; white-space: normal; w=
ord-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span style=
=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-varia=
nt-caps: normal; font-weight: normal; letter-spacing: normal; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; float: none; display: inline !im=
portant;" class=3D"">--- snip ---</span><br style=3D"font-family: Helvetica=
; font-size: 12px; font-style: normal; font-variant-caps: normal; font-weig=
ht: normal; letter-spacing: normal; text-align: start; text-indent: 0px; te=
xt-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-st=
roke-width: 0px;" class=3D""><br style=3D"font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; f=
ont-style: normal; font-variant-caps: normal; font-weight: normal; letter-s=
pacing: normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; flo=
at: none; display: inline !important;" class=3D"">Here is a small update to=
 our security advisory.</span><br style=3D"font-family: Helvetica; font-siz=
e: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal=
; letter-spacing: normal; text-align: start; text-indent: 0px; text-transfo=
rm: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width=
: 0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: normal; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" cla=
ss=3D""><span style=3D"font-family: Helvetica; font-size: 12px; font-style:=
 normal; font-variant-caps: normal; font-weight: normal; letter-spacing: no=
rmal; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">An additional CVE ID got assigned f=
or the password change finding:</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; font-weight=
: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px;" class=3D""><a href=3D"https://cve.mitre.org/cgi-bin/cvename=
.cgi?name=3DCVE-2017-8879" style=3D"font-family: Helvetica; font-size: 12px=
; font-style: normal; font-variant-caps: normal; font-weight: normal; lette=
r-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text=
-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -we=
bkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" class=3D"">ht=
tps://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-8879</a><br style=
=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-varia=
nt-caps: normal; font-weight: normal; letter-spacing: normal; text-align: s=
tart; text-indent: 0px; text-transform: none; white-space: normal; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-fa=
mily: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: no=
rmal; font-weight: normal; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: Helve=
tica; font-size: 12px; font-style: normal; font-variant-caps: normal; font-=
weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px;" class=3D""><span style=3D"font-family: Helvetica; fon=
t-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: n=
ormal; letter-spacing: normal; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; float: none; display: inline !important;" class=3D"">Meanwhile =
the Dolibarr developers fixed more possible SQL injection bugs</span><br st=
yle=3D"font-family: Helvetica; font-size: 12px; font-style: normal; font-va=
riant-caps: normal; font-weight: normal; letter-spacing: normal; text-align=
: start; text-indent: 0px; text-transform: none; white-space: normal; word-=
spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span style=3D"fo=
nt-family: Helvetica; font-size: 12px; font-style: normal; font-variant-cap=
s: normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline !importan=
t;" class=3D"">in this git commit:</span><br style=3D"font-family: Helvetic=
a; font-size: 12px; font-style: normal; font-variant-caps: normal; font-wei=
ght: normal; letter-spacing: normal; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-s=
troke-width: 0px;" class=3D""><a href=3D"https://github.com/Dolibarr/doliba=
rr/commit/fa290c34fad108ec7c0751c0372ae9c4b4f63b06" style=3D"font-family: H=
elvetica; font-size: 12px; font-style: normal; font-variant-caps: normal; f=
ont-weight: normal; letter-spacing: normal; orphans: auto; text-align: star=
t; text-indent: 0px; text-transform: none; white-space: normal; widows: aut=
o; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-w=
idth: 0px;" class=3D"">https://github.com/Dolibarr/dolibarr/commit/fa290c34=
fad108ec7c0751c0372ae9c4b4f63b06</a><br style=3D"font-family: Helvetica; fo=
nt-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke=
-width: 0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12=
px; font-style: normal; font-variant-caps: normal; font-weight: normal; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px=
;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; font-=
style: normal; font-variant-caps: normal; font-weight: normal; letter-spaci=
ng: normal; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">They still didn't release a f=
ixed version of the Dolibarr software.</span><br style=3D"font-family: Helv=
etica; font-size: 12px; font-style: normal; font-variant-caps: normal; font=
-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px;" class=3D""><br style=3D"font-family: Helvetica; font=
-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: no=
rmal; letter-spacing: normal; text-align: start; text-indent: 0px; text-tra=
nsform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px=
; font-style: normal; font-variant-caps: normal; font-weight: normal; lette=
r-spacing: normal; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;"=
 class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; font-styl=
e: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""=
><span style=3D"font-family: Helvetica; font-size: 12px; font-style: normal=
; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; t=
ext-align: start; text-indent: 0px; text-transform: none; white-space: norm=
al; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display=
: inline !important;" class=3D"">For CVE-2017-7886 I don't agree with the C=
VSS v2 scoring from the NIST.</span><br style=3D"font-family: Helvetica; fo=
nt-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-t=
ransform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke=
-width: 0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: normal; l=
etter-spacing: normal; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; float: none; display: inline !important;" class=3D"">They rated "Confid=
entiality Impact" as partial while I think it is</span><br style=3D"font-fa=
mily: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: no=
rmal; font-weight: normal; letter-spacing: normal; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: Hel=
vetica; font-size: 12px; font-style: normal; font-variant-caps: normal; fon=
t-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0=
px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; float: none; display: inline !important;" class=3D""=
>complete as we have full access to all tables.</span><br style=3D"font-fam=
ily: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: nor=
mal; font-weight: normal; letter-spacing: normal; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -=
webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: Helvet=
ica; font-size: 12px; font-style: normal; font-variant-caps: normal; font-w=
eight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text=
-stroke-width: 0px;" class=3D""></div></blockquote><div><br class=3D""></di=
v><div>But you don=E2=80=99t have access to the underlying system, such as =
configuration files with plaintext passwords or similar. Only in a poorly c=
onfigured MySQL instance would you be able to read files in the first place=
. I agree that the Confidentiality Impact is partial.</div><br class=3D""><=
blockquote type=3D"cite" class=3D""><div class=3D""><br style=3D"font-famil=
y: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: normal; letter-spacing: normal; text-align: start; text-ind=
ent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: Helvet=
ica; font-size: 12px; font-style: normal; font-variant-caps: normal; font-w=
eight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;=
 text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; float: none; display: inline !important;" class=3D"">Re=
gards,</span><br style=3D"font-family: Helvetica; font-size: 12px; font-sty=
le: normal; font-variant-caps: normal; font-weight: normal; letter-spacing:=
 normal; text-align: start; text-indent: 0px; text-transform: none; white-s=
pace: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"=
"><span style=3D"font-family: Helvetica; font-size: 12px; font-style: norma=
l; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; displa=
y: inline !important;" class=3D"">Stefan</span></div></blockquote></div><br=
 class=3D""></body></html>=

--Apple-Mail=_487FAAA0-8D7A-4473-A3CC-1C9D15C644FA--

--Apple-Mail=_EDCE0B87-624B-4C27-9B7C-9E6609DF94BA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZHL7pAAoJEKJq8VjVbt2pHvoP/Rk0vWtiPX33xIg5dwnzJv2f
y6p798lsY/xwcDyNojrmrrK25TivJGDYfMBpI1RGcH9MKr9DGyRDwQPM+litnXqd
z7BSgTjRaou5Zp8dZLr0qruTwnNKkNiOVYM1oPOfR6he66FW+bwhRhOEPFAWW1+W
KighAr4B9JpaehB4Elo9PeyHkRu7bzkUgVVmAp33yBWytP8wHr7xy2/EinURupV6
lAAMw0YWaQoAntoHifHvvTzv9Jm5Cw7G91ggjlClTovtRJQmNMSbZ7cJDBVsxvQo
KqcgIicGA94gi+q4BRwgLxYgoxv64Wtpl3gf4VceHxGD0c+/GRNdXfbHG/4WcZsL
eXX19j5AQIX5JNmGJGGyazGFHAP6LHPyeW8+F71QJA2gm5DpZvDhiCUQn4R3UO0N
/+wT9BtqA+NTBbkDKx7nbLj2acBcF6B1MdWzORw3iJKMCW2ThuPNPMyanxhSRiMt
LJfHEbdf1O+Ez8RvVfsjTRKYobNmP5dZowk3PC1iW9Zdw23KAbxv+5HJWDvowlnM
OyTyZ3sLS0KytCycKm/2dCXriwfwR1MEb/ZkRSc2i/WwpVOXQ0/d2bkGGFhAZ/Rx
K0jypuy0k7eAuWnLAr9hASzFhEo0dP0Cq4lK7vzGHKIQ2TCHp7RJZzMZ/0iNo3St
bfE/AlB4RAvxHxsdl4Lf
=rq/1
-----END PGP SIGNATURE-----

--Apple-Mail=_EDCE0B87-624B-4C27-9B7C-9E6609DF94BA--
