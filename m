Received: (qmail 3894 invoked by uid 550); 29 Mar 2023 12:36:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32576 invoked from network); 29 Mar 2023 12:32:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680093120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QZDey/tO6YJiD2PM269x3GZhPWecuN7JoZJ/dKIbnOE=;
	b=T4sHWiFOwlhQmkYcvcMApe5jz8v9F1MAyfBYscmFBOjxtQGTN4swdQU7w/VsbqPC99aeaL
	mbZvatHs1m2Ugesgs7kABOsrvQBLEstg0ATBmHbkmTX73kuFfoCpe/zfa/f6hwpHAM3/Nj
	aOf1kAYhYrV+xTgakgLIKpbaKXLwbwM=
X-MC-Unique: m1jyVv8VPBuf_o39VW55Vw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680093118;
        h=in-reply-to:from:to:references:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QZDey/tO6YJiD2PM269x3GZhPWecuN7JoZJ/dKIbnOE=;
        b=l4ySLRkQS+ZZdn0+JDsseGyv30O+7Fv/EMMNdOGonIlQCLpv0eqWl13Bmmy6bUkWAq
         unl7Ehgwfj49CzzMLrEt0f1jW7QP7W32pO02VrrQrFB6Qv0KgfBU/Sywklt5YsQdh+G4
         BaDw5TZTRLQEtRcI1lfpVk3YpHX6Vvr3yvWnY8SlGRyR394z4IjUVCQ+xUOk4fvEd3Bb
         4SxBpd8gHovJR72sP+irPx+48Hq2IC/H75Vnr9U9fHYc90S6WztQGnIG8PINeNrJ6IX3
         FADSsj//IfQPZXhyLKepfzHfJx+ZIboDV9pVcssUOwnYgbzsWz8uxKduNtVNCa6+Hil3
         uUUQ==
X-Gm-Message-State: AAQBX9exKAwMaQ1Xe5NZsKoEmhopO1rxZ1QLqyyRZq49FT+Mew+cQXFz
	tbCe5FRClQ6dNBAZiT7j5wgoj3t4jEfDlqMxyvQOyw7Wf3qRPPT3O6nMYwJckNrH2aNm6zE8krR
	QcmZbj9lmvHpxSVOFNevSSNs2R4Y1jkdlKRc+Ou9uR1k6DMtv9iNenyoD0ZN/1ybfTBlhevufNV
	GSTdALBdPpCoq+
X-Received: by 2002:ad4:5945:0:b0:5c0:78bd:c262 with SMTP id eo5-20020ad45945000000b005c078bdc262mr2480474qvb.20.1680093117827;
        Wed, 29 Mar 2023 05:31:57 -0700 (PDT)
X-Google-Smtp-Source: AKy350Zqm36xg8kaxqHJ6NInDGZbfGYY5LlRCzlXXA/s4SIlnzKRjdL6dtmGggoU21cW1WbBoO5J6Q==
X-Received: by 2002:ad4:5945:0:b0:5c0:78bd:c262 with SMTP id eo5-20020ad45945000000b005c078bdc262mr2480413qvb.20.1680093117216;
        Wed, 29 Mar 2023 05:31:57 -0700 (PDT)
Message-ID: <1e4b5d5c-f78e-348e-7651-6013bcd54fc5@redhat.com>
Date: Wed, 29 Mar 2023 14:31:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
References: <c9e91f68-1e32-5f46-b394-8f6545e5cf9b@redhat.com>
To: oss-security@lists.openwall.com
From: Olivier Fourdan <ofourdan@redhat.com>
In-Reply-To: <c9e91f68-1e32-5f46-b394-8f6545e5cf9b@redhat.com>
X-Forwarded-Message-Id: <c9e91f68-1e32-5f46-b394-8f6545e5cf9b@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------POP9mAiNCXZbtPvkcr0erZxB"
Content-Language: en-US
Subject: [oss-security] Fwd: X.Org Security Advisory: CVE-2023-1393: X.Org Server Overlay
 Window Use-After-Free

--------------POP9mAiNCXZbtPvkcr0erZxB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


-------- Forwarded Message --------
Subject: X.Org Security Advisory: CVE-2023-1393: X.Org Server Overlay Window Use-After-Free
Date: Wed, 29 Mar 2023 14:15:05 +0200
From: Olivier Fourdan <ofourdan@redhat.com>
To: xorg-announce@lists.x.org
CC: xorg@lists.x.org, xorg-devel <xorg-devel@lists.x.org>, zdi-disclosures@trendmicro.com

X.Org Security Advisory: March 29, 2023

X.Org Server Overlay Window Use-After-Free
==========================================

This issue can lead to local privileges elevation on systems where the X
server is running privileged and remote code execution for ssh X forwarding
sessions.

ZDI-CAN-19866/CVE-2023-1393: X.Org Server Overlay Window Use-After-Free
Local Privilege Escalation Vulnerability

If a client explicitly destroys the compositor overlay window (aka COW),
the Xserver would leave a dangling pointer to that window in the CompScreen
structure, which will trigger a use-after-free later.

Patches
-------
Patch for this issue have been committed to the xorg server git repository.
xorg-server 21.1.8 will be released shortly and will include this patch.

- commit 26ef545b3 - composite: Fix use-after-free of the COW
    (https://gitlab.freedesktop.org/xorg/xserver/-/commit/26ef545b3)

ZDI-CAN-19866/CVE-2023-1393

If a client explicitly destroys the compositor overlay window (aka COW),
we would leave a dangling pointer to that window in the CompScreen
structure, which will trigger a use-after-free later.

Make sure to clear the CompScreen pointer to the COW when the latter gets
destroyed explicitly by the client.

Thanks
======

The vulnerabilities have been discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative.
--------------POP9mAiNCXZbtPvkcr0erZxB
Content-Type: application/pgp-keys; name="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Disposition: attachment; filename="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: 7bit

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsDiBERd0h4RBACflXMwRMuZ/gICB7oM/SwnYMoDeRVaZHYT2RtI6iaNQpovoMas
fbLX31icweQm9sMLQJR/bNABpp28Fs1S4yNt9SwAProigexyWl3fFE3uqoVRmglZ
uQdyXl7nnPC7A3hxHPX88tsZS4UlLFRssTjNnrzzhSR3xyyIlOJnmG5pJwCg/yaH
DECRtdWm9gIJZwfM6S+ANYUD/0s6FPCIdbDqCzNcMH7YZID+JjBOU3VlRdXfzGmx
Iy2aPBpC9pkb0EUEL94QZ5Ysa1EGNnNUPq8dQWOr/NllCt2/l0HDLGoziBCpBTvG
ZNnFaJoErG0kmCH2u0w9VmKKSBq6C0sI8rFW1JthKc/bu6ucBKKbpi4sFYAMyZHn
sNbzA/9VYevyns5TmZeR7t+x8YRj6xZxWVNGm20gnBBhHVnq/EGIn4a/YN1NLFNc
4EuarFnzl0w6L1IQHanM+ajBJgzL4oSYCufhTSXgA2utrpIRtKkRW9JH6zt3J5hk
W8oIcEsY3YRKQ3iVKS3Kz8PgSwezNewFT6o3Juu//95O5qSm8s0iT2xpdmllciBG
b3VyZGFuIDxmb3VyZGFuQHhmY2Uub3JnPsJ6BBMRAgA6AhsjBgsJCAcDAgQVAggD
BBYCAwECHgECF4ACGQEWIQRn3IbyYj/F/Uu1Il0UcG2+HktFQAUCXx7jggAKCRAU
cG2+HktFQMAMAJ4kmAtOA9YEazO+1TNxEvEDZbEDSwCfUVR27NAtNegGOMO7piF1
KrurTenCYwQTEQIAIwUCRF3SHgUJCWYBgAYLCQgHAwIEFQIIAwQWAgMBAh4BAheA
AAoJEBRwbb4eS0VA8+wAoJi6ZBRk43FBp8154yMNO9SUItB0AJ4rDBZ6dJAUCKnb
9pbn2fWMV2YQ98JpBBMRAgApAhsjBgsJCAcDAgQVAggDBBYCAwECHgECF4AFCRpU
HdIFAkajy3QCGQEACgkQFHBtvh5LRUA0hwCff1hwCeEucHWkhFAO4EiIiGEUxJwA
oNlgcwHVYhqSesplI6ePAoEfDac5zSVPbGl2aWVyIEZvdXJkYW4gPG9mb3VyZGFu
QHJlZGhhdC5jb20+wncEExECADcCGyMGCwkIBwMCBBUCCAMEFgIDAQIeAQIXgBYh
BGfchvJiP8X9S7UiXRRwbb4eS0VABQJfHuODAAoJEBRwbb4eS0VAwOoAn1jPsEMW
v/z9pqvw2We5FDLbi0ncAJ9WbA5E1fHh8m31NdSyFy2tXt8wfcJmBBMRAgAmBQJG
o8g5AhsjBQkJZgGABgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQFHBtvh5LRUAL
GQCgmvZZoMKZC81KV+HGlmYvy/CkivAAnj4rIzP4L/dAFXftAa9BvfMoSw/SwmYE
ExECACYCGyMGCwkIBwMCBBUCCAMEFgIDAQIeAQIXgAUCRqPLWAUJGlQd0gAKCRAU
cG2+HktFQKczAKDeq33Q9kYEKPAL5FdFAfX5HOdbMQCgrJ1XMhV5ELa+QYhFTH6T
mNfffejNI09saXZpZXIgRm91cmRhbiA8Zm91cmRhbkBnbWFpbC5jb20+wncEExEC
ADcCGyMGCwkIBwMCBBUCCAMEFgIDAQIeAQIXgBYhBGfchvJiP8X9S7UiXRRwbb4e
S0VABQJfHuODAAoJEBRwbb4eS0VAnkYAn3JimwxnmhYjwq/WoZ/QyVFFmDFMAJ4v
QFng2LaebkTG6/YInF5P8qlwncJmBBMRAgAmBQJGo8gKAhsjBQkJZgGABgsJCAcD
AgQVAggDBBYCAwECHgECF4AACgkQFHBtvh5LRUBydACfba08blV5kvAdN/mSKD1N
gAHsiIcAoPbpCWW3IUiZ/1T9v8YTuDbtLWkLwmYEExECACYCGyMGCwkIBwMCBBUC
CAMEFgIDAQIeAQIXgAUCRqPLWAUJGlQd0gAKCRAUcG2+HktFQISoAJ9ybOFFTByE
yt24KXBAlesX7qBIlACgmWtgSW3ZzoGwJXG0knERqSPDDDzOwU0ERF3SSRAIAI0c
lctVOjdLUtE1ZRYS7Reu/oXSPns8duS4CLHmknF3kgn8uN6L6fptwFzh3yizCMGv
Td4YA4/NimzsQxXmar9fDRg/VHEPsaHrWanE3VPMxBoRyPtnNeQtQXrRb8XCZllo
GvmYQ/CZ8N9IaUq/Q8bbpqyr+dJy/gy+gc0aCxPdZhghxvOKrcJZg7zks52cQegz
Tne6rjU0o/eTeySkWgboL4RaLQndUVX7LJ1UgL3mxr30fgv6JxmN8YkD6lSbb8+i
vXhHX8LNuY8wmX+tCIrlm+20hpWtLEyB3HSnqgyC7Y1v0ZPYmQaRm1AQcafikFml
9CieH9DaV6avfPQLkgsAAwUH/2BX9xYtFY85fSKP7Kz0ClcCHpuweIkmTbPWDT91
HQmf2dRbzI88CV3ZzawJMJHHL1Nua7CGNX1Z+cFJz4QTkyAOXXNlbHaVRXF2Epnw
FfjF5UM/D5j3YiUhXoam1LKz8/VRw3ZDDdc349jKPJEWNEmqs9NeGhSC2YsL2TsO
BaBzWPvRXS1otPCaKOTuDa9h2T8om2SEvqvJjd0jdC0o4khJ8zsYtE3vZBXbyfdf
cn5ktWedyEt6lcRMI04bvu2+j6B68GwtVDNr/RHaDPd+UkbZSHwiRoxGkRUQttYv
Lh/NrtLo8a6NQFWAePMM8nU2P7n6AcRf357nqbwnQWJ/TyvCXQQYEQIAHRYhBGfc
hvJiP8X9S7UiXRRwbb4eS0VABQJfHuPcAAoJEBRwbb4eS0VAnL4Anim4vNYyrDc8
NTdS3mgWGtdXVjWdAKCjUhzkN3uCaYNJR6h0Y1thYuPEJA==
=cxyl
-----END PGP PUBLIC KEY BLOCK-----


--------------POP9mAiNCXZbtPvkcr0erZxB--

