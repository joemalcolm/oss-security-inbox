Received: (qmail 5686 invoked by uid 550); 21 Apr 2026 16:30:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27934 invoked from network); 21 Apr 2026 13:19:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776777566;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=loOjg7ItqKtmwYk3By/4jLzD8aUwMjo95L0va2/HNJQ=;
	b=CLWIHilCJSNJhlfqYvMDPhyn3hX/yRk+cFZkcrRJZeKoB8t/Hdnpk4lfEFUx+/WDp6rs+D
	J4MAljGok5Tl3Cc4RZcUzNHkvg8j6atobJI+HusjSM2knjj2gAHOZ7KRSug0nWFGUusaJR
	dGKkx3jexNaT30kYxGGpshtsrbfZksQ=
X-MC-Unique: G4ZLz8NOOuiQ_NgtYMMaiw-1
X-Mimecast-MFC-AGG-ID: G4ZLz8NOOuiQ_NgtYMMaiw_1776777564
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776777563; x=1777382363;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loOjg7ItqKtmwYk3By/4jLzD8aUwMjo95L0va2/HNJQ=;
        b=P83z3Lf1BgP6hMHr5RwXUFbUzdaO+jt7KGsxh7pf+TuewNzEveUXmnCkFblkyFA/Sb
         VPCkC+dH3/Uq1mmR1lhA77SV+RoU6bTlCf7dlIledc2D8hNWHPJmrh0bQBt9yzi38+LQ
         kQ5oC9ax12FmxEuPV3t0EGY3ZGtzuzyMDwAMpNynBQXww8akSMSq0lwx1p4Aja/zuZgT
         0W0TuHHml8h7azlfOSGShAAnq860MF4IKzTnki4QRqv+vQ+zHatdmB5h6xYXpKchkEQf
         mpZmOF9KRF04PXj3lN3q4HE1p67KXtZR032rVLwTFVaL6tY0MBGErKQv6Gidm6VudLMn
         zYkg==
X-Gm-Message-State: AOJu0Yx3LqXUlTdmtnS/H7CmxXVJTf32hfVEcHSX9V3ukbapda9Ugf/1
	niR+R5HiIvLBWhft3lz1+BHtVmXQelwdBMmLpU41bvtbrIWPVErUt19d4ISDoKJGrG4KvjQpXz3
	JXXxLsmiy6VKnY8+9vb8ewYDd92QpElImO06iVvtTtvvT5H5WomtuZ1Z70P9Zh+55SUL+ckoJyM
	48GxU0+o5CLbZjHpRuKbdHUjrYdNGRVryKWi+aupuAqajZu2BQ66gN
X-Gm-Gg: AeBDiestxmqLV8Z39KrWNv+CLcrzd5C4OhJWrvJ0qvc59eyxWjgDlZ1rkW5Xr8rrrcX
	bwRouDfxJXdIRjFnF4COudeDVSAWGBxoQnySVinnzkQJRb4+DVdRgGgmWc0tShcrsrPxAj73kmT
	Q+cGq4/YkOxhBNLNGzfIA8rGZCFeXx3Zt+Ta8f9qZQZuKjwv508EFxEEyr/T1OXIp2Iit0qhq2J
	X+J2iZe7lo1zR21uNlJupkGxNG02wW+WzBz0/1B9K5irBZVkgkLOS35YnPsGFqbvlPnFzlAC9pg
	XLU41F8p3sWT/WY=
X-Received: by 2002:a05:6870:c2a6:b0:42f:b5fc:bb02 with SMTP id 586e51a60fabf-42fb5fd4407mr266838fac.15.1776777562762;
        Tue, 21 Apr 2026 06:19:22 -0700 (PDT)
X-Received: by 2002:a05:6870:c2a6:b0:42f:b5fc:bb02 with SMTP id
 586e51a60fabf-42fb5fd4407mr266814fac.15.1776777562093; Tue, 21 Apr 2026
 06:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <263ca7c1-ae8b-43a1-b6b9-c58a13488f51@redhat.com>
In-Reply-To: <263ca7c1-ae8b-43a1-b6b9-c58a13488f51@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, 21 Apr 2026 15:18:45 +0200
X-Gm-Features: AQROBzC3zYMAN97aHH2ruMLqs_BhMHeNjKDeL2pAjedVq9IvFmgLJ4VbpC1xeb8
Message-ID: <CAP=2yyT-op1zrHa1nwa_6FszFTPAA+JTOiXUvMAws5DVt87gkw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-MFC-PROC-ID: yFr3gBHhrdAox6GNrKhbdN-4XEmc6A-0F6rWkiw2n10_1776777564
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="0000000000006f92ba064ff8435c"
Subject: [oss-security] Fwd: X.Org Security Advisory: CVE-2026-4367: libXpm Out-of-bounds
 read in xpmNextWord()

--0000000000006f92ba064ff8435c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, Apr 21, 2026 at 3:15=E2=80=AFPM
Subject: X.Org Security Advisory: CVE-2026-4367: libXpm Out-of-bounds
read in xpmNextWord()
To: <xorg-announce@lists.x.org>
Cc: <xorg@lists.x.org>, xorg-devel <xorg-devel@lists.x.org>, <vuls@jpcert.o=
r.jp>


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
X.Org Security Advisory: April 21, 2026

Issue in libXpm prior to version 3.5.19
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

An issue has been found in the libXpm library published by X.Org for which
we are releasing a security fix for in libXpm-3.5.19.

* CVE-2026-4367: libXpm Out-of-bounds read in xpmNextWord()

   libXpm uses a number of internal helper functions to parse the XPM file
   format.
   One of these internal functions, xpmNextString(), checks for the NULL
   terminator when looking for the end of the current string but not when
   looking for the beginning of the next string.
   A small XPM file with a malformed color table definition may cause the
   function xpmNextWord(), called from xpmParseColors() following a call
   to xpmNextString(), to start past the actual end of the file, causing
   an out-of-bound read.

   Introduced in: Unknown, prior to 3.5.5 (from Xorg 7.1)
   Fixed in: libXpm-3.5.19
   Fix: https://gitlab.freedesktop.org/xorg/lib/libxpm/-/commit/5448e1bd
   Found by: Naoki Wakamatsu

--0000000000006f92ba064ff8435c
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Disposition: attachment; filename="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Transfer-Encoding: base64
Content-ID: <19db030a09ddde96bc71>
X-Attachment-Id: 19db030a09ddde96bc71

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tDQoNCnhzRGlCRVJkMGg0UkJBQ2Zs
WE13Uk11Wi9nSUNCN29NL1N3bllNb0RlUlZhWkhZVDJSdEk2aWFOUXBvdm9NYXMNCmZiTFgzMWlj
d2VRbTlzTUxRSlIvYk5BQnBwMjhGczFTNHlOdDlTd0FQcm9pZ2V4eVdsM2ZGRTN1cW9WUm1nbFoN
CnVRZHlYbDdublBDN0EzaHhIUFg4OHRzWlM0VWxMRlJzc1RqTm5yenpoU1IzeHl5SWxPSm5tRzVw
SndDZy95YUgNCkRFQ1J0ZFdtOWdJSlp3Zk02UytBTllVRC8wczZGUENJZGJEcUN6TmNNSDdZWklE
K0pqQk9VM1ZsUmRYZnpHbXgNCkl5MmFQQnBDOXBrYjBFVUVMOTRRWjVZc2ExRUdObk5VUHE4ZFFX
T3IvTmxsQ3QyL2wwSERMR296aUJDcEJUdkcNClpObkZhSm9Fckcwa21DSDJ1MHc5Vm1LS1NCcTZD
MHNJOHJGVzFKdGhLYy9idTZ1Y0JLS2JwaTRzRllBTXlaSG4NCnNOYnpBLzlWWWV2eW5zNVRtWmVS
N3QreDhZUmo2eFp4V1ZOR20yMGduQkJoSFZucS9FR0luNGEvWU4xTkxGTmMNCjRFdWFyRm56bDB3
NkwxSVFIYW5NK2FqQkpnekw0b1NZQ3VmaFRTWGdBMnV0cnBJUnRLa1JXOUpINnp0M0o1aGsNClc4
b0ljRXNZM1lSS1EzaVZLUzNLejhQZ1N3ZXpOZXdGVDZvM0p1dS8vOTVPNXFTbThzMGlUMnhwZG1s
bGNpQkcNCmIzVnlaR0Z1SUR4bWIzVnlaR0Z1UUhobVkyVXViM0puUHNKNkJCTVJBZ0E2QWhzakJn
c0pDQWNEQWdRVkFnZ0QNCkJCWUNBd0VDSGdFQ0Y0QUNHUUVXSVFSbjNJYnlZai9GL1V1MUlsMFVj
RzIrSGt0RlFBVUNYeDdqZ2dBS0NSQVUNCmNHMitIa3RGUU1BTUFKNGttQXRPQTlZRWF6TysxVE54
RXZFRFpiRURTd0NmVVZSMjdOQXROZWdHT01PN3BpRjENCktydXJUZW5DWXdRVEVRSUFJd1VDUkYz
U0hnVUpDV1lCZ0FZTENRZ0hBd0lFRlFJSUF3UVdBZ01CQWg0QkFoZUENCkFBb0pFQlJ3YmI0ZVMw
VkE4K3dBb0ppNlpCUms0M0ZCcDgxNTR5TU5POVNVSXRCMEFKNHJEQlo2ZEpBVUNLbmINCjlwYm4y
ZldNVjJZUTk4SnBCQk1SQWdBcEFoc2pCZ3NKQ0FjREFnUVZBZ2dEQkJZQ0F3RUNIZ0VDRjRBRkNS
cFUNCkhkSUZBa2FqeTNRQ0dRRUFDZ2tRRkhCdHZoNUxSVUEwaHdDZmYxaHdDZUV1Y0hXa2hGQU80
RWlJaUdFVXhKd0ENCm9ObGdjd0hWWWhxU2VzcGxJNmVQQW9FZkRhYzV6U1ZQYkdsMmFXVnlJRVp2
ZFhKa1lXNGdQRzltYjNWeVpHRnUNClFISmxaR2hoZEM1amIyMCt3bmNFRXhFQ0FEY0NHeU1HQ3dr
SUJ3TUNCQlVDQ0FNRUZnSURBUUllQVFJWGdCWWgNCkJHZmNodkppUDhYOVM3VWlYUlJ3YmI0ZVMw
VkFCUUpmSHVPREFBb0pFQlJ3YmI0ZVMwVkF3T29BbjFqUHNFTVcNCnYvejlwcXZ3MldlNUZETGJp
MG5jQUo5V2JBNUUxZkhoOG0zMU5kU3lGeTJ0WHQ4d2ZjSm1CQk1SQWdBbUJRSkcNCm84ZzVBaHNq
QlFrSlpnR0FCZ3NKQ0FjREFnUVZBZ2dEQkJZQ0F3RUNIZ0VDRjRBQUNna1FGSEJ0dmg1TFJVQUwN
CkdRQ2dtdlpab01LWkM4MUtWK0hHbG1ZdnkvQ2tpdkFBbmo0ckl6UDRML2RBRlhmdEFhOUJ2Zk1v
U3cvU3dtWUUNCkV4RUNBQ1lDR3lNR0N3a0lCd01DQkJVQ0NBTUVGZ0lEQVFJZUFRSVhnQVVDUnFQ
TFdBVUpHbFFkMGdBS0NSQVUNCmNHMitIa3RGUUtjekFLRGVxMzNROWtZRUtQQUw1RmRGQWZYNUhP
ZGJNUUNnckoxWE1oVjVFTGErUVloRlRINlQNCm1OZmZmZWpOSTA5c2FYWnBaWElnUm05MWNtUmhi
aUE4Wm05MWNtUmhia0JuYldGcGJDNWpiMjArd25jRUV4RUMNCkFEY0NHeU1HQ3drSUJ3TUNCQlVD
Q0FNRUZnSURBUUllQVFJWGdCWWhCR2ZjaHZKaVA4WDlTN1VpWFJSd2JiNGUNClMwVkFCUUpmSHVP
REFBb0pFQlJ3YmI0ZVMwVkFua1lBbjNKaW13eG5taFlqd3EvV29aL1F5VkZGbURGTUFKNHYNClFG
bmcyTGFlYmtURzYvWUluRjVQOHFsd25jSm1CQk1SQWdBbUJRSkdvOGdLQWhzakJRa0paZ0dBQmdz
SkNBY0QNCkFnUVZBZ2dEQkJZQ0F3RUNIZ0VDRjRBQUNna1FGSEJ0dmg1TFJVQnlkQUNmYmEwOGJs
VjVrdkFkTi9tU0tEMU4NCmdBSHNpSWNBb1BicENXVzNJVWlaLzFUOXY4WVR1RGJ0TFdrTHdtWUVF
eEVDQUNZQ0d5TUdDd2tJQndNQ0JCVUMNCkNBTUVGZ0lEQVFJZUFRSVhnQVVDUnFQTFdBVUpHbFFk
MGdBS0NSQVVjRzIrSGt0RlFJU29BSjl5Yk9GRlRCeUUNCnl0MjRLWEJBbGVzWDdxQklsQUNnbVd0
Z1NXM1p6b0d3SlhHMGtuRVJxU1BERER6T3dVMEVSRjNTU1JBSUFJMGMNCmxjdFZPamRMVXRFMVpS
WVM3UmV1L29YU1BuczhkdVM0Q0xIbWtuRjNrZ244dU42TDZmcHR3RnpoM3lpekNNR3YNClRkNFlB
NC9OaW16c1F4WG1hcjlmRFJnL1ZIRVBzYUhyV2FuRTNWUE14Qm9SeVB0bk5lUXRRWHJSYjhYQ1ps
bG8NCkd2bVlRL0NaOE45SWFVcS9ROGJicHF5citkSnkvZ3krZ2MwYUN4UGRaaGdoeHZPS3JjSlpn
N3prczUyY1FlZ3oNClRuZTZyalUwby9lVGV5U2tXZ2JvTDRSYUxRbmRVVlg3TEoxVWdMM214cjMw
Zmd2Nkp4bU44WWtENmxTYmI4K2kNCnZYaEhYOExOdVk4d21YK3RDSXJsbSsyMGhwV3RMRXlCM0hT
bnFneUM3WTF2MFpQWW1RYVJtMUFRY2FmaWtGbWwNCjlDaWVIOURhVjZhdmZQUUxrZ3NBQXdVSC8y
Qlg5eFl0Rlk4NWZTS1A3S3owQ2xjQ0hwdXdlSWttVGJQV0RUOTENCkhRbWYyZFJiekk4OENWM1p6
YXdKTUpISEwxTnVhN0NHTlgxWitjRkp6NFFUa3lBT1hYTmxiSGFWUlhGMkVwbncNCkZmakY1VU0v
RDVqM1lpVWhYb2FtMUxLejgvVlJ3M1pERGRjMzQ5aktQSkVXTkVtcXM5TmVHaFNDMllzTDJUc08N
CkJhQnpXUHZSWFMxb3RQQ2FLT1R1RGE5aDJUOG9tMlNFdnF2SmpkMGpkQzBvNGtoSjh6c1l0RTN2
WkJYYnlmZGYNCmNuNWt0V2VkeUV0NmxjUk1JMDRidnUyK2o2QjY4R3d0VkROci9SSGFEUGQrVWti
WlNId2lSb3hHa1JVUXR0WXYNCkxoL05ydExvOGE2TlFGV0FlUE1NOG5VMlA3bjZBY1JmMzU3bnFi
d25RV0ovVHl2Q1hRUVlFUUlBSFJZaEJHZmMNCmh2SmlQOFg5UzdVaVhSUndiYjRlUzBWQUJRSmZI
dVBjQUFvSkVCUndiYjRlUzBWQW5MNEFuaW00dk5ZeXJEYzgNCk5UZFMzbWdXR3RkWFZqV2RBS0Nq
VWh6a04zdUNhWU5KUjZoMFkxdGhZdVBFSkE9PQ0KPWN4eWwNCi0tLS0tRU5EIFBHUCBQVUJMSUMg
S0VZIEJMT0NLLS0tLS0NCg==

--0000000000006f92ba064ff8435c
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_signature.asc"
Content-Disposition: attachment; filename="OpenPGP_signature.asc"
Content-Transfer-Encoding: base64
Content-ID: <19db030a09de0fb168b2>
X-Attachment-Id: 19db030a09de0fb168b2

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0Kd21NRUFCRUlBQ01XSVFSbjNJYnlZai9G
L1V1MUlsMFVjRzIrSGt0RlFBVUNhZWQ0VkFVREFBQUFBQUFLQ1JBVWNHMitIa3RGUU9Ecw0KQUtD
c3lpSFdBMXQydHVTTHRxalhIN1U4OU1ZVnpRQ2ZRTFdUNjNHTzk5K002cWpkV0hYVHZ4Y1B5dEE9
DQo9dDFJQw0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--0000000000006f92ba064ff8435c--

