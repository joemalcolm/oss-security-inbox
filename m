Received: (qmail 19769 invoked by uid 550); 8 May 2025 18:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13626 invoked from network); 8 May 2025 18:44:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1746729848; x=1747334648; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CYCDGwGNIZB9f/Rf6k3hvkmwt8c3LJQXu84RG/x5i/U=;
        b=g0DFair3Hd7tUJC1k69zAhi6Q0JRUpBki1X6yt5yx74GEqr2mse4AFPVXEZq3YbdhN
         F5Fnf/UEK7pM9LoPs4Odmfnu1PXWKj1JrK2mTAsxY4VgwFSXeOLdYqX2ZjDhgH0XkdkA
         UfKG5DYgWgWKEcDnQUaUiMqqpt87rgSFndgV40qXdRF/Kfb8RUlUjakiSI2EXns7G/D+
         utcn0Bt/Ok2eq+L7LbXmV9ScKHo/XfKUU/bxR2viRMb31FcF5xXzY/TrGi42rKdXwKY2
         eDW8ilmv2Fpld+dPb5sajBXGyAkSWWz3SWg+HJRgs69VuOYNs/42C1QOVhlimPwlPw5W
         t7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746729848; x=1747334648;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CYCDGwGNIZB9f/Rf6k3hvkmwt8c3LJQXu84RG/x5i/U=;
        b=qpvfBPisnrHOSwG89T+Lns6/AA5XuQtQ31z7OqLWdpvDefhUZE4cdAM9UMo/lrwQUs
         9j1+1a5qPTfhRppi8z9PIARMQ84n2J0fWpXuiAveb8/GA2DFmEUniw2c7C9oBHUJ8Y/t
         hb4iryOjTIV65fvQGftKJp5DrkUeA62rIX/uRtwBiT8X/BC5Yu9qCCJKtTZ1zKRVY3j6
         WDDpJXIBgkpVX7HZ0mhMW2r8vnJhbiNa/cqJWMQD39hVnDcbVVP6wbGi04CELpcickYQ
         hNOnPoEpa9VBZpduf9HM6imiI+92dJMrVVGTQ6jC+yObAWf5mNO1Y4y2hTosxa+sZEIF
         Nsyw==
X-Gm-Message-State: AOJu0YwWhpiXi6tH6HGQqcK45bmQIbIUzc9GmhmjRwgqU+ffaJKFfVhz
	Bk8YOa9+4jFcS3MF6/nY3Z+/e1LQrRNzIn1Is1BuM/p1s0/QqM9MUCiF9cLdPE24YbDWl4UdIJd
	yg/r4xbl020SkvKpmKg==
X-Google-Smtp-Source: AGHT+IGMV1n7/JR+8d9iH6IvQAUSYJ3hU7soW3Ex1mQ4rVAfwDAhefQwrUb7WBHzQuRU2ViWC/zKpGXTAA==
X-Received: by 2002:a05:6808:23d0:b0:3f3:d699:e1a8 with SMTP id 5614622812f47-403779e8fa8mr2923737b6e.13.1746729848292;
        Thu, 08 May 2025 11:44:08 -0700 (PDT)
Date: Thu, 8 May 2025 11:44:07 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <7c2dbb67-70e4-4db0-9148-f4ae368e1571n@googlegroups.com>
In-Reply-To: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1034_1435713495.1746729847883"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, May
 2025

------=_Part_1034_1435713495.1746729847883
Content-Type: multipart/alternative; 
	boundary="----=_Part_1035_938403037.1746729847883"

------=_Part_1035_938403037.1746729847883
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: quinta-feira, 8 de maio de 2025 =C3=A0s 15:42:50 UTC-3
Assunto: Node.js security updates for all active release lines, May 2025
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after May 14th, 2025

For more information, see:=20
https://nodejs.org/en/blog/vulnerability/may-2025-security-releases

------=_Part_1035_938403037.1746729847883
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: quinta-feira, 8 de maio de 2025 =C3=A0s 15:42:50 UTC-3<br />=
Assunto: Node.js security updates for all active release lines, May 2025<br=
 />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;<=
/span><br /></div><br /><br />The Node.js project will release new versions=
 of all supported release lines on or shortly after May 14th, 2025<div><br =
/>For more information, see:=C2=A0<a href=3D"https://nodejs.org/en/blog/vul=
nerability/may-2025-security-releases" target=3D"_blank" rel=3D"nofollow">h=
ttps://nodejs.org/en/blog/vulnerability/may-2025-security-releases</a></div=
></div>=

------=_Part_1035_938403037.1746729847883--

------=_Part_1034_1435713495.1746729847883--
