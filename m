Received: (qmail 3497 invoked by uid 550); 28 Oct 2025 19:24:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15593 invoked from network); 28 Oct 2025 13:24:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761657870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zHmMET+ihrSsMEANeYsMYpe55HzzxgU4sir7d3s7S9g=;
	b=iYEosPuIGNHVhAJ5ysqw5aIb7ArqC+lTNGlMUg5WRnpV0C+aQAkrF7WwUaCXCeeuixb1yb
	BTz32JP4X83nzsrBFtNhKCnYVZbpUXBOmj8rkoGbNmBU2Jq5WAspdr1KcTylmdF8/HSF4h
	K81mqt5dMk97df3qo8SVbHzAKfVcX3Q=
X-MC-Unique: xclY879SPRiJmtykFD3n_A-1
X-Mimecast-MFC-AGG-ID: xclY879SPRiJmtykFD3n_A_1761657865
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761657865; x=1762262665;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zHmMET+ihrSsMEANeYsMYpe55HzzxgU4sir7d3s7S9g=;
        b=iOvjvETRHty1Oy0PBZnlGpPMHOqu2i7CYu5qagVmScmC6Kz2qbk+mfKndyYJcnfaB1
         OLh6X9UeMCDZCy64dUBBREsx+19s0iYeF+FRJ1G0IFeO9sZt3nyIpnnlunHT5My1+Jzk
         i73B5Qsc3U47xk0icLQCjxGSDuhTBg3/ZeIcZEQ7L8gpefrzHFiRmwWtJ1YfVC32jO+r
         /a0ovEl1Odl0l9fFWBpMfMveWsm61vgra2TYZ+783OXJ2ROsEgIAJUUJKEoeuzL4e2J1
         xRgWGYdb0ID2ZZDk+/xY8fI9PyYH1opIBcupJeleArCvkq//hqgTRRhsw9zgajep0Zec
         kFCw==
X-Gm-Message-State: AOJu0YyjZh8V28s19QI2ik26amz1/EDY2mriP89SqfgsiWGHymPeqyhf
	CRHzQDBDmRs2qsbOQZT2rV0dR+H8W4EAbpp8H05lVn6OsCP2PeZSddY0RHoYZ9jGWXbqXRojarE
	kO+tZs1DPkMWgzjVN0jAkrszWM8v+6Eb2gtHTx4UBk8/HK7y3goJ3wBomirCu4NpOpLokIp8SdT
	EyshO6+Plik+Rhu1sSSInns9RxHfFHFYUUk7O6QLBLh89roE5tsLue
X-Gm-Gg: ASbGncsBtu1vYcz4Se1YnKvfH20i+Ew9CLhKTW+nUim8N3ql0qbbHWCLrHONWup/Bjs
	c84Qmhuym7OeqAd+pL2LoAo+qS/j1SLQAuYKlqWfnxBfMFmInqACcHkClWI2s7w/xlPakcy+VNm
	wn8S5DqwVRWnRJqapdt6xnEsIfazcRWcHjexJ4HCDyhJkSC6mX4JHOPGk=
X-Received: by 2002:a05:6808:c185:b0:441:8f74:e8f with SMTP id 5614622812f47-44f6bb27086mr1522963b6e.57.1761657864832;
        Tue, 28 Oct 2025 06:24:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+c5m/QcydDO4DOfHU/IvstJl2aMl3JgdN/07RVVqnmlYm2j4LNPIDqDCjDaB/QGQe//te0+BHRLClbuzNYOc=
X-Received: by 2002:a05:6808:c185:b0:441:8f74:e8f with SMTP id
 5614622812f47-44f6bb27086mr1522950b6e.57.1761657864137; Tue, 28 Oct 2025
 06:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <56a279d8-697f-44fd-8c58-6ed912d03417@redhat.com>
In-Reply-To: <56a279d8-697f-44fd-8c58-6ed912d03417@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, 28 Oct 2025 14:23:47 +0100
X-Gm-Features: AWmQ_bnuP0YJyDG467kzc_P3kHod2y-OmDE6X49xHsBCtQMWUUEDfVDkqVUNmR4
Message-ID: <CAP=2yyQ=pWjRRgX837+Hn0SaJC9K44WsW2cdOH3qR7ckRa+5mQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000003597b9064237efc1"
Subject: [oss-security] Fwd: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

--0000000000003597b9064237efc1
Content-Type: text/plain; charset="UTF-8"

======================================================================
X.Org Security Advisory: October 28, 2025

Issues in X.Org X server prior to 21.1.18 and Xwayland prior to 24.1.8
======================================================================

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.19 and xwayland-24.1.9.

1) CVE-2025-62229: Use-after-free in XPresentNotify structures creation

    Using the X11 Present extension, when processing and adding the
    notifications after presenting a pixmap, if an error occurs, a dangling
    pointer may be left in the error code path of the function causing a
    use-after-free when eventually destroying the notification structures
    later.

    Introduced in: Xorg 1.15
    Fixed in: xorg-server-21.1.19 and xwayland-24.1.9
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/5a4286b1
    Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative.

2) CVE-2025-62230: Use-after-free in Xkb client resource removal

    When removing the Xkb resources for a client, the function
    XkbRemoveResourceClient() will free the XkbInterest data associated
    with the device, but not the resource associated with it.

    As a result, when the client terminates, the resource delete function
    triggers a use-after-free.

    Introduced in: X11R6
    Fixed in: xorg-server-21.1.19 and xwayland-24.1.9
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/99790a2c
         https://gitlab.freedesktop.org/xorg/xserver/-/commit/10c94238
    Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative.

3) CVE-2025-62231: Value overflow in Xkb extension XkbSetCompatMap()

    The XkbCompatMap structure stores some of its values using an unsigned
    short, but fails to check whether the sum of the input data might
    overflow the maximum unsigned short value.

    Introduced in: X11R6
    Fixed in: xorg-server-21.1.19 and xwayland-24.1.9
    Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/475d9f49
    Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

--0000000000003597b9064237efc1
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Disposition: attachment; filename="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Transfer-Encoding: base64
Content-ID: <19a2afc8df1dde96bc71>
X-Attachment-Id: 19a2afc8df1dde96bc71

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

--0000000000003597b9064237efc1
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_signature.asc"
Content-Disposition: attachment; filename="OpenPGP_signature.asc"
Content-Transfer-Encoding: base64
Content-ID: <19a2afc8df1e0fb168b2>
X-Attachment-Id: 19a2afc8df1e0fb168b2

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0Kd21NRUFCRUlBQ01XSVFSbjNJYnlZai9G
L1V1MUlsMFVjRzIrSGt0RlFBVUNhUUREaWdVREFBQUFBQUFLQ1JBVWNHMitIa3RGUVA4eA0KQUo0
L1JHN2hKMlNsQXluUlhnaEVFbXNjMTBEZFlRQ2d5Tk5jNmNNM3VHekhOVkd5ekc3bkd3bGg5Ykk9
DQo9emU2eg0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--0000000000003597b9064237efc1--

