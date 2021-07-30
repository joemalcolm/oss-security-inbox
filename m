X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2478" "Thursday" "29" "July" "2021" "22:14:01" "-0700" "Daniel Bevenius" "dbeveniu@redhat.com" nil "54" "[oss-security] Node.js: Security updates for all active release lines, 30 July 2021" nil nil nil "7" nil nil (number mark "U       dbeveniu@red Jul 29   54/2478  " thread-indent "\"[oss-security] Node.js: Security updates for all active release lines, 30 July 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Node.js: Security updates for all active release lines, 30 July 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14110 invoked by uid 550); 30 Jul 2021 05:59:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30249 invoked from network); 30 Jul 2021 05:14:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627622044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VJFqdzwckL9PCxXm8Q7ZAjyuJwpf7zkgVWF1d99Osfk=;
	b=ioAWdybtCI1rfIQqtwDQR6drl3jxPg3h30UzxeJmFxP/zlVaAnVzGoTktqgDGW86Pjp0qU
	TW5sNWD/D9hRVKCOgx4Sgw4IXVXJOHI5fbZ+CVeeXoeJpZigyLA9m9r5d+XR3IzutMaOD4
	8mgOfp2WG76n3GFDPO71HL2QsJcPEdE=
X-MC-Unique: BkZnprCDN-apSkBc9F-mlg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=VJFqdzwckL9PCxXm8Q7ZAjyuJwpf7zkgVWF1d99Osfk=;
        b=p3jxwMBO3zfMwyYYKtG3IlVppKWA0dPNqFmSsK5DS5B4p3rzqZ+Q4y1QD7RepwgmJJ
         qL9+vB4KtYhpOkamA6hVfUiR2fu+R5kizswO+tHfAZrdrG2dAMTHPwJPCO745CR5btiX
         vJQtPvRJiI8PZ9KUqj3qH97ibhZSG4xKxgffzkJLovklSHOpATNb5X7tQU9TuMxSDZ0J
         h7YmV+Wez8FrEqV9jFfCmbPjXgfiV7XYAgCz6C5tzovRO9ePx+KIkS1Ig2P4ysYeAWR1
         VmyaAhj3J4RI6GT+Zyuhthi25h7PwyOqNp4ZbbO6yeCuYoW8jvDJHc1WljPFRiDhptwG
         XKQQ==
X-Gm-Message-State: AOAM531jTFwmxlfcqLrSqgLAvoNiPJnx359zteOoEENxkmAm6QZ48EXD
	WoGlCtBeguvSnlOQUo71udpGfJc0Nu6+dw2ufWb8B8DB0ELOXVg04J6nYnujO3atUlxtKhw6peB
	ftnse4f6pPJx8iVVHZcYCT3TevorW+tFGebpoANFgod5MshUiigebOm25mpBKz6YUOuWfXQRLqh
	5eJDIdeMYFZ34=
X-Received: by 2002:ac8:74cd:: with SMTP id j13mr827705qtr.382.1627622041557;
        Thu, 29 Jul 2021 22:14:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlY/oSCsdvMU1lzHrTIFwQgcMS9ZNpXDUBN/WSPx/qAg8cYzBAtY95G73d1OnZJDsVxHmzq/k0UQ==
X-Received: by 2002:ac8:74cd:: with SMTP id j13mr827684qtr.382.1627622041251;
        Thu, 29 Jul 2021 22:14:01 -0700 (PDT)
Date: Thu, 29 Jul 2021 22:14:01 -0700 (PDT)
From: Daniel Bevenius <dbeveniu@redhat.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <0e698f6d-0c20-4e74-83ed-322ff637ead0n@googlegroups.com>
In-Reply-To: <4bbf0065-3167-4484-aac0-7e84f158dc00n@googlegroups.com>
References: <4bbf0065-3167-4484-aac0-7e84f158dc00n@googlegroups.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dbeveniu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; 
	boundary="----=_Part_1234_798097968.1627622041139"
Subject: [oss-security] Node.js: Security updates for all active release lines, 30 July 2021

------=_Part_1234_798097968.1627622041139
Content-Type: multipart/alternative; 
	boundary="----=_Part_1235_294686853.1627622041139"

------=_Part_1235_294686853.1627622041139
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: Daniel Bevenius <dbeveniu@redhat.com>
Date: Friday, July 30, 2021 at 7:07:19 AM UTC+2
Subject: Security updates for all active release lines, 30 July 2021
To: nodejs-sec <nodejs-sec@googlegroups.com>


Updates are now available for v16.x, v14.x, and v12.x Node.js release lines.

We normally like to give advance notice and provide releases in which the 
only  changes are security fixes, but since this vulnerability was already 
public we felt it was more important to get this fix out fast in releases 
that were  already planned.

For more information see: 
https://nodejs.org/en/blog/vulnerability/july-2021-security-releases-2

------=_Part_1235_294686853.1627622041139
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">-=
--------- Forwarded message ---------<br>From: <span dir=3D"auto">Daniel Be=
venius &lt;dbeveniu@redhat.com&gt;</span><br>Date: Friday, July 30, 2021 at=
 7:07:19 AM UTC+2<br>Subject: Security updates for all active release lines=
, 30 July 2021<br>To: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegr=
oups.com&gt;</span><br></div><br><br><html-blob>Updates are now available f=
or v16.x, v14.x, and v12.x Node.js release lines.<br><div><br></div><div><d=
iv>We normally like to give advance notice and provide releases in which th=
e only&nbsp; changes are security fixes, but since this vulnerability was a=
lready public we felt it was more important to get this fix out fast in rel=
eases that were&nbsp; already planned.</div><div><br></div><div>For more in=
formation see: <a href=3D"https://nodejs.org/en/blog/vulnerability/july-202=
1-security-releases-2" target=3D"_blank" rel=3D"nofollow" data-saferedirect=
url=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://nodejs.org/en/blo=
g/vulnerability/july-2021-security-releases-2&amp;source=3Dgmail&amp;ust=3D=
1627708044037000&amp;usg=3DAFQjCNHtHzMo96HhdC6176X5dvfZ3AC19g">https://node=
js.org/en/blog/vulnerability/july-2021-security-releases-2</a><br></div></d=
iv></html-blob></div>=

------=_Part_1235_294686853.1627622041139--

------=_Part_1234_798097968.1627622041139--

