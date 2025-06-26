Received: (qmail 28114 invoked by uid 550); 26 Jun 2025 23:37:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17953 invoked from network); 26 Jun 2025 20:09:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750968586;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=VFlyZCRjYxSRmGn4lIJhAcgAVOluYkVhhnY8hcezVng=;
	b=Oa6lUc5yTt15JAbvvTk9+Ze1EVnaFwXDZtQeBBHh1qOD/uSrWpEuZ3CtD6gSaaVzSkfSU1
	Wv2UzTxABUHI3BCF1lmqEdi/UMpHTYmsF1tK9fFwesyYxLfNhMNDfn9HygMaAtO3GrkRYw
	JJFs2gCOTuJJxRIFTTMtbJUs00Uenb0=
X-MC-Unique: eRXD8sClMbKDScpANxGD0Q-1
X-Mimecast-MFC-AGG-ID: eRXD8sClMbKDScpANxGD0Q_1750968582
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750968581; x=1751573381;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VFlyZCRjYxSRmGn4lIJhAcgAVOluYkVhhnY8hcezVng=;
        b=uUZ6UjoqOdmvmpZx+vRjPtxU6jwVtaAfRfVQgWmVlt/TDuYMK1AmHHvXJR9pr7X8mL
         1R0K5KS7sjdK75MjdmknCox6mJz9f8FAoKVY8QOCLWWCmAFDYfoqgHq42i2CJAsxZRH9
         9mL6aep/QdaFvYHwygyf+WyC8avqwUN62fCqxlSmIymHB/dKdgxufmrqEhDMtF0791xi
         P9vbBFbe2/fd8y/6vbRlYSVjlHAdjZMSOA9d+qr1iMDB6RmgrYuRIP/5L95L5qXQgjnT
         Ntc053nrOHfp0DdXMJ5+ij+Q3pLl1w5cF4yfm7C7783p/2OTJicNBbfkHJPLod+BbdvM
         rcmA==
X-Gm-Message-State: AOJu0Yyp1qdIEhKDCgXBC8L112aOvX2eLWUxSYRn4sN8NwThlN675Rsw
	RiawQ0YLyGe29dNxz36sjLArseU4PXkEERZacSekkqdj1uyq7niZSqOAKdiQxx+87p0+ioXy+rx
	klDpTkV1BmH+sDgXXD2HwSeqF68uUIZfU2QRllmCk/raHcZUscw+ejLHB9JhjtZN0JK4Fie/WtL
	mOqMxSeEp5zZc4cuvXb/Ud/U66LcUOdd2ajhSIfj5U5CFfyz5JoEupaUE=
X-Gm-Gg: ASbGncvAEXR1WBksOWT3A6Cxbz4swe40QsGfiTie1XZ0/g9aK0w4A+OY1OxHO8XE0/T
	ZKvmNiDEP8EAJCBw9hebOa/vnWcDXJ79ogN/4s4Rayj4hgDpl8OICHkVY/acfZ5IembukBwO/2a
	Y=
X-Received: by 2002:a17:907:7e91:b0:adb:469d:2221 with SMTP id a640c23a62f3a-ae35017dca5mr32515966b.45.1750968581063;
        Thu, 26 Jun 2025 13:09:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGy+WSXpZnIXjjQmXuhHE59RG/MRoBYw1PdjOoqSV6TVumvDL88py9sH+MnVz7nlA/zr1QrLdwaz7YfTaj9pCI=
X-Received: by 2002:a17:907:7e91:b0:adb:469d:2221 with SMTP id
 a640c23a62f3a-ae35017dca5mr32514366b.45.1750968580561; Thu, 26 Jun 2025
 13:09:40 -0700 (PDT)
MIME-Version: 1.0
From: "Sage [They / Them] McTaggart" <amctagga@redhat.com>
Date: Thu, 26 Jun 2025 16:09:29 -0400
X-Gm-Features: Ac12FXyiaktXkY04sa0o9maaT9OpLtcMVOObxUcMxYuD66DAUjDxwcvS13vX8UU
Message-ID: <CABBoStj3fbqaQi2uDo83wP+zdn+ODvywSC1C=e0-+x1+GLm6Hw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: c7egz8csXUNQR46fdcmO5m6Dtr9aG_RHqimE63QEb50_1750968582
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000041f94f06387f241d"
Subject: [oss-security] CVE-2025-52555 Ceph: CephFS Permission Escalation Vulnerability in
 Ceph Fuse mounted FS

--00000000000041f94f06387f241d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
A flaw was found in CephFS. An unprivileged user can escalate to root
privileges in a ceph-fuse mounted CephFS by chmod 777 a directory owned by
root to gain access.

The result of this is that a user could read, write and execute to any
directory owned by root as long as they chmod 777 it. This impacts
confidentiality, integrity, and availability.

Our public advisory may be found at the following URL
https://github.com/ceph/ceph/security/advisories/GHSA-89hm-qq33-2fjm

We have assigned it a CVE of CVE-2025-52555 with a CVSS Score of 6.5
CVSS:3.1/AV:A/AC:H/PR:L/UI:N/S:C/C:H/I:L/A:N

It is patched via 17.2.8 <https://github.com/ceph/ceph/pull/60314> , 18.2.5,
and 19.2.3 in upstream Ceph.
Credits to: Ben St=C3=B6ver for discovery, and Mark Nelson, Dan van der Ste=
r,
and Joshua Blanch for reporting.

Sage McTaggart
IBM Product Security

amct@redhat.com

sagemct@ibm.com

--00000000000041f94f06387f241d--

