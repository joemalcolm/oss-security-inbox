Received: (qmail 3170 invoked by uid 550); 15 May 2025 17:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13654 invoked from network); 15 May 2025 14:59:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747321143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ba4A8lIe75AKtsbwhRsXw1cv1butHW0aUhFi7U5tRXM=;
	b=aG8CdGH1iX3pHn1aAJ1SnagP0YrBU5EdnUioFMHJmUU+1sSwNOCTEGytVpoTbgMCzG7lLN
	yTRYeTWZXsTDgmlMi1EzJ04VGqS5/GeJKo+yCiAqbOdVUuLNA/BYPSdmKj00a/sO3PnpmH
	altbrCXdc+L0YQXB9/hkRAkqPF7BAe8=
X-MC-Unique: lY3TskopMuqmoOA9ijs5wA-1
X-Mimecast-MFC-AGG-ID: lY3TskopMuqmoOA9ijs5wA_1747321141
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747321141; x=1747925941;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ba4A8lIe75AKtsbwhRsXw1cv1butHW0aUhFi7U5tRXM=;
        b=mJl9z5LkHL4fWzBLjXNwz30O1iunCKjT6fb9MQPdjH/KwasXHRgC5CNKOUywS0Gvix
         NQCfwapD7Jl6UXSJH5NAEHD3ECEKXtbKKUMsKFId08gNeNCpdSkzZqC2x0iSQLzcIbHm
         VbIZ+ifmLImt+bCtVZmRa0i4D+5o76eOikseMQK9kKn2SLVJwkJLVlAol1CnFgxEEjvB
         vaSVt2MynmKBKZ2UQvx9+lDrP/aRV5XQY/CmPE70FogEvorvCVwYlC+LosxKNOoYbOF+
         hSBNquDveJp952RAfyd2MfWkj+SpsLyJ8bbC/zywQ9Aqxa/vPQorwqjuR+UiX9HuaL7d
         emyg==
X-Gm-Message-State: AOJu0YzRpeXjsU9p4waj/ffdKQINpjR8YEu6usnnjz2u573XIbutjiD4
	q7d6vUoV6ANT43dP3HKcZXEijkq7v0evxYskkUhBQJ7HLg1IrDdjUOFG2KPgEHZF/2v7Ml0gAEd
	+TGKxbFMHYczAFkc5p2c2AiAWt2o3Nbjk7Ady1pJ1UIzZCwUdkoC+s1Odf/vx8J9kdPkCZ8Q8iS
	EXcwKOdH5OsjXtyJlzbqzT3UNsU86aS7qDQ28wsrZJljAxwIDeK7VJ
X-Gm-Gg: ASbGncspvijU4fU+FS9OUuYcsqh/i5/za0nX25GnL0gpFKD3f8nSxbzQBSolzMXyXd/
	irMZeLYTMehAPyNa0KU42WX5RT168ZxmErlCJXDVO/ZKS11LJC1ix0/hNFM3ZXEycax2o
X-Received: by 2002:a05:690c:6c91:b0:6f9:c8d9:50f with SMTP id 00721157ae682-70c8fcf7a06mr57124617b3.2.1747321140817;
        Thu, 15 May 2025 07:59:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9iGDY/DDEWv+Qi3VvVktI+da1bAg6CsWuX+RzVLL9Wqj+1Tl5kJ/+8SLLFFM/Mz9Wllz0vkubG6CnH3AI3sw=
X-Received: by 2002:a05:690c:6c91:b0:6f9:c8d9:50f with SMTP id
 00721157ae682-70c8fcf7a06mr57124027b3.2.1747321140196; Thu, 15 May 2025
 07:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
 <14ea0e60-36d4-4267-8614-3d6b455b7fabn@googlegroups.com> <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
 <ea9fe7af-8b48-429f-8256-c0e378cbcf6en@googlegroups.com>
In-Reply-To: <ea9fe7af-8b48-429f-8256-c0e378cbcf6en@googlegroups.com>
From: Yogesh Mittal <ymittal@redhat.com>
Date: Thu, 15 May 2025 20:28:49 +0530
X-Gm-Features: AX0GCFtyQyhuLtYEyFCvPpg2lgQoLu8HV5dOfnL38cv974PlpMCbI4XIju0l1UM
Message-ID: <CAJvML34eyD+rKJPtqzwUQZw93pD_uAF4xj5hfHC_6HKFD-wXYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dOlwBVT147sl8jtoeNjCzYou9SBShPEYFARCQExsr2o_1747321141
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000ded73406352de731"
Subject: Re: [oss-security] Fwd: Node.js security updates for all active
 release lines, May 2025

--000000000000ded73406352de731
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rafael

Could you please get those CVE's published to MITRE as well. The cve.org
portal shows their status as "Reserved".

Thanks in advance.

Thanks and regards,

Yogesh Mittal

Manager, Product Security Vulnerability Management

Red Hat Pune <https://www.redhat.com/>

ymittal@redhat.com
M: +91-9637123455


<https://www.redhat.com/>


On Thu, May 15, 2025 at 4:41=E2=80=AFAM Rafael Gonzaga <work@rafaelgss.dev>=
 wrote:

>
>
> ---------- Mensagem encaminhada ---------
> De: Rafael Gonzaga <work@rafaelgss.dev>
> Data: quarta-feira, 14 de maio de 2025 =C3=A0s 18:47:12 UTC-3
> Assunto: Re: Node.js security updates for all active release lines, May
> 2025
> Para: nodejs-sec <nodejs-sec@googlegroups.com>
>
>
> The planned security releases are now available. You can read more about
> the details at
> https://nodejs.org/en/blog/vulnerability/may-2025-security-releases
>
> Em quinta-feira, 8 de maio de 2025 =C3=A0s 15:43:48 UTC-3, Rafael Gonzaga
> escreveu:
>
> The Node.js security release will happen on or shortly after May 14th 202=
5*
>
> Em quinta-feira, 8 de maio de 2025 =C3=A0s 15:42:50 UTC-3, Rafael Gonzaga
> escreveu:
>
> The Node.js project will release new versions of all supported release
> lines on or shortly after May 14th, 2024
>
> For more information, see:
> https://nodejs.org/en/blog/vulnerability/may-2025-security-releases
>
>

--000000000000ded73406352de731--

