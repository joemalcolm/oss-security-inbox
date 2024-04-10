Received: (qmail 24471 invoked by uid 550); 10 Apr 2024 17:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22262 invoked from network); 10 Apr 2024 17:04:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1712768642; x=1713373442; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1zZFIH0mogTdQaYRhtx7arePf/lFhP0SOWP3DinGKLU=;
        b=jphi2fMbYWCeH3q/BfeIyZI/8zn0ZQXTvEWYxpSYgD4Tw7vthDDdzoxoUwxm6cgBRt
         BWk9o4dmT/nGRaoQl7oA14PcetQVcDO49WdxxssjbiiaEArGjSSHAOd3fg/92zrPFy8q
         YT0vsYLLvxHl9UidEzkCRayxaJOyFJNZxe8tKz9Sik5rI0yary+tRg4deAGKu5lUiSYi
         5am+dwu4CWznDSqTiKXeaM0eIHu6oTuJARIotliOsLZwJW2msBj9gSEmbjtNB9e07Wxx
         R+YmDjFmNMZpTLhHzcBnQsnILXaPgSI1ceplmdt67jN2zoma85xXFdurpvFDYokn8IYw
         UTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712768642; x=1713373442;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1zZFIH0mogTdQaYRhtx7arePf/lFhP0SOWP3DinGKLU=;
        b=mo875q4/BTG9eFEVSYtSDg92oorGhUGeqqGSqzYPznZM9PmM+M5BZTqWfmEF6JVygH
         xpbAsWjGDLZ5E7TrkOCGcQ8SLttehk6SzUY8Y9pQF/syMeLtjI10FgvA5khgKSJWFSFX
         aUAOuQxu7Ccj+kMNsEaEbnutMQtZW3ETMeH5LAgeXTlETl0Za2wTWBnInrrR8y/yGMK0
         WQh0utGUnqJVDSiuGobqyswNyRh/Xq9vHj9rtkCrWyJQeKLwVYT9lr66uE9Er5AeAo2Q
         U4E2LbnJBBl8GGd4b3kczGburv00HM6lDDO1Nun2FmPPOVr+Lnn6mcWRzbx2ZtyrxP8v
         1EyA==
X-Gm-Message-State: AOJu0Yzh5G0TtWsbgK6PnxD0SVe12metFKNV61G+xVpV+gtzFsq6LGOc
	5FyIyTVYzS6f4RQGo6w2rq4i0wmBhsYj5WICioauNkpbU7zlrCNR4PTzqejCpsVph2J6SdBXWS7
	zxHMr6jeeOZR45KFQgQ==
X-Google-Smtp-Source: AGHT+IEN8EyAm6HiQOmkNzoBID3Iz7MfR/Y4bh9c/NvPj/mWUhtglKa6QcxXRCUxsSuVY8dqUvWTzCONPA==
X-Received: by 2002:a05:6870:968c:b0:22e:ddcb:b525 with SMTP id o12-20020a056870968c00b0022eddcbb525mr11276oaq.6.1712768642334;
        Wed, 10 Apr 2024 10:04:02 -0700 (PDT)
Date: Wed, 10 Apr 2024 10:04:02 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <8d8f6c32-47d7-4816-8c07-14ea8fb4f9a3n@googlegroups.com>
In-Reply-To: <752adcda-5d87-4ef4-9227-059adfd11fd4n@googlegroups.com>
References: <1e55fc75-1179-4654-befc-ce98eef2a754n@googlegroups.com>
 <752adcda-5d87-4ef4-9227-059adfd11fd4n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7690_75083384.1712768642073"
Subject: [oss-security] Fwd: Node.js security update for all active relesae lines, April 9
 2024

------=_Part_7690_75083384.1712768642073
Content-Type: multipart/alternative; 
	boundary="----=_Part_7691_191240717.1712768642073"

------=_Part_7691_191240717.1712768642073
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: quarta-feira, 10 de abril de 2024 =C3=A0s 14:03:54 UTC-3
Assunto: Re: Node.js security update for all active relesae lines, April 9=
=20
2024
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The planned security releases are now available. You can read more about=20
the details at=20
https://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2
Em quinta-feira, 4 de abril de 2024 =C3=A0s 17:22:26 UTC-3, Rafael Gonzaga=
=20
escreveu:

The Node.js project will release new versions of all supported release=20
lines on or shortly after Tuesday April 9th 2024. For more information see:=
=20
https://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2


------=_Part_7691_191240717.1712768642073
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: quarta-feira, 10 de abril de 2024 =C3=A0s 14:03:54 UTC-3<br =
/>Assunto: Re: Node.js security update for all active relesae lines, April =
9 2024<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups=
.com&gt;</span><br /></div><br /><br />The planned security releases are no=
w available. You can read more about the details at=C2=A0<a href=3D"https:/=
/nodejs.org/en/blog/vulnerability/april-2024-security-releases-2" target=3D=
"_blank" rel=3D"nofollow">https://nodejs.org/en/blog/vulnerability/april-20=
24-security-releases-2</a><div><div dir=3D"auto">Em quinta-feira, 4 de abri=
l de 2024 =C3=A0s 17:22:26 UTC-3, Rafael Gonzaga escreveu:<br /></div><bloc=
kquote style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, =
204, 204); padding-left: 1ex;">The Node.js project will release new version=
s of all supported release lines on or shortly after Tuesday April 9th 2024=
. For more information see: <a href=3D"https://nodejs.org/en/blog/vulnerabi=
lity/april-2024-security-releases-2" rel=3D"nofollow" target=3D"_blank">htt=
ps://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2</a></b=
lockquote></div></div>=

------=_Part_7691_191240717.1712768642073--

------=_Part_7690_75083384.1712768642073--
