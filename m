X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["31473" "Monday" "15" "August" "2016" "22:43:19" "+0100" "Ibrahim el-sayed" "i.elsayed92@gmail.com" "<B3F48692-5C10-4A0F-A2A9-2C208A2A26A4@gmail.com>" "503" "[oss-security] Fwd: Security vulnerability - read out-of-bounds leads to memory leak" nil nil nil "8" "2016081521:43:19" "[oss-security] Fwd: Security vulnerability - read out-of-bounds leads to memory leak" (number mark "U       i.elsayed92@ Aug 15  503/31473 " thread-indent "\"[oss-security] Fwd: Security vulnerability - read out-of-bounds leads to memory leak\"\n") "<3582B54F-D405-4FEF-8A95-FF3EBB82967F@gmail.com>" ("<3582B54F-D405-4FEF-8A95-FF3EBB82967F@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1519 invoked by uid 550); 15 Aug 2016 21:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1495 invoked from network); 15 Aug 2016 21:43:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:subject:from:date:cc:message-id:references:to;
        bh=wSVHb2si+IMioUpdWQWnhkh1/xOHfeNHtMb0ILXBj0Y=;
        b=rn+ccYcMc7Oomh/d0jRxdIyVWKBQV9WD5mYe89loXcc08PEU/PInTWduS92tTyt3wp
         Krlu/Pqh+766W6eqqDQC0GIZL9/2PCcW0XGd2nbeJa+1ONwsCrfqOYxqH4cXFn3o3NPE
         MXlCdhgrgKb5TLDrgxdTE0K2ha/RreUeBzDJ8oR9/PTBGXWz646dqQybUf6VjQcPZi8d
         AbyFNvOdzOz0CvCqh1x2M4j4aK7hnI8TkSEA2XcgGmxENctuEpLwIHfbQ4B2wLZiXSl2
         XKT3GvZ8mz7eJtfs+vmXVndzBMfIMU0uzBEgpOOPhj65ozIA0htz/QGLo/GnERUTPhVT
         PiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:date:cc:message-id
         :references:to;
        bh=wSVHb2si+IMioUpdWQWnhkh1/xOHfeNHtMb0ILXBj0Y=;
        b=ijLl/Z2nUEHxavteA+F66IYoLsmmhzKutxVOMMtbA5fYYoLZIpptxl8iqSYDBXDwfc
         Q69Kj+oUbGd2zp3fDuwuhJiSH+02gWb0+AAbh5slPWMDl8odJIfIVC+3F2U1hqhbdCOp
         zjHSSuo6h+rWfo8PpExutQtxYP9nVduDQSxCg0fqlUe+prDgcRxt//EHLvbE0sFKhGGc
         TIy7D+ja5cHFqDgicxt1pzDW1qL5vl2+q/vrzqZXYnqAj1Cdv3oDuBas0B+2jPbX6JmV
         0YmUwlBUggJfQlYQAnEQnevrIgj2yOVcG7vKxnUIMlIww0HPwjNkzjeOyyso7WR5iLda
         V7Zg==
X-Gm-Message-State: AEkoouup50i7PKpz/dR18nh+YEITlDgIbBIzmurkqvnPnBjXKvsIwwLDhrYoL+YJhl8gdQ==
X-Received: by 10.28.38.196 with SMTP id m187mr16385284wmm.81.1471297402456;
        Mon, 15 Aug 2016 14:43:22 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_BCBCC555-1F72-446A-B291-08EDB80A7980"; protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Ibrahim el-sayed <i.elsayed92@gmail.com>
Date: Mon, 15 Aug 2016 22:43:19 +0100
Cc: oss-security@lists.openwall.com
Message-Id: <B3F48692-5C10-4A0F-A2A9-2C208A2A26A4@gmail.com>
References: <3582B54F-D405-4FEF-8A95-FF3EBB82967F@gmail.com>
To: cve-assign@mitre.org
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Fwd: Security vulnerability - read out-of-bounds leads to memory leak

--Apple-Mail=_BCBCC555-1F72-446A-B291-08EDB80A7980
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_01A194AC-9349-4AF5-9336-ED7B3132205A"


--Apple-Mail=_01A194AC-9349-4AF5-9336-ED7B3132205A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi CVE-Assignemnt Team,
I would like to request a CVE for a read out-of-bound in little cms which w=
as fixed in the following upstream push
https://github.com/mm2/Little-CMS/commit/5ca71a7bc18b6897ab21d815d15e218e20=
4581e2 <https://github.com/mm2/Little-CMS/commit/5ca71a7bc18b6897ab21d815d1=
5e218e204581e2>
The details of the vulnerability can be found in the forwarded email.

Best Regards
Ibrahim M. El-Sayed
Security Engineer
https://www.ibrahim-elsayed.com/ <https://www.ibrahim-elsayed.com/>
@ibrahim_mosaad

> Begin forwarded message:
>=20
> From: Ibrahim el-sayed <i.elsayed92@gmail.com>
> Subject: Re: Security vulnerability - read out-of-bounds leads to memory =
leak
> Date: August 15, 2016 at 10:40:15 PM GMT+1
> To: LittleCMS Support <info@littlecms.com>
>=20
>=20
>> On Aug 15, 2016, at 10:32 PM, LittleCMS Support <info@littlecms.com <mai=
lto:info@littlecms.com>> wrote:
>>=20
>>=20
>> Hi,
>>=20
>> Thanks for reporting, and sorry about the delay. August and a local fest=
ivity means everybody on holidays right now.
> No worries :)
>> This is a true bug, so many thanks for uncovering it. I have uploaded a =
fix to GIT.
> Thank you so much!  I can confirm the fix on GIT
>>=20
>> After examining the case, it seems to me that the severity is low, since=
 you need a crafted profile and execution of code to read the heap, also I =
have checked it to happen only when a profile is hold in memory. It does no=
t happen when the profile is file-based.
>>=20
> I have found the bug basically while fuzzing ImageMagick. The bug was tri=
ggered regardless of the command or the option was passed to ImageMagick. G=
iven the fact the ImageMagick is deployed heavily on many web servers and t=
he exploit is very easy, I give it a bit of a moderate rating just for the =
context ^^
>=20
>> Many thanks again for uncovering the bug.
> Thanks for fixing the bug.
>>=20
>> Marti Maria
>> The LittleCMS project
>> http://www.littlecms.com <http://www.littlecms.com/>
>>=20
>> From: Ibrahim el-sayed [mailto:i.elsayed92@gmail.com <mailto:i.elsayed92=
@gmail.com>]
>> Sent: domingo, 14 de agosto de 2016 20:58
>> To: info@littlecms.com <mailto:info@littlecms.com>
>> Subject: Re: Security vulnerability - read out-of-bounds leads to memory=
 leak
>>=20
>> ping!!
>>> On Aug 10, 2016, at 9:44 PM, Ibrahim el-sayed <i.elsayed92@gmail.com <m=
ailto:i.elsayed92@gmail.com>> wrote:
>>>=20
>>> Hi guys,
>>> I was fuzzing ImageMagick and I ended up finding a vulnerability in lcm=
s2. The vulnerability is read read-out-of bounds which enables me to read m=
ost of the data in the heap.
>>>=20
>>>=20
>>> The vulnerabilities exists in cmstypes.c =3D=3D> function: Type_MLU_Read
>>> line 1454: if (!_cmsReadUInt32Number(io, &Offset)) goto Error;
>>>=20
>>> The function reads the offset from the provided ICC profile (exactly fr=
om location 0x158  to 0x15B in the attached PoC)
>>>=20
>>> line 1460: BeginOfThisString =3D Offset - SizeOfHeader - 8;
>>> line 1464: mlu ->Entries[i].StrW =3D (BeginOfThisString * sizeof(wchar_=
t)) / sizeof(cmsUInt16Number);
>>>=20
>>> We can see from the previous lines that offset is basically used in the=
 assignemnt of mlu->Entries[i].StrW which means we can control StrW
>>>=20
>>> To trigger the vulnerability we do the following
>>>=20
>>> icc_profile =3D cmsOpenProfileFromMem(data, (cmsUInt32Number) res); // =
We read the parse the ICC Profile
>>> cmsGetProfileInfoASCII(icc_profile,cmsInfoCopyright, "en","US", info, B=
uf_Len); // then we read the profile info into an ascii buffer
>>>=20
>>>=20
>>> To explain better, the backtrace is
>>>=20
>>> (gdb) bt
>>> #0  0x00007ffff7ba2593 in cmsMLUgetASCII (mlu=3D0x6043a0, LanguageCode=
=3D0x400da4 "en", CountryCode=3D0x400da1 "US", Buffer=3D0x7fffffffd490 "", =
BufferSize=3D4096) at cmsnamed.c:378
>>> #1  0x00007ffff7b8c7ae in cmsGetProfileInfoASCII (hProfile=3D0x6034f0, =
Info=3DcmsInfoCopyright, LanguageCode=3D0x400da4 "en", CountryCode=3D0x400d=
a1 "US", Buffer=3D0x7fffffffd490 "", BufferSize=3D4096) at cmsio1.c:1021
>>> #2  0x0000000000400c27 in main ()
>>>=20
>>>=20
>>> Inside cmsMLUgetASCII the following line executes
>>> cmsnamed.c:360  Wide =3D _cmsMLUgetWide(mlu, &StrLen, Lang, Cntry, NULL=
, NULL); //Wide contains the buffer which will be copied from memory after =
being converted into ascii and returned to the user
>>>=20
>>>=20
>>> _cmsMLUgetWide basically returns the following ptr
>>> cmsnamed.c:324  (wchar_t*) ((cmsUInt8Number*) mlu ->MemPool + v -> StrW=
);
>>>=20
>>> and we have a control over StrW.
>>>=20
>>> Technically we can read any chunk of data starting from mlu ->MemPool+4=
 to     mlu ->MemPool+ 0x1ffffffc6
>>>=20
>>>=20
>>> You can find attached,
>>> PoC1 =3D=3D> ICC profile that generates a segfault
>>> PoC2 =3D=3D> ICC profile that dumps from mlu->MemPool + 0x148 # I can c=
ontrol 0x148 from the limits I mentioned above (0x4 - 0x1ffffffc6)
>>> test.c =3D=3D> source code that produces the crash
>>>=20
>>>=20
>>>=20
>>> <Vuln.zip>
>>>=20
>>> Best Regards
>>> Ibrahim M. El-sayed
>>> Security Engineer
>>> @ibrahim_mosaad
>>> https://www.ibrahim-elsayed.com <https://www.ibrahim-elsayed.com/>


--Apple-Mail=_01A194AC-9349-4AF5-9336-ED7B3132205A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D"">Hi CVE-Assignem=
nt Team,<div class=3D"">I would like to request a CVE for a read out-of-bou=
nd in little cms which was fixed in the following upstream push</div><div c=
lass=3D""><a href=3D"https://github.com/mm2/Little-CMS/commit/5ca71a7bc18b6=
897ab21d815d15e218e204581e2" class=3D"">https://github.com/mm2/Little-CMS/c=
ommit/5ca71a7bc18b6897ab21d815d15e218e204581e2</a></div><div class=3D"">The=
 details of the vulnerability can be found in the forwarded email.</div><di=
v class=3D""><br class=3D""></div><div class=3D"">Best Regards</div><div cl=
ass=3D"">Ibrahim M. El-Sayed</div><div class=3D"">Security Engineer</div><d=
iv class=3D""><a href=3D"https://www.ibrahim-elsayed.com/" class=3D"">https=
://www.ibrahim-elsayed.com/</a></div><div class=3D"">@ibrahim_mosaad</div><=
div class=3D""><div class=3D""><div><br class=3D""><blockquote type=3D"cite=
" class=3D""><div class=3D"">Begin forwarded message:</div><br class=3D"App=
le-interchange-newline"><div style=3D"margin-top: 0px; margin-right: 0px; m=
argin-bottom: 0px; margin-left: 0px;" class=3D""><span style=3D"font-family=
: -webkit-system-font, Helvetica Neue, Helvetica, sans-serif; color:rgba(0,=
 0, 0, 1.0);" class=3D""><b class=3D"">From: </b></span><span style=3D"font=
-family: -webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" class=
=3D"">Ibrahim el-sayed &lt;<a href=3D"mailto:i.elsayed92@gmail.com" class=
=3D"">i.elsayed92@gmail.com</a>&gt;<br class=3D""></span></div><div style=
=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0p=
x;" class=3D""><span style=3D"font-family: -webkit-system-font, Helvetica N=
eue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);" class=3D""><b class=
=3D"">Subject: </b></span><span style=3D"font-family: -webkit-system-font, =
Helvetica Neue, Helvetica, sans-serif;" class=3D""><b class=3D"">Re: Securi=
ty vulnerability - read out-of-bounds leads to memory leak</b><br class=3D"=
"></span></div><div style=3D"margin-top: 0px; margin-right: 0px; margin-bot=
tom: 0px; margin-left: 0px;" class=3D""><span style=3D"font-family: -webkit=
-system-font, Helvetica Neue, Helvetica, sans-serif; color:rgba(0, 0, 0, 1.=
0);" class=3D""><b class=3D"">Date: </b></span><span style=3D"font-family: =
-webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" class=3D"">Aug=
ust 15, 2016 at 10:40:15 PM GMT+1<br class=3D""></span></div><div style=3D"=
margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;" =
class=3D""><span style=3D"font-family: -webkit-system-font, Helvetica Neue,=
 Helvetica, sans-serif; color:rgba(0, 0, 0, 1.0);" class=3D""><b class=3D""=
>To: </b></span><span style=3D"font-family: -webkit-system-font, Helvetica =
Neue, Helvetica, sans-serif;" class=3D"">LittleCMS Support &lt;<a href=3D"m=
ailto:info@littlecms.com" class=3D"">info@littlecms.com</a>&gt;<br class=3D=
""></span></div><br class=3D""><div class=3D""><meta http-equiv=3D"Content-=
Type" content=3D"text/html charset=3Dus-ascii" class=3D""><div style=3D"wor=
d-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-whi=
te-space;" class=3D""><br class=3D""><div class=3D""><div class=3D""><block=
quote type=3D"cite" class=3D""><div class=3D"">On Aug 15, 2016, at 10:32 PM=
, LittleCMS Support &lt;<a href=3D"mailto:info@littlecms.com" class=3D"">in=
fo@littlecms.com</a>&gt; wrote:</div><br class=3D"Apple-interchange-newline=
"><div class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: Helvetica; font-size: 12px; font-style: normal; font-variant-c=
aps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div s=
tyle=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New =
Roman', serif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; f=
ont-family: Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></=
span></div><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-fa=
mily: 'Times New Roman', serif;" class=3D""><span lang=3D"EN-US" style=3D"f=
ont-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Hi,<o:p class=
=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; font-size:=
 12pt; font-family: 'Times New Roman', serif;" class=3D""><span lang=3D"EN-=
US" style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""=
><o:p class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm 0.0=
001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">=
<span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri, sans-s=
erif;" class=3D"">Thanks for reporting, and sorry about the delay. August a=
nd a local festivity means everybody on holidays right now.</span></div></d=
iv></div></blockquote>No worries :)<br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: Word=
Section1; font-family: Helvetica; font-size: 12px; font-style: normal; font=
-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans=
: auto; text-align: start; text-indent: 0px; text-transform: none; white-sp=
ace: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x;"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: '=
Times New Roman', serif;" class=3D""><span lang=3D"EN-US" style=3D"font-siz=
e: 11pt; font-family: Calibri, sans-serif;" class=3D"">This is a true bug, =
so many thanks for uncovering it. I have uploaded a fix to GIT.<span class=
=3D"Apple-converted-space">&nbsp;</span><o:p class=3D""></o:p></span></div>=
<div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Time=
s New Roman', serif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: 1=
1pt; font-family: Calibri, sans-serif;" class=3D""></span></div></div></div=
></blockquote>Thank you so much! &nbsp;I can confirm the fix on GIT<br clas=
s=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div class=3D"W=
ordSection1" style=3D"page: WordSection1; font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: auto; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0cm 0cm 0.0001pt;=
 font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri, sans-serif;"=
 class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Cali=
bri, sans-serif;" class=3D"">After examining the case, it seems to me that =
the severity is low, since you need a crafted profile and execution of code=
 to read the heap, also I have checked it to happen only when a profile is =
hold in memory. It does not happen when the profile is file-based.<o:p clas=
s=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; font-size=
: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span lang=3D"EN=
-US" style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"=
"><o:p class=3D"">&nbsp;</o:p></span></div></div></div></blockquote>I have =
found the bug basically while fuzzing ImageMagick. The bug was triggered re=
gardless of the command or the option was passed to ImageMagick. Given the =
fact the ImageMagick is deployed heavily on many web servers and the exploi=
t is very easy, I give it a bit of a moderate rating just for the context ^=
^</div><div class=3D"">&nbsp;<br class=3D""><blockquote type=3D"cite" class=
=3D""><div class=3D""><div class=3D"WordSection1" style=3D"page: WordSectio=
n1; font-family: Helvetica; font-size: 12px; font-style: normal; font-varia=
nt-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto=
; text-align: start; text-indent: 0px; text-transform: none; white-space: n=
ormal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><d=
iv style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: 11p=
t; font-family: Calibri, sans-serif;" class=3D"">Many thanks again for unco=
vering the bug.<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm=
 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" cla=
ss=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri=
, sans-serif;" class=3D""></span></div></div></div></blockquote>Thanks for =
fixing the bug.<br class=3D""><blockquote type=3D"cite" class=3D""><div cla=
ss=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; font-famil=
y: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norma=
l; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><div style=3D"ma=
rgin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', se=
rif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family=
: Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div=
><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; f=
ont-family: 'Times New Roman', serif;" class=3D""><span lang=3D"EN-US" styl=
e=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: rgb(31, 73, =
125);" class=3D"">Marti Maria<o:p class=3D""></o:p></span></div><div style=
=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roma=
n', serif;" class=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-=
family: Calibri, sans-serif; color: rgb(31, 73, 125);" class=3D"">The Littl=
eCMS project<o:p class=3D""></o:p></span></div><div style=3D"margin: 0cm 0c=
m 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=
=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><a href=3D"http://www.litt=
lecms.com/" style=3D"color: purple; text-decoration: underline;" class=3D""=
>http://www.littlecms.com</a></span><span lang=3D"EN-US" style=3D"font-size=
: 11pt; font-family: Calibri, sans-serif; color: rgb(31, 73, 125);" class=
=3D""><o:p class=3D""></o:p></span></div></div><div style=3D"margin: 0cm 0c=
m 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=
=3D""><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div class=
=3D""><div style=3D"border-style: solid none none; border-top-color: rgb(22=
5, 225, 225); border-top-width: 1pt; padding: 3pt 0cm 0cm;" class=3D""><div=
 style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times Ne=
w Roman', serif;" class=3D""><b class=3D""><span lang=3D"EN-US" style=3D"fo=
nt-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">From:</span></=
b><span lang=3D"EN-US" style=3D"font-size: 11pt; font-family: Calibri, sans=
-serif;" class=3D""><span class=3D"Apple-converted-space">&nbsp;</span>Ibra=
him el-sayed [<a href=3D"mailto:i.elsayed92@gmail.com" style=3D"color: purp=
le; text-decoration: underline;" class=3D"">mailto:i.elsayed92@gmail.com</a=
>]<span class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><b clas=
s=3D"">Sent:</b><span class=3D"Apple-converted-space">&nbsp;</span>domingo,=
 14 de agosto de 2016 20:58<br class=3D""><b class=3D"">To:</b><span class=
=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:info@littlecms.co=
m" style=3D"color: purple; text-decoration: underline;" class=3D"">info@lit=
tlecms.com</a><br class=3D""><b class=3D"">Subject:</b><span class=3D"Apple=
-converted-space">&nbsp;</span>Re: Security vulnerability - read out-of-bou=
nds leads to memory leak<o:p class=3D""></o:p></span></div></div></div><div=
 style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times Ne=
w Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div style=
=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roma=
n', serif;" class=3D"">ping!! &nbsp;<o:p class=3D""></o:p></div><div class=
=3D""><blockquote style=3D"margin-top: 5pt; margin-bottom: 5pt;" class=3D""=
 type=3D"cite"><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font=
-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">On Aug 10, =
2016, at 9:44 PM, Ibrahim el-sayed &lt;<a href=3D"mailto:i.elsayed92@gmail.=
com" style=3D"color: purple; text-decoration: underline;" class=3D"">i.elsa=
yed92@gmail.com</a>&gt; wrote:<o:p class=3D""></o:p></div></div><div style=
=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roma=
n', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div class=3D""><d=
iv class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font=
-family: 'Times New Roman', serif;" class=3D"">Hi guys,<o:p class=3D""></o:=
p></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: =
12pt; font-family: 'Times New Roman', serif;" class=3D"">I was fuzzing Imag=
eMagick and I ended up finding a vulnerability in lcms2. The vulnerability =
is read read-out-of bounds which enables me to read most of the data in the=
 heap.&nbsp;<o:p class=3D""></o:p></div></div><div class=3D""><div style=3D=
"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman',=
 serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div class=3D""=
><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Tim=
es New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><=
div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; fon=
t-family: 'Times New Roman', serif;" class=3D"">The vulnerabilities exists =
in cmstypes.c =3D=3D&gt; function: Type_MLU_Read<o:p class=3D""></o:p></div=
></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 1=
2pt; font-family: 'Times New Roman', serif;" class=3D"">line 1454:&nbsp;if =
(!_cmsReadUInt32Number(io, &amp;Offset)) goto Error;<o:p class=3D""></o:p><=
/div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-siz=
e: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p class=3D""=
>&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.00=
01pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">T=
he function reads the offset from the provided ICC profile (exactly from lo=
cation 0x158 &nbsp;to 0x15B in the attached PoC)&nbsp;<o:p class=3D""></o:p=
></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-s=
ize: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p class=3D=
"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.=
0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""=
>line 1460: BeginOfThisString =3D Offset - SizeOfHeader - 8;<o:p class=3D""=
></o:p></div></div><div class=3D""><div class=3D""><div style=3D"margin: 0c=
m 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" cl=
ass=3D"">line 1464: mlu -&gt;Entries[i].StrW =3D (BeginOfThisString * sizeo=
f(wchar_t)) / sizeof(cmsUInt16Number);<o:p class=3D""></o:p></div></div></d=
iv><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt;=
 font-family: 'Times New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;<=
/o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; fo=
nt-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">We can se=
e from the previous lines that offset is basically used in the assignemnt o=
f mlu-&gt;Entries[i].StrW which means we can control StrW&nbsp;<o:p class=
=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.000=
1pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o=
:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin:=
 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;"=
 class=3D"">To trigger the vulnerability we do the following&nbsp;<o:p clas=
s=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.00=
01pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><=
o:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div class=3D""><div=
 style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times Ne=
w Roman', serif;" class=3D"">icc_profile =3D cmsOpenProfileFromMem(data, (c=
msUInt32Number) res); // We read the parse the ICC Profile&nbsp;<o:p class=
=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.000=
1pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">cm=
sGetProfileInfoASCII(icc_profile,cmsInfoCopyright, "en","US", info, Buf_Len=
); // then we read the profile info into an ascii buffer<o:p class=3D""></o=
:p></div></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt=
; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: 0c=
m 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" cl=
ass=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=
=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roma=
n', serif;" class=3D"">To explain better, the backtrace is&nbsp;<o:p class=
=3D""></o:p></div></div><div class=3D""><div class=3D""><div style=3D"margi=
n: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif=
;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New=
 Roman', serif;" class=3D"">(gdb) bt<br class=3D"">#0&nbsp;&nbsp;0x00007fff=
f7ba2593 in cmsMLUgetASCII (mlu=3D0x6043a0, LanguageCode=3D0x400da4 "en", C=
ountryCode=3D0x400da1 "US",&nbsp;Buffer=3D0x7fffffffd490 "", BufferSize=3D4=
096) at cmsnamed.c:378<br class=3D"">#1&nbsp;&nbsp;0x00007ffff7b8c7ae in cm=
sGetProfileInfoASCII (hProfile=3D0x6034f0, Info=3DcmsInfoCopyright, Languag=
eCode=3D0x400da4 "en",&nbsp;CountryCode=3D0x400da1 "US", Buffer=3D0x7ffffff=
fd490 "", BufferSize=3D4096) at cmsio1.c:1021<br class=3D"">#2&nbsp;&nbsp;0=
x0000000000400c27 in main ()<o:p class=3D""></o:p></div></div></div><div cl=
ass=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-fami=
ly: 'Times New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div=
></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 1=
2pt; font-family: 'Times New Roman', serif;" class=3D""><o:p class=3D"">&nb=
sp;</o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt=
; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">Insid=
e cmsMLUgetASCII the following line executes&nbsp;<o:p class=3D""></o:p></d=
iv></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size:=
 12pt; font-family: 'Times New Roman', serif;" class=3D"">cmsnamed.c:360 &n=
bsp;Wide =3D _cmsMLUgetWide(mlu, &amp;StrLen, Lang, Cntry, NULL, NULL); //W=
ide contains the buffer which will be copied from memory after being conver=
ted into ascii and returned to the user<o:p class=3D""></o:p></div></div><d=
iv class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font=
-family: 'Times New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p>=
</div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-si=
ze: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p class=3D"=
">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0=
001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">=
_cmsMLUgetWide basically returns the following ptr&nbsp;<o:p class=3D""></o=
:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font=
-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">cmsnamed.c:=
324 &nbsp;(wchar_t*) ((cmsUInt8Number*) mlu -&gt;MemPool + v -&gt; StrW); &=
nbsp;&nbsp;<o:p class=3D""></o:p></div></div><div class=3D""><div style=3D"=
margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div class=3D"">=
<div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Time=
s New Roman', serif;" class=3D"">and we have a control over StrW.<o:p class=
=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.000=
1pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o=
:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin:=
 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;"=
 class=3D"">Technically we can read any chunk of data starting from mlu -&g=
t;MemPool+4 to &nbsp; &nbsp; mlu -&gt;MemPool+&nbsp;0x1ffffffc6<o:p class=
=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.000=
1pt; font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o=
:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin:=
 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;"=
 class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div class=3D""><div st=
yle=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New R=
oman', serif;" class=3D"">You can find attached,<o:p class=3D""></o:p></div=
></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 1=
2pt; font-family: 'Times New Roman', serif;" class=3D"">PoC1 =3D=3D&gt; ICC=
 profile that generates a segfault&nbsp;<o:p class=3D""></o:p></div></div><=
div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; fon=
t-family: 'Times New Roman', serif;" class=3D"">PoC2 =3D=3D&gt; ICC profile=
 that dumps from mlu-&gt;MemPool + 0x148 # I can control 0x148 from the lim=
its I mentioned above (0x4 - 0x1ffffffc6)<o:p class=3D""></o:p></div></div>=
<div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; fo=
nt-family: 'Times New Roman', serif;" class=3D"">test.c =3D=3D&gt; source c=
ode that produces the crash<o:p class=3D""></o:p></div></div><div class=3D"=
"><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Ti=
mes New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div>=
<div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; fo=
nt-family: 'Times New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:=
p></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-=
size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><o:p class=
=3D"">&nbsp;</o:p></div></div></div><div style=3D"margin: 0cm 0cm 0.0001pt;=
 font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">&lt;Vu=
ln.zip&gt;<o:p class=3D""></o:p></div><div class=3D""><div class=3D""><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New=
 Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div cl=
ass=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-fami=
ly: 'Times New Roman', serif;" class=3D"">Best Regards<o:p class=3D""></o:p=
></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-s=
ize: 12pt; font-family: 'Times New Roman', serif;" class=3D"">Ibrahim M. El=
-sayed<o:p class=3D""></o:p></div></div><div class=3D""><div style=3D"margi=
n: 0cm 0cm 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif=
;" class=3D"">Security Engineer<o:p class=3D""></o:p></div></div><div class=
=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-size: 12pt; font-family:=
 'Times New Roman', serif;" class=3D"">@ibrahim_mosaad<o:p class=3D""></o:p=
></div></div><div class=3D""><div style=3D"margin: 0cm 0cm 0.0001pt; font-s=
ize: 12pt; font-family: 'Times New Roman', serif;" class=3D""><a href=3D"ht=
tps://www.ibrahim-elsayed.com/" style=3D"color: purple; text-decoration: un=
derline;" class=3D"">https://www.ibrahim-elsayed.com</a></div></div></div><=
/div></blockquote></div></div></div></blockquote></div><br class=3D""></div=
></div></div></blockquote></div><br class=3D""></div></div></body></html>=

--Apple-Mail=_01A194AC-9349-4AF5-9336-ED7B3132205A--

--Apple-Mail=_BCBCC555-1F72-446A-B291-08EDB80A7980
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJXsjd3AAoJEK/viYuAjew9XQQP/2PPw4ibOLB6DUloqRe5P4sC
mwB8UowkpzybtwVAyG+9pYIeWF9oJfuFPgrOgAe8PG7WxZkPUUs54IF6/2s9YuKx
ma5GlkKI4TiSYMH1HuCKSUzbBagsibueP7Y1/vHaVTiQbx7WlLf0SrnxVYZBMTec
t3xNunFxVZvAudABCGz+vpsCwuhqJtz3sbAkr09LsCsT9ynT2rN3eYcTBwlUzgR9
7t0aHt0kgSDRYA5DVEtMi6BBvtoAbZ9aQRwBhclwqMTCZ/KE3gGVFGhjD1EUmI/E
+j/g/ZZ805t2lOTOSj52H0CHIqk9zOyvjquT1JT7lTwyXP0pYd+F93mboJPi4TW1
GiB2vRAXml0M9C1uz0Nr4pkpkN1GEex78Bpi8A1wyJux/1b4yD+SWepW3fcX56Nl
y/jeWNBT8IJ72wp/Ie6iiXdjspTABaZfb4Sv6Is6tnL2ARB0yp5Sj0aOqdPhclmK
e05NMYXAkNRM8SvEGFDKXKlmbDdrzCHEvDvAAqBDtrJvIi8aYiAshmTi+prRpr8y
tgBKsXKFG1ylZtVRtitkhLvQ+Llm2F6fCrMepKWYYdD3J4nWjFCDeq5joD7jPImx
8uGjntYrfe8y2QjQ+adozvn23a52ui2O/L2kxpiFoqJ9ddrSjxmR2okPVV4tJK4j
OWfq/oe8T9VAM5/yFyaC
=cuI0
-----END PGP SIGNATURE-----

--Apple-Mail=_BCBCC555-1F72-446A-B291-08EDB80A7980--
