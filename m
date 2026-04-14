Received: (qmail 21597 invoked by uid 550); 14 Apr 2026 15:38:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7734 invoked from network); 14 Apr 2026 13:48:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776174495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TkstHg/b2J1ZRbuDiJK8/ty6RjJiMC34XctrZVbi8mE=;
	b=ImCVOVxiXeVGqUQ8DhrPtcqvkf0kR5FeWA0bc7MBhLMtQ0vz1YCoWPK0cFCakVCHQMxv7K
	w9yxyRmlVZbB21lEVHimlAxmuHUGAsXl3qwevGBYGwdR/lLKQZIo6+HhP/zn6bzv8ARjke
	ob7fR1IAeHyWfUxJmcPyQgXyXFEl9aY=
X-MC-Unique: 3QqAsvTXOrGsa4INeOoAuA-1
X-Mimecast-MFC-AGG-ID: 3QqAsvTXOrGsa4INeOoAuA_1776174492
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776174491; x=1776779291;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkstHg/b2J1ZRbuDiJK8/ty6RjJiMC34XctrZVbi8mE=;
        b=HDh6rovEJGXIC48OqzviP/8azAiTT/8O1hZxSPkdmwW68UCQsHFxd7GGvwsKFaNSK4
         TlmH5EH696pCqX0nB6PDXPDQeLyCdqog7sv5jO6Nibwu/ZtJsL5ySPrELU7wd2MOLjOT
         uBbPqORSENXZphemO72vB4uln7qBHeIbi6WuaTPlixP+mF2QSEaXeIfRxFNwlSo8/vs1
         XlLG6wp1KkYegG/6PlSdJbLXSofsbIhPFnuk+kqPbwyqM+S2tj5WyjUDx4hbtA4CqcrG
         eLvCGUUXByd6XnP/DxCtG4LGRTR2kTPKauz/UjmvfH+0xuK4gAjzNAgQFPSBr3IfZ9Wn
         mfQw==
X-Gm-Message-State: AOJu0Yzz3aV/8wW50/f1skr6/kbLrAHcWSvZUSuji0eOskchF6VMAm4e
	Pcl9xk+uIsYHJsthTlIfT8k5MTly5vsvATgDYLXR+Y0EaqpSntj3I+21ewPZDCPiQwl3ghKCu1w
	Rk/h8AC1HGRj3b+SUwwmm2ynjcYZg8RkA/uofm+iCTb1BoDMUyKymfYcP8bUh3QywpvYTs6NhVL
	ojXJJXeAmI7r3xzPTflREAytp2QYSPN4ekQ+t6zTF2+wXRzPlZO++C
X-Gm-Gg: AeBDies+QJglmXhUYSHiMvHd1RPaqwIEVeoxjEocxGSkK3LWmb4cSr8dMimara33n8z
	w7uQh34iHtesa2GBLobw1bF/4LXY5M/mKuoASWVcElpH7l/Q85Fc/5+B72yRuoWi1EjP873ArJ4
	HtkLl+MtOIEAC//CzNM33oX7KRujLn8jT+M3q1d9Zds7dFQH9lE+wytG3V7UBU5CgNiY6WWsaTr
	28/XjuESrGiwuIgSipVXkmv/PwtuWuxDDtWFHnLM/t2b6GCDr1DA4Q8mbhHY5nLFOXIWwynQiH2
	c4PX
X-Received: by 2002:a05:6870:b48a:b0:41c:6ded:291c with SMTP id 586e51a60fabf-423e11719dcmr9510700fac.35.1776174491161;
        Tue, 14 Apr 2026 06:48:11 -0700 (PDT)
X-Received: by 2002:a05:6870:b48a:b0:41c:6ded:291c with SMTP id
 586e51a60fabf-423e11719dcmr9510671fac.35.1776174490428; Tue, 14 Apr 2026
 06:48:10 -0700 (PDT)
MIME-Version: 1.0
References: <658f8792-251f-43e8-af1f-415b78872be3@redhat.com>
In-Reply-To: <658f8792-251f-43e8-af1f-415b78872be3@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, 14 Apr 2026 15:47:33 +0200
X-Gm-Features: AQROBzCDVfmODrotplkAWOtFkJz-nb2IqXSQrCfXxb-xqGRSBT_acTbWf6I5s0Y
Message-ID: <CAP=2yyQ2EghfuepLsAopsRpgH8eQLUg5G_JRM=ScMR2NVcjYhw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-MFC-PROC-ID: hJl5j7v8bOtxAH3f1fMaxTZRquvbhPBx9rX-oFa-GPQ_1776174492
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="00000000000090405f064f6bd9bf"
Subject: [oss-security] Fwd: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

--00000000000090405f064f6bd9bf
Content-Type: text/plain; charset="UTF-8"

======================================================================
X.Org Security Advisory: April 14, 2026

Issues in X.Org X server prior to 21.1.22 and Xwayland prior to 24.1.10
======================================================================

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.22 and xwayland-24.1.10.


* CVE-2026-33999: XKB Integer Underflow in XkbSetCompatMap()

   If a "compat" buffer was previously truncated, there will be unused
   space left in the buffer. The code in XkbSetCompatMap() will use that
   space, but fails to update the number of valid entries actually in the
   buffer.

   As a result, that can lead to buffer read overrun when processing a
   future request.

   Introduced in: Prior to X11R6.6 Xorg baseline
   Fixed in: xorg-server-21.1.22 and xwayland-24.1.10
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/b024ae17
   Found by: Jan-Niklas Sohn working with TrendAI Zero Day Initiative.

* CVE-2026-34000: XKB Out-of-bounds Read in CheckSetGeom()

   Each key alias entry contains two key names (the alias and the real
   key name).

   The code in CheckSetGeom() does its bounds checking using only the
   first name, allowing XkbAddGeomKeyAlias to read uninitialised memory.

   Introduced in: xorg-server-21.1.4 and xwayland-22.1.3
   Fixed in: xorg-server-21.1.22 and xwayland-24.1.10
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/81b6a34f
   Found by: Jan-Niklas Sohn working with TrendAI Zero Day Initiative.

* CVE-2026-34001: XSYNC Use-after-free in miSyncTriggerFence()

   When walking the list of fences to trigger, miSyncTriggerFence() may
   call TriggerFence() for the current trigger, which end up calling the
   function SyncAwaitTriggerFired().

   SyncAwaitTriggerFired() frees the entire await resource, which removes
   all triggers from that await, including the next entries in the list
   of fences, leading to a use-after-free.

   Introduced in: xorg-server-1.9.0
   Fixed in: xorg-server-21.1.22 and xwayland-24.1.10
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f19ab94b
   Found by: Jan-Niklas Sohn working with TrendAI Zero Day Initiative.

* CVE-2026-34002: XKB Out-of-bounds read in CheckModifierMap()

   CheckModifierMap() reads from the wire in a loop without verifying that
   the data remains within the bounds of the client request.

   As a result, the total number of keys could exceed the actual data
   provided, causing a potential read of uninitialised memory.

   Introduced in: Prior to X11R6.6 Xorg baseline
   Fixed in: xorg-server-21.1.22 and xwayland-24.1.10
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/f056ce1c
   Found by: Jan-Niklas Sohn working with TrendAI Zero Day Initiative.

* CVE-2026-34003: XKB Buffer overflow in CheckKeyTypes()

   The function CheckKeyTypes() will loop over the client's request but
   won't perform any additional bound checking to ensure that the data
   read remains within the request bounds.

   As a result, a specifically crafted request may cause CheckKeyTypes()
   to read uninitialised memory past the request data.

   Introduced in: Prior to X11R6.6 Xorg baseline
   Fixed in: xorg-server-21.1.22 and xwayland-24.1.10
   Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/b85b00dd
        https://gitlab.freedesktop.org/xorg/xserver/-/commit/d38c563f
   Found by: Jan-Niklas Sohn working with TrendAI Zero Day Initiative.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

--00000000000090405f064f6bd9bf
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Disposition: attachment; filename="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Transfer-Encoding: base64
Content-ID: <19d8c3eaca5dde96bc71>
X-Attachment-Id: 19d8c3eaca5dde96bc71

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

--00000000000090405f064f6bd9bf
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_signature.asc"
Content-Disposition: attachment; filename="OpenPGP_signature.asc"
Content-Transfer-Encoding: base64
Content-ID: <19d8c3eaca6e0fb168b2>
X-Attachment-Id: 19d8c3eaca6e0fb168b2

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0Kd21NRUFCRUlBQ01XSVFSbjNJYnlZai9G
L1V1MUlsMFVjRzIrSGt0RlFBVUNhZDVEQVFVREFBQUFBQUFLQ1JBVWNHMitIa3RGUUxrZA0KQUtD
M0hSRXVxc09yWGZydE9oUTJtUUE3VzN1a2pRQ2VQRTF6TFBQTlBrcDFWYzNXdGxvbmtFbmpadlU9
DQo9Ykc0Zg0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--00000000000090405f064f6bd9bf--

