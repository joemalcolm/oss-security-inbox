Received: (qmail 28034 invoked by uid 550); 2 Nov 2022 10:13:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20066 invoked from network); 1 Nov 2022 22:38:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zG7M/omMc3+AFroPqBHBJJrQuj8nbNupsdXjphXISJg=;
        b=fL5wHaGtXtokxyjywNWkhqSvd3Z0M/NNGa5syaUktt/Iig/Fp3ha8Yx2PZ2Exd0UL4
         yAviwk2lg/X/EhzPJZmbWax1DJk6KtYzX3SXwMLH0USz2HmQS2R9dunF6mjJT1ce7IiK
         rAsBiUK3zeu92pQ9LeycFwQYYY3FQMLLOUAcgC14Pid7f6F5pio5rqkMWvmZA9n648Yf
         VFYLrTSneellcmHovbbrFgqTgqyUWouDbmd/9XoGJAMjbJM605HNy4NSk8RCrBNix2lY
         mi2B34klkDkWqzNb9Yk806q0GhFwviNPUZA2NuiqvsR1spxB70JhXOJNsLsj6s7IANLl
         euYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zG7M/omMc3+AFroPqBHBJJrQuj8nbNupsdXjphXISJg=;
        b=DzJMYGLFJH548iNAoaVQSW1NhRcydGhZgCTQNkW/bpf/UPGZ6JB7XPuQNT/AIHAQlc
         NUmh9XLAoeYjkNUSG356Anrg/Xwm6y3yEuC4g2YrGOVCSTOkW5FwPgurOrD/Bpk5Z6Ml
         lbkWqQzc9aaB9ausLr0yaQXYL8SZtR+zNJwzbtvzHVFHxjqMCPSNrXFVBzHIaJ2CYB8M
         wWcJD9JwrrwRE7fNYI+7gOl8igQgFoF0FemmUEMDO5BifBg9e/CUCtSrYoQyxaadbK+v
         ciUwuNMawSgXM71rjAS0nAkbvn68qxNF9U3HALHS2E5WgiDKTE4INqozTesA5kD6Xy+W
         hIow==
X-Gm-Message-State: ACrzQf396kHVTNJWUZ5JorjgCCs0wOjucsQhYEN+Y8smzL0xtSkGGT2p
	BDLSUdxPm4ams/FiZaUUh2gfIq6pfg==
X-Google-Smtp-Source: AMsMyM72aH/b4KMh6zkupS7RpSgCCVGHTWi3cEggV70g8Xc1ioBX84LglHRUyQx4ByvCC6PtsL3Da0tsbw==
X-Received: by 2002:a05:6214:b62:b0:4bb:9c0f:e923 with SMTP id ey2-20020a0562140b6200b004bb9c0fe923mr18188995qvb.102.1667342314373;
        Tue, 01 Nov 2022 15:38:34 -0700 (PDT)
Date: Tue, 1 Nov 2022 15:38:34 -0700 (PDT)
From: "soyjuanarbol@gmail.com" <soyjuanarbol@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <80a06f61-9ae0-402e-9db2-63cc3a79dc64n@googlegroups.com>
In-Reply-To: <0f038d9f-d6a6-41d4-9e80-c2d18ec179edn@googlegroups.com>
References: <0f038d9f-d6a6-41d4-9e80-c2d18ec179edn@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_496_228552315.1667342314170"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines,
 November 2022

------=_Part_496_228552315.1667342314170
Content-Type: multipart/alternative; 
	boundary="----=_Part_497_1778742949.1667342314170"

------=_Part_497_1778742949.1667342314170
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: soyjuanarbol@gmail.com <soyjuanarbol@gmail.com>
Date: Tuesday, November 1, 2022 at 5:37:56 PM UTC-5
Subject: Node.js security updates for all active release lines, November 
2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release 
lines on or shortly after Thursday, 3rd of November, 2022
For more information see: 
https://nodejs.org/en/blog/vulnerability/november-2022-security-releases/

------=_Part_497_1778742949.1667342314170
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">-=
--------- Forwarded message ---------<br>From: <span dir=3D"auto">soyjuanar=
bol@gmail.com &lt;soyjuanarbol@gmail.com&gt;</span><br>Date: Tuesday, Novem=
ber 1, 2022 at 5:37:56 PM UTC-5<br>Subject: Node.js security updates for al=
l active release lines, November 2022<br>To: <span dir=3D"auto">nodejs-sec =
&lt;nodejs-sec@googlegroups.com&gt;</span><br></div><br><br><html-blob>The =
Node.js project will release new versions of all supported release lines on=
 or shortly after Thursday, 3rd of November, 2022<br>For more information s=
ee: <a href=3D"https://nodejs.org/en/blog/vulnerability/november-2022-secur=
ity-releases/" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"h=
ttps://www.google.com/url?hl=3Den&amp;q=3Dhttps://nodejs.org/en/blog/vulner=
ability/november-2022-security-releases/&amp;source=3Dgmail&amp;ust=3D16674=
28679467000&amp;usg=3DAOvVaw3P7qtSF8d3gWT6nt-TbC4D">https://nodejs.org/en/b=
log/vulnerability/november-2022-security-releases/</a><br></html-blob></div=
>=

------=_Part_497_1778742949.1667342314170--

------=_Part_496_228552315.1667342314170--
