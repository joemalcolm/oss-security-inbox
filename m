Received: (qmail 13495 invoked by uid 550); 14 Jun 2023 11:40:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7296 invoked from network); 14 Jun 2023 07:43:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nearform.com;
 h=content-type:content-type:date:date:from:from:in-reply-to:in-reply-to:message-id:message-id:mime-version:mime-version:references:references:subject:subject:to:to;
 s=selector-1636637189; bh=/mRGits6Aji8mWhieU2hUL5Tjfeky9tWav2xP6TbMDQ=;
 b=hMKNtx2butYxExkkQykn5EUchZTjP926XIJqM2iOjnsCK9XUmLULhgaWzZ0SCQtMN5RtmjLz/RTnooQR/Z6n771xuVq28JjcJ9tQvyjLkWoEGqhwHy7Y+R7P5ymSR5jYtbHaor5MqOaKieIUotUtXJeNmlUR1slJlHUzCrpERIb3UMYbJpMzzfjiezc+U/TGLSmLChojQMHD3n4598lN1WRA1iyYYkasVpjC5/UZlqv+4SMNOkjXBwP7jS6NFOVBckmKkO0J/lQUw3XHpzFKwPZdytqbwCQqpA6rVhWmlIOawG9Qc/TXnbQE35mMuAhFDfDOV+5XzgSDgXLy+5uYvQ==
X-MDID: 1686672584-IGJBp5j0qlLB
Resent-From: "Proofpoint Essentials" <do-not-reply@proofpointessentials.com>
Resent-To: <oss-security@lists.openwall.com>
Resent-Date: Tue, 13 Jun 2023 16:09:44 +0000 (UTC)
Resent-Message-ID: <IGJBp5j0qlLB-C4YkUZpkIbW0@eu1-mdac18-17.fra.mdlocal>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nearform.com; s=gmail; t=1686672582; x=1689264582;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/mRGits6Aji8mWhieU2hUL5Tjfeky9tWav2xP6TbMDQ=;
        b=DoonjYkq6lCJ221MPYv8XrysVRJ75DMSBcbcGtedywVispSg7Eb1wN/UBFBLcOT4+A
         jCDN1eHkotzBVhrXMJtrzpRztNNHysLiDH7gWcYYEHJF5Gq4SkuUb/ThYYUPEYPk0gZT
         EZHdShIXQQKhAsRPJ/z14j1FDz9KVXWBmWQ2YY35NRioJL5ZU1+ktP82ToEkLSC2cvrv
         OA5BiUBkT2LjGDOAy4LVRnkcK9/f0LWl7g3mJn/rTGTGzYDiCWa4iEx8Dad3JyH9jhqy
         7OrnZh2CHRMMKp2Rag1ZLKsx/Ua1RlpM2Nac43qYL3x3ZCRJfLme2zymM1ui71TgrL4g
         IByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686672582; x=1689264582;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/mRGits6Aji8mWhieU2hUL5Tjfeky9tWav2xP6TbMDQ=;
        b=Znj+vUkgPZmHuB721jUvJZ6a/omCeI6dHZHG999DuGcFeqFHpy/LRBX4e1ZeW8pVCU
         qgHj56z6ZuDjoMLqjADy7tOfVsXXDoLQrayhoiWVNvns8WMOra0xIWJnCOkVhdQ5tfXH
         f3JR3Uz9F3r62x2RQwhu9ZLJobGSQTg6/is2qhxkRngKx4opo1EZreAyJ3q2+6FLBw38
         uX+8tZY/5oZaH9gMRnFWbINAN50qklEtZ+uR4UQ+hNucdsH1zt6nY24VEYy3dJMLNIQt
         uJHSa58+3OMBAj499gOwzbEKqoXGfVcgyqfRAcwYgLnpEYDnxEoBbW/TpiQN7euiSP9E
         LaiA==
X-Gm-Message-State: AC+VfDwM2TliKZkbKTcr3+uDNctNKoqEsy6SoimYaVHkeh+qR2O4SgOb
	2coanRJlkW7Y7cwoMvD5oDrQi9oj3fRbQW+/8zH9ioCStHLb3XV/aXF4TC6OQrcNxKA+H0lx+io
	PGaN5kPXyP9oqhIl9osaLKe9UY1hf537ygHtZzYeq2nPUPbUz4xDH+1goQUEsEsym
X-Received: by 2002:a05:6870:98ab:b0:1a6:cab3:63c with SMTP id eg43-20020a05687098ab00b001a6cab3063cmr214622oab.0.1686672582455;
        Tue, 13 Jun 2023 09:09:42 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5TuX2Hs2E7nKkpmfEHDQBEDZE2VOIba0j8gAOii6SFAHlh1JoC8uOJBYdKgnXpIu2yWWsRhwuYlw==
X-Received: by 2002:a05:6870:98ab:b0:1a6:cab3:63c with SMTP id eg43-20020a05687098ab00b001a6cab3063cmr214617oab.0.1686672582089;
        Tue, 13 Jun 2023 09:09:42 -0700 (PDT)
Date: Tue, 13 Jun 2023 09:09:41 -0700 (PDT)
From: Rafael Silva <rafael.silva@nearform.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <c09c0064-a676-421e-80d7-1436aae88c4fn@googlegroups.com>
In-Reply-To: <6af65e69-2816-4cb7-8b28-16529f96e516n@googlegroups.com>
References: <6af65e69-2816-4cb7-8b28-16529f96e516n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_48711_1623672586.1686672581898"
X-MDID-O:
 eu1;fra;1686672584;IGJBp5j0qlLB;<rafael.silva@nearform.com>;11bfa6aa9c040cf23bc591a6d91f8f65
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, June
 2023

------=_Part_48711_1623672586.1686672581898
Content-Type: multipart/alternative; 
	boundary="----=_Part_48712_470318757.1686672581898"

------=_Part_48712_470318757.1686672581898
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Forwarded message ---------
From: Rafael Silva <rafael.silva@nearform.com>
Date: Tuesday, June 13, 2023 at 1:06:55=E2=80=AFPM UTC-3
Subject: Node.js security updates for all active release lines, June 2023
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after Tuesday, February 20th 2023. For more information=
=20
see: https://nodejs.org/en/blog/vulnerability/june-2023-security-releases/

------=_Part_48712_470318757.1686672581898
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Forwarded message ---------<b=
r />From: <span dir=3D"auto">Rafael Silva &lt;rafael.silva@nearform.com&gt;=
</span><br />Date: Tuesday, June 13, 2023 at 1:06:55=E2=80=AFPM UTC-3<br />=
Subject: Node.js security updates for all active release lines, June 2023<b=
r />To: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;</=
span><br /></div><br /><br />The Node.js project will release new versions =
of all supported release lines on or shortly after Tuesday, February 20th 2=
023. For more information see: <a href=3D"https://nodejs.org/en/blog/vulner=
ability/june-2023-security-releases/" target=3D"_blank" rel=3D"nofollow">ht=
tps://nodejs.org/en/blog/vulnerability/june-2023-security-releases/</a><br =
/></div>=

------=_Part_48712_470318757.1686672581898--

------=_Part_48711_1623672586.1686672581898--
