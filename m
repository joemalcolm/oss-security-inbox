Received: (qmail 10053 invoked by uid 550); 17 Jun 2025 14:11:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22086 invoked from network); 17 Jun 2025 13:50:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750168191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q8N5xIo+F51R0b1QCzlkPxC7ApzsWu34/cC+9H4vCWI=;
	b=YNhwIo+/m8EqdIkI5t/csUIJKq8Ysh59a38sN7HJYSKJYPuR/uluzS7ZDSLwAzNe1WZvih
	K2y+SFhgIwk8OXUeok9WdlRx+ZDgMbRBFGTAY0xuz+Z7Xkqbpm46o59kQAZj7+qFgkR8Mc
	nUYsi2ud8c/VvCTVuOw+r8JTxYksXes=
X-MC-Unique: NnaDXjFkMaiNmHsn4TV1AA-1
X-Mimecast-MFC-AGG-ID: NnaDXjFkMaiNmHsn4TV1AA_1750168190
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750168190; x=1750772990;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8N5xIo+F51R0b1QCzlkPxC7ApzsWu34/cC+9H4vCWI=;
        b=E6T4kYfCxRtl2ryFXJSV2X2buWBuZMOhvpDQ5N6nnKY308aNJW7Ksrbne/03J4+eyP
         X2wKPYdY2in/NGeG3gw1ibCYWTAUZaLpVGvHOITf42bEtBkAM1Bwa4uBuCEJDB8k8kDa
         I66TuEKVQ0ap65R91Ai0IC2U42YP6Il7NhZepCYbcQjyLIUkK+fSd1zD9cmABpnx9mIz
         cji50qat6KH3fNz3+FDmVjZmKjW8KNjZ+HeSXoQ7ctMyNEV4hxYMXiK0azB4h9EnTJx9
         rBtzd4TvW8oXJuCafEWA9K83eiE+RdUESGL+yWDlDeul8Wd1eElEj625m7DFtiWSM9jk
         D/BA==
X-Gm-Message-State: AOJu0Yzk6lRjNjWzovQlYzENZ5LF69jDOloed8uPECXPm9VSoaJpjJjj
	thY0sHS0Qxoiv2JcU187Ua0O/ZJUEJV5WRi09QMFMquQ04cUaUHlnV9S5SUB0VN7Bq1FuisCGJe
	7RiWmyH9jD56vX5Crb4CRcPbTntDpWgp0xmANz2NbGcW6h3EMhbfuSgtXhy89yr6Ep3Ouz7BpH7
	1ozfwCGms9gHiIkpkaS36k7NuNkRDhekhnTi5xgbJrqIrgs6O7hgjs
X-Gm-Gg: ASbGncsOwuNyeuU3T0KubRXJ8B4QdIzlwBbpeIkqmqxILVktBsLtlXWuQn8EoVfUo7p
	z/yxBUKaeICrc2qx58pCYEfpSMM0oSpRpnJiN1+lvqmYAT4SEUY/17+rcX6RxnUNvef/4cvFLHr
	z7F0I=
X-Received: by 2002:a05:6870:219e:b0:2e9:42a9:be4a with SMTP id 586e51a60fabf-2eaf070b91emr7427349fac.2.1750168189881;
        Tue, 17 Jun 2025 06:49:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxBRUyQyDs+cF9FdcoCQxuYiAPCtVB0OQ44LJZplZSn+j1RByFg2cjtChEBv3pFjmBlxzlrPTC0Wkf/86YXpo=
X-Received: by 2002:a05:6870:219e:b0:2e9:42a9:be4a with SMTP id
 586e51a60fabf-2eaf070b91emr7427336fac.2.1750168189434; Tue, 17 Jun 2025
 06:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <3663e7ee-4599-4d11-ae62-900477cc48d9@redhat.com>
In-Reply-To: <3663e7ee-4599-4d11-ae62-900477cc48d9@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, 17 Jun 2025 15:49:13 +0200
X-Gm-Features: AX0GCFtl5zQCUoKr2VGKk0b_1ZoCWzsDpWKErlgnbAjVz29LQhY9aXQrGkVa_oE
Message-ID: <CAP=2yyTBW52sNxVMwBsGwKU8HPxr=U4ZfbGdNJcihJks45PLPQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yULtQ6NH3kga0fLR_jKwoIrxP1SVuHkd_kAS_C9wUJI_1750168190
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Fwd: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

======================================================================
X.Org Security Advisory: June 17, 2025

Issues in X.Org X server prior to 21.1.17 and Xwayland prior to 24.1.7
======================================================================

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.17 and xwayland-24.1.7.

1) CVE-2025-49175: Out-of-bounds access in X Rendering extension
(Animated cursors)

The X Rendering extension allows creating animated cursors providing a
list of cursors.

By default, the Xserver assumes at least one cursor is provided while a
client may actually pass no cursor at all, which causes an out-of-bound
read creating the animated cursor and a crash of the Xserver.

Introduced in: X11R6.7 (originally from XFree86 4.3.0)
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/0885e0b2
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

2) CVE-2025-49176: Integer overflow in Big Requests Extension

The Big Requests extension allows requests larger than the 16-bit length
limit.

It uses integers for the request length and checks for the size not to
exceed the maxBigRequestSize limit, but does so after translating the
length to integer by multiplying the given size in bytes by 4.

In doing so, it might overflow the integer size limit before actually
checking for the overflow, defeating the purpose of the test.

Introduced in: X11R6.0
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/03731b32
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

3) CVE-2025-49177: Data leak in XFIXES Extension 6
(XFixesSetClientDisconnectMode)

The handler of XFixesSetClientDisconnectMode does not check the client
request length.

A client could send a shorter request and read data from a former
request.

Introduced in: Xwayland-22.0.99.1 (22.1 RC1)
                Xorg server 21.0.99.1 (21.1 RC1)
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/ab02fb96
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

4) CVE-2025-49178: Unprocessed client request via bytes to ignore

When reading requests from the clients, the input buffer might be shared
and used between different clients.

If a given client sends a full request with non-zero bytes to ignore,
the bytes to ignore may still be non-zero even though the request is
full, in which case the buffer could be shared with another client who's
request will not be processed because of those bytes to ignore, leading
to a possible hang of the other client request.

Introduced in: Xorg 1.10.0
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/d55c54ce
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

5) CVE-2025-49179: Integer overflow in X Record extension

The RecordSanityCheckRegisterClients() function in the X Record extension
implementation of the Xserver checks for the request length, but does not
check for integer overflow.

A client might send a very large value for either the number of clients
or the number of protocol ranges that will cause an integer overflow in
the request length computation, defeating the check for request length.

Introduced in: X11R6.1
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/2bde9ca4
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

6) CVE-2025-49180: Integer overflow in RandR extension
(RRChangeProviderProperty)

A client might send a request causing an integer overflow when computing
the total size to allocate in RRChangeProviderProperty().

Introduced in: Xorg server version 1.12.99.901 (1.13 RC1)
Fixed in: xorg-server-21.1.17 and xwayland-24.1.7
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/3c3a4b76
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/0235121c
Found by: This issue was discovered by Nils Emmerich and reported by
           Julian Suleder via ERNW Vulnerability Disclosure.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

