Received: (qmail 19887 invoked by uid 550); 4 Apr 2024 20:30:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28159 invoked from network); 4 Apr 2024 20:22:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rafaelgss.dev; s=google; t=1712262164; x=1712866964; darn=lists.openwall.com;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IztCfD8TqqaFh+I7B2/x0e8q3hSrsGJfKILk0RbPqWU=;
        b=WUiTyaY8qPN5fEJYT0E+BD/MUjKraxkcTAHaaUtcuC09FqkyJoVjZ4Y+fwHABQrCRp
         E1LiKYXLyRtiNX+S4QFi/1V1gp/f7giAzW8FppBBSaWbMWHsRfvS2yGpfKf2RXVH6rqO
         KOcaNaFlBOVa2wiNGPJhIw/A21qCYqJSysLKTAlCvBEzCdIgexqY7wW827zOnk7rnca6
         BBy3KvhU5VLvITOTE0l0sT7I3G7r/YR6xN6lO4035IahuodwpQOD9awSDyvRaesxeBcO
         iUhBMis1WTSbag2d8VJl90gpc+XTwJ+vce9oh0pJyq7EsET0YEtjZV892d6/hheYw0hG
         9guw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712262164; x=1712866964;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IztCfD8TqqaFh+I7B2/x0e8q3hSrsGJfKILk0RbPqWU=;
        b=A904c6HMevUZ9mGkNkhguH7VDkEEKiH1EeCeOEbSW4ihMfyjRKjCndlEJgBgJJAB8N
         dGdFp/wzIDMrgThsSAlYhDsdN3ONgGH1e4FhL53px9MmM9DBYHhALEcHiyZvHwZeZZzG
         +zq8ONXaaLj1YUC9G5bjEFz1Xlnn3FsZGLtxos56O3roe5qRz35ftxKM4yxuomaRdWzD
         0ewR2PMrZg9egBxYJuR/9uhJC233AGG8oQReY0dLiiYxVm0ioLpPfx0eOM78DJp3xLxY
         v3HgTqU1Vg+cyenN1U2bCENVIkedMYzILROofdXlTvp8fihhUi66UWUrn6JgB5iGwCWZ
         ebZQ==
X-Gm-Message-State: AOJu0YyoUwCynOuHHa5We1ozo7GSOM08kXuwkg9VCRmqbrLT5HtBme5Q
	9r8hzYzQYGVaNIsnrDTebGSaxS6BJkYCRfY6pMILIqi6g0aEVoGkFi0hiwGRNIGyMjo19G/4UPT
	mqc0gbf+SExEzkmUSXw==
X-Google-Smtp-Source: AGHT+IFT3oktOsHXbos/SiB/7E809YC6z7u5KjlNX/c8sG+/wwbNY2mMwoRgNl9BAOd6aut2cK5TV4ddrA==
X-Received: by 2002:a05:6830:71a8:b0:6e8:2a24:8786 with SMTP id el40-20020a05683071a800b006e82a248786mr28095otb.4.1712262163634;
        Thu, 04 Apr 2024 13:22:43 -0700 (PDT)
Date: Thu, 4 Apr 2024 13:22:43 -0700 (PDT)
From: Rafael Gonzaga <work@rafaelgss.dev>
To:  <oss-security@lists.openwall.com>
Message-Id: <edcc9b93-6d1a-47a4-bb0b-701a3c7eef28n@googlegroups.com>
In-Reply-To: <1e55fc75-1179-4654-befc-ce98eef2a754n@googlegroups.com>
References: <1e55fc75-1179-4654-befc-ce98eef2a754n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1488_1950417281.1712262163412"
Subject: [oss-security] Fwd: Node.js security update for all active relesae lines, April 9
 2024

------=_Part_1488_1950417281.1712262163412
Content-Type: multipart/alternative; 
	boundary="----=_Part_1489_1041978308.1712262163412"

------=_Part_1489_1041978308.1712262163412
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Mensagem encaminhada ---------
De: Rafael Gonzaga <work@rafaelgss.dev>
Data: quinta-feira, 4 de abril de 2024 =C3=A0s 17:22:26 UTC-3
Assunto: Node.js security update for all active relesae lines, April 9 2024
Para: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after Tuesday April 9th 2024. For more information see:=
=20
https://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2

------=_Part_1489_1041978308.1712262163412
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Mensagem encaminhada --------=
-<br />De: <span dir=3D"auto">Rafael Gonzaga &lt;work@rafaelgss.dev&gt;</sp=
an><br />Data: quinta-feira, 4 de abril de 2024 =C3=A0s 17:22:26 UTC-3<br /=
>Assunto: Node.js security update for all active relesae lines, April 9 202=
4<br />Para: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&=
gt;</span><br /></div><br /><br />The Node.js project will release new vers=
ions of all supported release lines on or shortly after Tuesday April 9th 2=
024. For more information see: <a href=3D"https://nodejs.org/en/blog/vulner=
ability/april-2024-security-releases-2" target=3D"_blank" rel=3D"nofollow">=
https://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2</a>=
</div>=

------=_Part_1489_1041978308.1712262163412--

------=_Part_1488_1950417281.1712262163412--
