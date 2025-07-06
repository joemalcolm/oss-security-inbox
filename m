Received: (qmail 32738 invoked by uid 550); 7 Jul 2025 09:47:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11622 invoked from network); 6 Jul 2025 13:58:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751810319; x=1752415119; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ASSHboFZhPuihy16V5pfhaerBGtIPZHgBNZxlvx/G0s=;
        b=nYDWHrntxj4iW5T7FayX2N1YTx6ZiL5edTSfVC6DH5gOM1s1Fz/a0G5jDgdF7gKQcy
         XfnDUiRAV2CWo25YpmSapXN7eO5yZAUgRu4wGmRexYIpeXrIcGabKSWsdiaZJ2MJ+OcB
         POKTA/xao90nkEeDtsED8yjfrmyX5NR0d0c7b41UNBYUG6jyGipwTaqw7ZGu8+cRktDI
         OluJOa1VGpDXUnRVg9db6qNUVcHePqDf3rkop4rkO9krvkBx9MFfw0PU5sxXsKpiXKU3
         WehYApDYcgRGPZBNr98y3l6HCN0Fz1hEMKWIsdMEoL8FcCPidWVrUshw9tremqk1aQ2n
         FCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751810319; x=1752415119;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ASSHboFZhPuihy16V5pfhaerBGtIPZHgBNZxlvx/G0s=;
        b=r0lOohsuFWIZhSJMq7L7CXPT8Lv/JeS81UpYZxRFqvazh3MRlhgKYA01ewUs7z4MsC
         r1IPzo8Tuk1XEuhJNvZ7FO/MkUy+c4aDE4TpOpRseSe4FEqdpFkURw1SLcHPa0PnonhN
         t4jtMIyn2OTBAlXCEitEUxg1M/NS5suiaB7/PdPPfreOyIce/fzziU900y/QvQM5dNPB
         4oOVlmxvBVQ4LmkZey96y01M08o/jzP85pDIzi/iQU1yAkoI4wh01swji6JQXjJOgTEh
         HAdhNAoM2d7MyQAT3hCXdE+ZZmQGHuKv8BXhRhbUEVrzulfRTRKCRtKc/Z1Igs2QeA6L
         MMfA==
X-Gm-Message-State: AOJu0Yw7iFKcw3Ln8Ia/hN8el/Ps/RO3TaZawtmyhkYfj6Q/Aumt7dRY
	s8ShJlPxjqe+VsEOXPXk+8se7C/HNPqLn/i3Y87P3TyYQaK4JcmYXQaRXiRsNjLTvm77w3BTO03
	S1BNqxVQLY3loWpzaD9IGRGsbs+DZAsk=
X-Gm-Gg: ASbGncu1L926884ZnReo/7qArJo1vjJtSMHdFOnyxSgQTwISgwrfxbPXpx/qAc55Ry0
	5DISeRJ5cOqDd+2f1Op3W53KNpnwxH7WWnFUeHq8TZhRuEVxls4fIkUrPYx2WYFPP15uWv7uo9D
	U8HGk/GpKbbLo4xSgTBtY3VUy3DqJea4J5mGmgDyQg/0uA2Q==
X-Google-Smtp-Source: AGHT+IG7f+VXK/zYPiLWkPefTUu/YUt7ncFkWRXx2sqmeyTQCdGud2mNvr6ryBPyUN2S/OXewqNNP4OsMpxcGYd45es=
X-Received: by 2002:a05:6512:159f:b0:553:cfa8:dd25 with SMTP id
 2adb3069b0e04-557a1421ac2mr2691780e87.3.1751810318829; Sun, 06 Jul 2025
 06:58:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKzgDd0uOByqN49wgrb0BXfAZcqCzm7_Sb8CSH2qY-BQBXsYEQ@mail.gmail.com>
In-Reply-To: <CAKzgDd0uOByqN49wgrb0BXfAZcqCzm7_Sb8CSH2qY-BQBXsYEQ@mail.gmail.com>
From: Cuong Duy <duycuong200798@gmail.com>
Date: Sun, 6 Jul 2025 22:58:27 +0900
X-Gm-Features: Ac12FXzq2tSbsN4St3G2e7IsWJsXvDMNsnhJJ9GIy1Os4UWbkELPvsHS5DGNDik
Message-ID: <CALoKeQ8dLkkx+oUnNuZ3D1-=1HRERpozAQxFDCFXQOqOS=JfwQ@mail.gmail.com>
To: dev@apisix.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c48fc90639431ff0"
Subject: [oss-security] Re: CVE-2025-27446: Apache APISIX Java Plugin Runner: Local listening
 file permissions in APISIX plugin runner allow a local attacker to elevate privileges

--000000000000c48fc90639431ff0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

V=C3=A0o CN, 6 thg 7, 2025 l=C3=BAc 12:37 YuanSheng Wang <membphis@apache.o=
rg> =C4=91=C3=A3
vi=E1=BA=BFt:

> Severity: low
>
> Affected versions:
>
> - Apache APISIX Java Plugin Runner
> (org.apache.apisix:apisix-plugin-runner) 0.2.0 through 0.5.0
>
> Description:
>
> Incorrect Permission Assignment for Critical Resource vulnerability in
> Apache APISIX(java-plugin-runner).
>
> Local listening file permissions in APISIX plugin runner allow a local
> attacker to elevate privileges.
> This issue affects Apache APISIX(java-plugin-runner): from 0.2.0 through
> 0.5.0.
>
> Users are recommended to upgrade to version 0.6.0 or higher, which
> fixes the issue.
>
> Credit:
>
> Benoit TELLIER (reporter)
>
> References:
> https://apisix.apache.orghttps://www.cve.org/CVERecord?id=3DCVE-2025-27446
>
>
> --
>
> *MembPhis*
> My GitHub: https://github.com/membphis
> Apache APISIX: https://github.com/apache/apisix
>

--000000000000c48fc90639431ff0--
