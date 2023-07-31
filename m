Received: (qmail 30427 invoked by uid 550); 8 Aug 2023 13:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1809 invoked from network); 8 Aug 2023 08:52:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nearform.com;
 h=content-type:content-type:date:date:from:from:in-reply-to:in-reply-to:message-id:message-id:mime-version:mime-version:references:references:subject:subject:to:to;
 s=selector-1636637189; bh=OdefCIz/lSDjzXAk/emTvlT1USYk6AQF7K3wGpY0Hbk=;
 b=2dnxDRr0G7dnRbgU8p3axB3ceWPAnSA5OE8aIQL5rlVqyRTSUGY4zTGwsYegHU0wQWWb3AhnOOjAYYvw2hn/5cPLi2EPCeiAQMm8Ic5DF+/5bM4NnS9J8zTeVH3pMmu3dWoXup976AFYu65qpAyZfGWCVFwZdem1pzDpmRmagZg25hMJyLEHFcSyfJcuTGbCCGCbQ6yEft9k0uC/2KLfQr8N6LYvhB2n+MBjJINbDS1R9puc6NiF33XdQ5h7nkt60j6U8/PVuGODwvMCCGQVRjNcfVqiVWR9RM+y0dLpvlsadV4c7doqMDmCzluWJfSnQ9IF6onkn5xsInQACB18iA==
X-MDID: 1690814970-xPTXDV4_fkIV
Resent-From: "Proofpoint Essentials" <do-not-reply@proofpointessentials.com>
Resent-To: <oss-security@lists.openwall.com>
Resent-Date: Mon, 31 Jul 2023 14:49:30 +0000 (UTC)
Resent-Message-ID: <xPTXDV4_fkIV-umz0c10qfBEw@eu1-mdac22-12.eu1.mdlocal>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nearform.com; s=gmail; t=1690814968; x=1691419768;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OdefCIz/lSDjzXAk/emTvlT1USYk6AQF7K3wGpY0Hbk=;
        b=f30Jmv4+vjGzlctdSG72wntAa4t/ZZ5X5WSyn8tcS5sgMmidmtGo/cm/lfTO7cwcaW
         N7XQZimoFsQykoSF0A3hoMrjfYDjHXxLJkW+0evpuVPQ0PyAowaXT2n0VYE50/TPaRp7
         s19U3xKXvJce+o6I4Y6vSG3mNhuv8eaXv16nfrcmSSabB8yE4Gxsngi/t94pAKi7vDWQ
         KUAjfxjGfWahMTghphM7tGkWwAPrX6UhNAATXQwXjoorg+ZL2awLfRQSBXzLq442OXY5
         RrLNBXQHp+60HKgXm5o8VQKz+TWl97tIW0N8gYtaaMtyff4ccEBlqM51M3aYOTrPoeVr
         Qt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690814968; x=1691419768;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OdefCIz/lSDjzXAk/emTvlT1USYk6AQF7K3wGpY0Hbk=;
        b=K2nyU8ihiGW4T6nmQV43+g/gUXOpYXYU0CMz8tLzOTQ3NZrlhV6kpMQLcv1FSUS4vu
         usFn1ijt3bTUe48j5EfKWVJ5l7cilPTSDeB1UDZnGdyMa39OTfl8WN6i/zom8k3J8q83
         jYWkxCitQhjs931nsyQYTBmfq9rVca68n8hyD01Q2z0zpU3oiZW4s+UmXi/m0FgaHc4u
         GQSSyb32UL2SivLPiAZdSwF5p36r8JwwiUbwThcHeBq4zzr79bxJYegnUYOu0Ub21Hth
         hqQCxBaKOYTp9Ehlh/TaI/jwXOyyS7q5pTdLOQcZ1Zoq55feHzgscNdNZNu+4C+XPbd9
         iSSw==
X-Gm-Message-State: ABy/qLbhoLVTpuqZCSZNAs4pqGTiaUBxPtd9G2nAJa2tHs9PwUNprBkW
	aLFJS/GS/Yz397JP8yCJx2Tx6Y9H+EY2fageRZsTGyTLMfojIj69w/Xt0EPXk/fHWSnjeBnw9YR
	qRHRQDBsRQRmttfLznlYGRMrIr/0k6km6oez1hSw0N4jC5XXRol0jraa+aRqmPZoH
X-Received: by 2002:a05:6870:3a29:b0:1bb:b8f0:5878 with SMTP id du41-20020a0568703a2900b001bbb8f05878mr12395622oab.5.1690814968081;
        Mon, 31 Jul 2023 07:49:28 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHh3une8vFYD00PVBZEv3z4MgMpjc5XNzdJiU8JQep50TpZuC90qAlliVaNttuY/qHNizStEv+4jQ==
X-Received: by 2002:a05:6870:3a29:b0:1bb:b8f0:5878 with SMTP id du41-20020a0568703a2900b001bbb8f05878mr12395597oab.5.1690814967638;
        Mon, 31 Jul 2023 07:49:27 -0700 (PDT)
Date: Mon, 31 Jul 2023 07:49:27 -0700 (PDT)
From: Rafael Silva <rafael.silva@nearform.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <69edd0e8-5d29-43ab-b18a-524bbb517944n@googlegroups.com>
In-Reply-To: <f3d796bc-e2ff-4d61-8820-e10ca8068ad4n@googlegroups.com>
References: <f3d796bc-e2ff-4d61-8820-e10ca8068ad4n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_41408_435169809.1690814967411"
X-MDID-O:
 eu1;fra;1690814970;xPTXDV4_fkIV;<rafael.silva@nearform.com>;11bfa6aa9c040cf23bc591a6d91f8f65
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, August
 2023

------=_Part_41408_435169809.1690814967411
Content-Type: multipart/alternative; 
	boundary="----=_Part_41409_9866570.1690814967411"

------=_Part_41409_9866570.1690814967411
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Forwarded message ---------
From: Rafael Silva <rafael.silva@nearform.com>
Date: Monday, July 31, 2023 at 11:48:26=E2=80=AFAM UTC-3
Subject: Node.js security updates for all active release lines, August 2023
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release=20
lines on or shortly after Tuesday, August 8th, 2023.

For more information see:=20
https://nodejs.org/en/blog/vulnerability/august-2023-security-releases/

------=_Part_41409_9866570.1690814967411
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Forwarded message ---------<b=
r />From: <span dir=3D"auto">Rafael Silva &lt;rafael.silva@nearform.com&gt;=
</span><br />Date: Monday, July 31, 2023 at 11:48:26=E2=80=AFAM UTC-3<br />=
Subject: Node.js security updates for all active release lines, August 2023=
<br />To: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.com&gt;=
</span><br /></div><br /><br />The Node.js project will release new version=
s of all supported release lines on or shortly after Tuesday, August 8th, 2=
023.<div><br /></div><div>For more information see: <a href=3D"https://node=
js.org/en/blog/vulnerability/august-2023-security-releases/" target=3D"_bla=
nk" rel=3D"nofollow">https://nodejs.org/en/blog/vulnerability/august-2023-s=
ecurity-releases/</a><br /></div></div>=

------=_Part_41409_9866570.1690814967411--

------=_Part_41408_435169809.1690814967411--
