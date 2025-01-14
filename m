Received: (qmail 27675 invoked by uid 550); 14 Jan 2025 19:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3838 invoked from network); 14 Jan 2025 19:29:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1736882982; x=1737487782; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3iMxDSVHuvzQQZbGDnU0RkH7196tA2wLlTgT6uFzR44=;
        b=P6pwS7wDqI4pb/TwXEhvCQnc1wi5Nk5hcbdv/rtTnR0FAFw8g6hGS5r+u7Psu8Mk7z
         ekyxDbYLSLFvyl/6QmU3i5XtuFHljYZx7iuL34riCqgsDWk2Fb52u0f3rABgNoD+f86y
         GuLc7ynmITqwih1VlJ+nDGmpK7PcQbS6ATVRcF8aNyoHJCq4B43x1dFBq1GX8AY3Pwek
         8Yl+PFpH3tYvNKvMcxCOHT8GNCuo5qxdjAQDITWsxHhk47S4sEXXpiYMDk07tscqmZ64
         PwSCiGALbt3LWZxIkGXucizlNIbKqzFnMBtHXrcEYOJexF2r8/598HBK358bmK4FgnqH
         PoGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736882982; x=1737487782;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3iMxDSVHuvzQQZbGDnU0RkH7196tA2wLlTgT6uFzR44=;
        b=i6toStnZ/UeWfGwzSFCtTP7g6TSFEHLqms2TRpCVNCBpEvrj4cqGLnnR+YH5EJI3Ag
         fxfsDx9HJGldKrTcN/+nKVZoIqXKDA/R1A9adB+ksKZ122BPRBsinYlK3UXCW4FE9PTy
         SFwtErof8AzRhpohneEzv01luWvJpL5CCgFcxE3O2an8ipse1qqZ7fCkcbb6HHqwWRU8
         JSg9vLJGZLNAjLyWe0ahoElsv1kUn6nqkF3ae14qHwLBkeBDGtyGBN9oruncRGzhuQmh
         W09ED1ugSzxyIo3IL+/nDxBx6fwRxYy7F21NY4N7LxrcYvBDFW3In8IdKExDLYcVxnRE
         gtdw==
X-Gm-Message-State: AOJu0Yw8ay6zckcwM5jn//N84Cxj5wFVgpNZapSvychmagJ8B8A6+wh4
	3NbTdRDa0e4IdmLuJC6LkA5ai/MjJJHzHtOld44EVe08/0hl0S1M5n+q97h0Z1EgjQDYoqu9aND
	cCckg+KgifFlyIvBUzw==
X-Google-Smtp-Source: AGHT+IGNsFc1e9INajHgLXFdtU5sdshil+q4kKOpoCxNMdwNwoatvqp67oH3ilCH/pQKECckbsu55ps9iQ==
X-Received: by 2002:a05:6808:b1a:b0:3eb:575e:3ecb with SMTP id 5614622812f47-3ef2ec68c78mr14335011b6e.19.1736882982277;
        Tue, 14 Jan 2025 11:29:42 -0800 (PST)
Date: Tue, 14 Jan 2025 11:29:41 -0800 (PST)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <69d451bf-7e02-4e25-b3a4-59bf90f733dfn@googlegroups.com>
In-Reply-To: <29f14bf0-e6fa-4579-9a1b-f9487fff45fan@googlegroups.com>
References: <29f14bf0-e6fa-4579-9a1b-f9487fff45fan@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_348972_317241578.1736882981948"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, January
 2025

------=_Part_348972_317241578.1736882981948
Content-Type: multipart/alternative; 
	boundary="----=_Part_348973_670360391.1736882981948"

------=_Part_348973_670360391.1736882981948
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: ter=C3=A7a-feira, 14 de janeiro de 2025 =C3=A0s 16:27:10 UTC-3
Assunto: Node.js security updates for all active release lines, January 2025
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after January 21, 2025
For more information see:=20
https://nodejs.org/en/blog/vulnerability/january-2025-security-releases

------=_Part_348973_670360391.1736882981948
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: ter=C3=A7a-feira, 14 de janeiro de 2025 =C3=A0s 16:27:10 UTC=
-3<br />Assunto: Node.js security updates for all active release lines, Jan=
uary 2025<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegro=
ups.com&gt;</span><br /></div><br /><br />The Node.js project will release =
new versions of all supported release lines on or shortly after January 21,=
 2025<br />For more information see:=C2=A0<a href=3D"https://nodejs.org/en/=
blog/vulnerability/january-2025-security-releases" target=3D"_blank" rel=3D=
"nofollow">https://nodejs.org/en/blog/vulnerability/january-2025-security-r=
eleases</a><br /></div>=

------=_Part_348973_670360391.1736882981948--

------=_Part_348972_317241578.1736882981948--
