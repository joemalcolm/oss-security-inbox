Received: (qmail 5376 invoked by uid 550); 24 Apr 2025 16:14:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15785 invoked from network); 24 Apr 2025 07:10:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745478598; x=1746083398; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XHZMGINs3zKnFywZWUq/DaPywnnjyN6OP0fjiD8ca5c=;
        b=csBZQsyXzUHyV7S6gzdmqf6edItRHQ9Ne9BsBFlxjThjvEluA8zNeXvXAMLRw81PmM
         BFLsPVmCcEEjKJCfWF0fje/xvp5nsbPWf1fVtXlG6pYXXAdS92wFIqEZeFrmqtmgTWVF
         tRLBhh91w7dcg55KJqDuXOJ/OYoq/vfW9b4HekJ6ucf8XbNuTHHouzMMPJ2zHWZVtzUA
         112xNdTvMka5EKM6flbng+7b91ejTVMudanCyXO4vxv6li7B/+tz/eVyLg1wPFMdDTub
         l2/0BvOTNvU3QereO0musd5TTJ7Iw3I+s0CYMHMIcnC58xZwGr14GeQTHJAhaPEGVYob
         E64A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745478598; x=1746083398;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XHZMGINs3zKnFywZWUq/DaPywnnjyN6OP0fjiD8ca5c=;
        b=Dgb4AIyxyvu6fdAILWz9Mnvw5NcxPeJNEy5iA9PNbzaib3SZcazgbeQuSRKiMZB+PN
         zVDGger36XvgfVkJNGa8RLFw9OSSFCga5zTwfa0rLAmHROqU9AgMZj5uXoxaz4pm6Jbd
         5zM0kJdO4Qq0AJy+i1f2MBmrqKjauF7L94foR/sNe9O3wWuVK4aoPWQdBfoqY98SEEvX
         TJI/bZdwp0IkNXjPUIaGR9iIMSrqy0tJVzBJTb34TnotDF+swWLQcJVkYRlKn3fDznMv
         ONHGvQDh+54MIXboBObNoKFgrUUWya8LesuQrmqAkWB+c3Zl71LGdawNmVilG1odA04Y
         yOTw==
X-Gm-Message-State: AOJu0Yx8sdCax2++VKKZmKUdNK9cx2P5FSgL5RnIkT60Ly4WzeEODppX
	OfErQ84dGhOYPHEu/nshfVg2j9kzEa/qk4z52CTwH4FwwrE62p0oL2ynooicqi5xQPo2bhh2VdK
	hih/t9hMRFAWQR9AX+2bbzMiv2ynRIaDya6k=
X-Gm-Gg: ASbGncu1qKaspFrSKcXcTt/RF27DVWgf6DceMPEFk4Xg4hPbR0vfTG/unsQDeHKTh/C
	4byeEgCRWzTrk1F6e9EMKkNOzaCw5w/qssC5Mk+YbER2teyFT6MY2xWRAx89++bzez/dO4krsR5
	Mx0W5Qlm8JV/Uk3//3aENd
X-Google-Smtp-Source: AGHT+IFx2ERwIHB1ILuULkWoBsZp1SMxS/Ch1gwSG4NlvhfTdSWkTzfbog3DkHml5KdMA4fDks7M4ztflBlKfzI1Cp0=
X-Received: by 2002:a17:907:3f8f:b0:abf:6aa4:924c with SMTP id
 a640c23a62f3a-ace5727184emr146487666b.17.1745478597832; Thu, 24 Apr 2025
 00:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
 <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de> <aAlSF2Z3LlN-avD6@eldamar.lan>
In-Reply-To: <aAlSF2Z3LlN-avD6@eldamar.lan>
From: Albert Veli <albert.veli@gmail.com>
Date: Thu, 24 Apr 2025 09:09:45 +0200
X-Gm-Features: ATxdqUFE3J5LK5sP53n5dQgLAXPqg-Hdlt7EOaCAlGpIQ2cx0sp3btES4NLCYGI
Message-ID: <CAEo4CeMgzPGBc3KgijU6HLkUcj1kcQj=8_jGUWojZ7jBdgAWxA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c975f0063380e73b"
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

--000000000000c975f0063380e73b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 23, 2025 at 10:51=E2=80=AFPM Salvatore Bonaccorso <carnil@debia=
n.org>
wrote:

>
> FTR, this one has assigned CVE-2025-46394
> ...
> FTR, this one has CVE-2024-58251 assigned.

From what I can tell the latest release is busybox-1.37.0. Are these fixed
in this release? If not, do you have any link to patches I can apply to fix
these issues?

Regards,
Albert

--000000000000c975f0063380e73b--
