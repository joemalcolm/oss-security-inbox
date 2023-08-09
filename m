Received: (qmail 17845 invoked by uid 550); 10 Aug 2023 13:05:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17499 invoked from network); 10 Aug 2023 08:43:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nearform.com;
 h=content-type:content-type:date:date:from:from:in-reply-to:in-reply-to:message-id:message-id:mime-version:mime-version:references:references:subject:subject:to:to;
 s=selector-1636637189; bh=9gXUBXD6gNDwsgLnreNajC0SFQ5aqyDnka+GAgN+edY=;
 b=GpEsMPI2FqMaJA5zwRr1JCuLhHVFqmVN0guagAwD91C9yzRtmITctUAB2n1qkmSzWb6pR/cBcAjdJX3Qn90dyS9ksaEVzfZntz/csv2boIyYIrc2Ry6BV1P3KFjZU/hsUgIPuzrmlQNfLpCU4kCYCpl6nGjkhPuNmIeudlKBX58m8bIHU1QFpWvrSqXlxR3fe/O2r2+ok9/tkqYky2XVCMVLZ2Xs8Z8m+Gp0BWdtKCgbqH930/6StEecpWpHeVNe50rw/Co1pcavpg5mKclJVI7mukSW1MQU3f9J1srXWOCVRvl2VIijT/kplblMIZp0NJmhrakwHmFuLoeXXRjp1A==
X-MDID: 1691604910-4rU5L0CiWNXx
Resent-From: "Proofpoint Essentials" <do-not-reply@proofpointessentials.com>
Resent-To: <oss-security@lists.openwall.com>
Resent-Date: Wed,  9 Aug 2023 18:15:10 +0000 (UTC)
Resent-Message-ID: <4rU5L0CiWNXx-SXL3xrXECSF1@eu1-mdac18-33.ams.mdlocal>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nearform.com; s=gmail; t=1691604907; x=1692209707;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9gXUBXD6gNDwsgLnreNajC0SFQ5aqyDnka+GAgN+edY=;
        b=fZGTqBD1tuX3n4C7bUnBKaM0yL0NeYmWXu1jU3+IjOi0PBUYhi8MaOeEwW8fos1FKj
         PxNjZgJle0voMf/JfO4nP0gMej7YvN72cBnoU1MJi/RV6Hw9AEMsC7FYyF3m6+G//KSo
         AS8ZLbz6vAkKkqRpcbvC2VVsyviPvCFwm/KUQFZ9TF4GVUcI6AM34RI6KbJjAqVX1PYS
         8lhSJTV6KJhllQPAb52xK/0cAj9QBUb1euaLMxGGlhpcPHeaoR4qqQPa8duAe/8TZ91f
         tc4qOSoXcOdW4QvEBHEtkkPPyiAR54e1X/TIZRDzs+bBlpZL1TXiWGkY/8TDVxgKWD90
         UQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691604907; x=1692209707;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9gXUBXD6gNDwsgLnreNajC0SFQ5aqyDnka+GAgN+edY=;
        b=D2CBSSH/NIsXR3GKYI2yqTL+Gv+b+epNXi9hp08E/2Zy8jhm4y/naL0fXWNc7/yfOu
         skYNLXJ8/YVEFBxftxli8Uv4kw8ZPkxDN819Qj7u4FP1i0PfTsjJOgmG9t+ewPlGJjxm
         8ljjQKDdj+Fv7ZEvz1gMKeB2shQWn6X2rDtoalKAV9p2YExRQbD5SA3TO9oWGVqz4B5M
         0QxeBHvS7LgRdgj0D+aINyaycRF+bg4KpPSBCpCkf3p09XNzbykOLadSE2G0oOfIcUa7
         O1yHj1Yvp7GxFXqBFY7lLA1eeonbiXHy8AnpTijbSJevOQmE4+/Jw+YCcgxibQmCrht3
         WlDQ==
X-Gm-Message-State: AOJu0Ywev2ZNv6sGbU5dkb2F/I+QC8dnmDkDQZkChNDn3MschHg+Ce7F
	stR+4RvdevawlbFiJ7p9P79tf9/GQOdz4p+qFZV0S9buuOC9mV9/8sBo5vDrq6hScP+wF+CgQ+E
	EVFXWBPBSN/jGeBeAdKxfLwDjPhhqVAZ6Aauk6dzR1zEUlOWllpGU1jo1enUecuVb
X-Received: by 2002:a05:6a00:16c4:b0:676:ba7f:7906 with SMTP id l4-20020a056a0016c400b00676ba7f7906mr549112pfc.3.1691604907696;
        Wed, 09 Aug 2023 11:15:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNOAKsT8b0/ckNlmEIAql15jeCKqK5XOPZkIVSYpy7zhR9mXC7/rGGm3VZOWaQkB/Gy8J99W+Uew==
X-Received: by 2002:a05:6a00:16c4:b0:676:ba7f:7906 with SMTP id l4-20020a056a0016c400b00676ba7f7906mr549100pfc.3.1691604907258;
        Wed, 09 Aug 2023 11:15:07 -0700 (PDT)
Date: Wed, 9 Aug 2023 11:15:06 -0700 (PDT)
From: Rafael Silva <rafael.silva@nearform.com>
To:  <oss-security@lists.openwall.com>
Message-Id: <ab9626a5-56c5-48e7-8422-323fb09cb276n@googlegroups.com>
In-Reply-To: <52675ba7-064f-4273-bc15-53bd8394482an@googlegroups.com>
References: <f3d796bc-e2ff-4d61-8820-e10ca8068ad4n@googlegroups.com>
 <52675ba7-064f-4273-bc15-53bd8394482an@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_19340_581568219.1691604906745"
X-MDID-O:
 eu1;ams;1691604910;4rU5L0CiWNXx;<rafael.silva@nearform.com>;11bfa6aa9c040cf23bc591a6d91f8f65
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, August
 2023

------=_Part_19340_581568219.1691604906745
Content-Type: multipart/alternative; 
	boundary="----=_Part_19341_1766522372.1691604906745"

------=_Part_19341_1766522372.1691604906745
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



---------- Forwarded message ---------
From: Rafael Silva <rafael.silva@nearform.com>
Date: Wednesday, August 9, 2023 at 3:14:35=E2=80=AFPM UTC-3
Subject: Re: Node.js security updates for all active release lines, August=
=20
2023
To: nodejs-sec <nodejs-sec@googlegroups.com>


The planned security releases are now available. You can read more about=20
the details in=20
https://nodejs.org/en/blog/vulnerability/august-2023-security-releases/.

On Monday, July 31, 2023 at 11:48:26=E2=80=AFAM UTC-3 Rafael Silva wrote:

The Node.js project will release new versions of all supported release=20
lines on or shortly after Tuesday, August 8th, 2023.

For more information see:=20
https://nodejs.org/en/blog/vulnerability/august-2023-security-releases/


------=_Part_19341_1766522372.1691604906745
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br /><br /><div><div dir=3D"auto">---------- Forwarded message ---------<b=
r />From: <span dir=3D"auto">Rafael Silva &lt;rafael.silva@nearform.com&gt;=
</span><br />Date: Wednesday, August 9, 2023 at 3:14:35=E2=80=AFPM UTC-3<br=
 />Subject: Re: Node.js security updates for all active release lines, Augu=
st 2023<br />To: <span dir=3D"auto">nodejs-sec &lt;nodejs-sec@googlegroups.=
com&gt;</span><br /></div><br /><br />The planned security releases are now=
 available. You can read more about the details in <a href=3D"https://nodej=
s.org/en/blog/vulnerability/august-2023-security-releases/" target=3D"_blan=
k" rel=3D"nofollow">https://nodejs.org/en/blog/vulnerability/august-2023-se=
curity-releases/</a>.<br /><br /><div><div dir=3D"auto">On Monday, July 31,=
 2023 at 11:48:26=E2=80=AFAM UTC-3 Rafael Silva wrote:<br /></div><blockquo=
te style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">The Node.js project will release new versions of=
 all supported release lines on or shortly after Tuesday, August 8th, 2023.=
<div><br /></div><div>For more information see: <a href=3D"https://nodejs.o=
rg/en/blog/vulnerability/august-2023-security-releases/" rel=3D"nofollow" t=
arget=3D"_blank">https://nodejs.org/en/blog/vulnerability/august-2023-secur=
ity-releases/</a><br /></div></blockquote></div></div>=

------=_Part_19341_1766522372.1691604906745--

------=_Part_19340_581568219.1691604906745--
