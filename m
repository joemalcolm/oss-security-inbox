Received: (qmail 9561 invoked by uid 550); 13 Dec 2023 14:59:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11517 invoked from network); 13 Dec 2023 14:11:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702476709;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=yMDlmIBfkDwSnk84fdtoBhsKgZG8MDN4dihKTIV7hBk=;
	b=BLqN4JdRDnWt8ZIRPDufr7NaPOKMa6i96hNFz2/X/qf1IoBjNprOC6uFmKiBn/NEbFlxT3
	GFVVp/GZaHL6PbgyqVNv/h6uAmBYPL1+LlO0C4trQMCg0yVu1MVurjvC4ajcnPlSGZSEeb
	hi9s5uzJeJ66YGEmo+TjI/98tAyPAaA=
X-MC-Unique: -rrCI1sZPxWhFzTtMwVemA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702476706; x=1703081506;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yMDlmIBfkDwSnk84fdtoBhsKgZG8MDN4dihKTIV7hBk=;
        b=bfRC+siHptewrmbxiKFEzNC0BUPXh+FNWfcPz3RDRLbdQ9Mk65U0KkIDW0oq2bnpTR
         T7rcUaWpjO1Xfd0B1MdjQoStxeQR4F+1XzRa++vX12Vky6LMl07kP0kUFEyqa+Bz/3s7
         WtwB0Qq9X5ninE4GXArAtuOgfpN4TaVzrkNNfx06F/tBW0bqJSh68jCahd3tFVEVVqRs
         oyyQ/1euo/JLQBdIa+W1qRMBWJJQ0DlYPGRDck7t+578UV2fGanfHNWs00WloFQysJwA
         JHgg6iWnIAKdWWaNluIrM+vWhZJCH+Fik6KR6cY+7rrRr4OlrsK8Dq46wrlxPtOOpEYo
         EQsg==
X-Gm-Message-State: AOJu0Yyv37iD0cVAc/hlkWW/En8xpmlnRvo6iA3Y6KS8PjWSTBeQggGV
	Tu2G2BTNqJ8hgfauOHfNQHvjQY7or53G50eMGUyJI1LeoDAvt9LCd6GanjeXsG3MgYJArZ9TJaW
	IjN5CjWfHCLAVnND9K4ujrB5w889D+9XornU1rNIDzXTZ4I4YbIhyZO8=
X-Received: by 2002:a05:651c:1252:b0:2cc:3804:436 with SMTP id h18-20020a05651c125200b002cc38040436mr342634ljh.77.1702476706373;
        Wed, 13 Dec 2023 06:11:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEb/lLTt8Pxhcnil62LgrzsKyCSzQzXnu+EUCOKpbYPk2eFXED9iMUxhdmTghAkMt61QPMOe1KBtXRR51RzOjQ=
X-Received: by 2002:a05:651c:1252:b0:2cc:3804:436 with SMTP id
 h18-20020a05651c125200b002cc38040436mr342631ljh.77.1702476706107; Wed, 13 Dec
 2023 06:11:46 -0800 (PST)
MIME-Version: 1.0
From: Jakub Jelen <jjelen@redhat.com>
Date: Wed, 13 Dec 2023 15:11:35 +0100
Message-ID: <CAHrFiA_XB=rFrdC8+8KTwbi9-Jwf6fiGwNEEngmApg-v_VzZWg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-40661: Dynamic analyzers reports in pkcs15-init in OpenSC
 before 0.24.0

This advisory summarizes automatically reported issues that are
security relevant that were reported since the release of OpenSC
0.23.0 and that are relevant to the handling the card enrollment
process using pkcs15-init.

All of these require physical access to the computer at the time user
or administrator would be enrolling the cards (generating keys and
loading certificates, other card/token management) operations. The
attack requires crafted USB device or smart card that would present
the system with specially crafted responses to the APDUs so they are
considered a high-complexity and low-severity. This issue is not
exploitable just by using a PKCS#11 module as done in most of the
end-user deployments.

Security-related oss-fuzz issues

Stack buffer overflow in sc_pkcs15_get_lastupdate in pkcs15init
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60769
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60527
fixed with 245efe608d083fd4e4ec96793fdefd218e26fde7

Heap buffer overflow in setcos_create_key in pkcs15init
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60672
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=64181
fixed with
440ca666eff10cc7011901252d20f3fc4ea23651
4013a807492568bf9907cfb3df41f130ac83c7b9

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60650 Heap
buffer overflow in cosm_new_file in pkcs15init
fixed with 41d61da8481582e12710b5858f8b635e0a71ab5e

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60616 Heap
double free in sc_pkcs15_free_object_content
fixed with 638a5007a5d240d6fa901aa822cfeef94fe36e85

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=58932 Stack
buffer overflow in cflex_delete_file in pkcs15init
fixed with c449a181a6988cc1e8dc8764d23574e48cdc3fa6

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=56213 Heap
buffer overflow in sc_hsm_write_ef in pkcs15init
not in any released version, fixed with dd138d0600a1acd7991989127f36827e5836b24e

Stack buffer overflow while parsing pkcs15 profile files
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=55998
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=55851
fixed with 5631e9843c832a99769def85b7b9b68b4e3e3959

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=54312 Stack
buffer overflow in muscle driver in pkcs15init
fixed with df5a176bfdf8c52ba89c7fef1f82f6f3b9312bc1

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=53927 Stack
buffer overflow in cardos driver in pkcs15init
fixed with 578aed8391ef117ca64a9e0cba8e5c264368a0ec

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=64215 Heap
buffer overflow in epass2003 driver in pkcs15init
fixed with 609164045facaeae193feb48d9c2fc5cc4321e8a

Heap buffer overflow in iasecc driver in pkcs15init
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=63949
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=63587
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=63163
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=61797
fixed with
8fc2c20c3f895569eeb58328bb882aec07325d3b
fbda61d0d276dc98b9d1d1e6810bbd21d19e3859
83b9129bd3cfc6ac57d5554e015c3df85f5076dc
2a4921ab23fd0853f327517636c50de947548161

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=63104 Stack
buffer overflow in entersafe driver in pkcs15init
fixed with 50f0985f6343eeac4044661d56807ee9286db42c

Heap buffer overflow in oberthur driver in pkcs15init
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60650
https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=62613
fixed with 41d61da8481582e12710b5858f8b635e0a71ab5e

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=61750 Stack
buffer overflow in idprime driver in pkcs15init
fixed with fa8ad362852dbefad5b6796c32f2a33859b8a8e0

https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=60971 Heap
buffer overflow in test_verify
fixed with ffbff25ec6c6d0ad3f8df76f57210698f7947fc3

Originally reported by OSS-fuzz automated service



The full release notes for the 0.24.0 is available in announce list:

https://sourceforge.net/p/opensc/mailman/message/58712583/

and on github:

https://github.com/OpenSC/OpenSC/releases/tag/0.24.0

