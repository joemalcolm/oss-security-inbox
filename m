Received: (qmail 29755 invoked by uid 550); 22 Aug 2023 19:54:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17450 invoked from network); 22 Aug 2023 08:07:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692691652; x=1693296452;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TEn3b12zxBO3tCWYK7rd3VZ4otirDFYwtnMU9aZCso0=;
        b=Py1i4aCgx0rOG3DD7E6ZYmi+ZnAHedksoAhi1OHjzurRIik5ILrStsm7S46LZyY5XE
         9x6fHYOX0g/oBEPYBrxC9zYuZpGlzBNZC0B0IIw5haX7tgV0XyhySn4U5E4AzUwZzSuq
         qFIV2dtda8y4JeJ2PWEglJvOElpd2u81okwBPtagLmNHJNo2M1z8c2GtBGQ4FmQ7mbYA
         6CWBssFdv7RQgfT+v2ESmFr730n4UrsxHa4C44jgQVVpMIqFHupWOcNVAsZJuT9rPv5x
         q/NwrmezKeZEBWDXORhggoQnSIDN3umIHDOqZYE1bY6HOY6w8gf7jcU6xJQ6LJ19NSfb
         vRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692691652; x=1693296452;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TEn3b12zxBO3tCWYK7rd3VZ4otirDFYwtnMU9aZCso0=;
        b=HUhkGxvPF+amQWZ2M4B6yj/2AsiYTdKdm+LjsLIeu7Q2jytkXrFWn1rShfyKt82yLO
         9djgjJOtkbYULBKMDfaZL6aH43Y5RxuPEZ037Lw0HN1/DSxeXhWzOkiGgFogWyS38spW
         iWxoI2jSzIXDO4AHFBQ4SfcAsmb4g51hXBjoAMhJtXHBYIpAWJpTj+U/c+oxDY8uNLwA
         m+pc3xE9BSj4stg1RRzB9V/KKd0hFsodR8xhmGMaXnKdPQl+rEz/oi7c5Ok0xpWRIHJT
         j5vneVOFNtqu7/3lyqovR7cG+7GQcnaTEMZ78SpVgeZnU5jpGPWbdE3En+oIG+6ggqjY
         vo2A==
X-Gm-Message-State: AOJu0YyDLMjt3LrBvppmuGAmKmdkBicaomh4LqSsAYZ7Drsg3YAUh6Gg
	zUZdXrv6oagfnAVa3vMay+lmNj+TstBTHQXxc8k=
X-Google-Smtp-Source: AGHT+IEoPgTnpLd+L+m8cADZPjc+7gnSNRiSBk2jM3xwzzrg4GMyVgqxq18BKo18rc+h25oZxFf6xIOin7nqrspzO/k=
X-Received: by 2002:a05:6102:412:b0:445:202:d278 with SMTP id
 d18-20020a056102041200b004450202d278mr3144551vsq.32.1692691652305; Tue, 22
 Aug 2023 01:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <001501d9d4ce$bd31a880$3794f980$@gmail.com>
In-Reply-To: <001501d9d4ce$bd31a880$3794f980$@gmail.com>
From: Nbxiglk <fibr3s@gmail.com>
Date: Tue, 22 Aug 2023 16:07:16 +0800
Message-ID: <CANQTYRkmodXOwJNCV=gBLOG-usBYxdr1zQdEuQmUSp_1C2Yz=w@mail.gmail.com>
To: Simon Steiner <simonsteiner1984@gmail.com>
Cc: general@xmlgraphics.apache.org, batik-dev@xmlgraphics.apache.org, 
	batik-users@xmlgraphics.apache.org, 
	Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a6690d06037e7ccb"
Subject: [oss-security] Re: [CVE-2022-44729] Apache Batik information disclosure vulnerability

--000000000000a6690d06037e7ccb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi=EF=BC=8CThe vuln type inside the email seems to be incorrect, it should =
be SSRF=E3=80=82

Simon Steiner <simonsteiner1984@gmail.com> =E4=BA=8E2023=E5=B9=B48=E6=9C=88=
22=E6=97=A5=E5=91=A8=E4=BA=8C 16:00=E5=86=99=E9=81=93=EF=BC=9A

> CVE-2022-44729:
>         Apache Batik information disclosure vulnerability
>
> Severity:
>         Medium
>
> Vendor:
>         The Apache Software Foundation
>
> Versions Affected:
>         Batik 1.0 - 1.16
>
> Description:
>         Block loading external resource by default
>
> Mitigation:
>         Users should upgrade to Batik 1.17
>
> Credit:
>         This issue was independently reported by nbxiglk
>
> References:
>         http://xmlgraphics.apache.org/security.html
>         https://issues.apache.org/jira/browse/BATIK-1349
>
> The Apache XML Graphics team.
>
>
>
>
>

--000000000000a6690d06037e7ccb--
