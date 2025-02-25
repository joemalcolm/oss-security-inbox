Received: (qmail 15563 invoked by uid 550); 25 Feb 2025 15:53:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30239 invoked from network); 25 Feb 2025 15:42:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740498131;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=visx6pJNplEVjH43kQw+mE9+m2Rda8BWJygOgbCA04k=;
	b=QNuiHiGNxI+657QbmJTSwHAdB0CGvrVf8J9d/clH11Mqza3SI2mmEuKrIvpcrBQurXUIHG
	g8KrvlpTMwNTQDZGB7m0LveySTrxsQIsv4Ug6D2Z7/dHyI4ABZQbQJvaCwZurpywGNTVpw
	ahhTX4BJWcR9QiL8neAO58zOIa96eGY=
X-MC-Unique: W3_Mo9jcNEyKytu8W_V7_Q-1
X-Mimecast-MFC-AGG-ID: W3_Mo9jcNEyKytu8W_V7_Q_1740498129
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740498129; x=1741102929;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkhXZHANp/23J+m5R2K8ZQ6We8FW7GxKVPuTxSbuxEw=;
        b=ghZ4+2hLRW5+4IaYsVVYpYExhuowWVqfCtrabqMCjEolW6pxdeXcV8WkrqEsHMHIbX
         eV3pMc4GzL3ss+qVCo7Sqf/9l2m4rNee3BbGYCiZDwy0GHXVVfy7hbIBNg9ODb2bAtwJ
         2WgcsmfaxvQQeZNKiH0ynK7O1WcIlqXxDrC5cF0hgVtKXI0yK9UDWeBGbUhA66O/109q
         OxVQTLN2lbG6y+MOAlxUFX89F88U8BtSYywn8zcOdu8xdVpwmOkOFy6PxO4WHKkxfrHr
         WAXQ4Q8b47UzIWICv2m8Ei6nLfLcSahod3Sk/KVxEhy17k/vhvP+i8rlOVXDbqGkPXmM
         /4Fw==
X-Gm-Message-State: AOJu0Yx1KCAOh3E5iRG+0mnvFbHnM01h2fw5l554YXpMLGhbE7E7ykX9
	RVt9xJZMrhLe9eVAqo/1xMxvGClS9qUjunfDhniehaAdMwzWGgQnCXuTKiVwPpz/iefq2R484bi
	e15qd56dUPS4Facxsk+3YkIng9PdFV/QV9lonYJsHAU2kUwJxvoWPHK48fURpqo9erFPb4vAtC/
	YMOYa2hqCOSPMhoYL6QzjM/h9oDQNhTc6fHHYn+jpHQqV/1OMnva8=
X-Gm-Gg: ASbGncvlrHRVCEPjyailnbx/4JnuKVDb7tQ00WvNw7+gg2kW4yMXhhysKoDA6nHVKUs
	3ZcVe73jcGNQm7Rloi6koviBefeGVlYp8oesHr5prfVOZXOyUA5cXW9Vr0ls/Be2UoOvfE86M
X-Received: by 2002:a05:6830:6d17:b0:727:36a0:a2a2 with SMTP id 46e09a7af769-7274c1bcb21mr14674341a34.12.1740498128745;
        Tue, 25 Feb 2025 07:42:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IED3KiTI4lMIvsgKDuiLLdQlVS3CAmfliKoZxgAJONQGTr2oqG+gis2QKYv8HAQIaeX+LugU8tdE10/F8h50QQ=
X-Received: by 2002:a05:6830:6d17:b0:727:36a0:a2a2 with SMTP id
 46e09a7af769-7274c1bcb21mr14674315a34.12.1740498128084; Tue, 25 Feb 2025
 07:42:08 -0800 (PST)
MIME-Version: 1.0
References: <8511e4a8-8798-4d92-b61d-60be8eb85dda@redhat.com>
In-Reply-To: <8511e4a8-8798-4d92-b61d-60be8eb85dda@redhat.com>
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, 25 Feb 2025 16:41:30 +0100
X-Gm-Features: AQ5f1JpZfDilwmiavt8Bbrv1ZZpWcNawMZpTqy-FaE6TA--WkdmD4k4zwfGo61Q
Message-ID: <CAP=2yyRYONPtatTqHa3FkOw5md-h1PhZiwxAbTKNUmCWaZLRPw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nEq58Uwg-12hmZZkg_DnBevJ274vldwEe9lPuTkcqFU_1740498129
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="000000000000a89ccc062ef94c32"
Subject: [oss-security] Fwd: X.Org Security Advisory: multiple security issues X.Org X server
 and Xwayland

--000000000000a89ccc062ef94c32
Content-Type: multipart/alternative; boundary="000000000000a89ccb062ef94c30"

--000000000000a89ccb062ef94c30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Olivier Fourdan <ofourdan@redhat.com>
Date: Tue, Feb 25, 2025 at 4:39=E2=80=AFPM
Subject: X.Org Security Advisory: multiple security issues X.Org X server
and Xwayland
To: <xorg-announce@lists.x.org>
Cc: <xorg@lists.x.org>, xorg-devel <xorg-devel@lists.x.org>


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
X.Org Security Advisory: February 25, 2025

Issues in X.Org X server prior to 21.1.16 and Xwayland prior to 24.1.6
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.16 and xwayland-24.1.6.

1) CVE-2025-26594: Use-after-free of the root cursor

Introduced in: Unknown - Prior to X11R6.6 Xorg baseline
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/01642f26
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/b0a09ba6
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The root cursor is referenced in the xserver as a global variable. If
a client manages to free the root cursor, the internal reference points
to freed memory and causes a use-after-free.

xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue.

2) CVE-2025-26595: Buffer overflow in XkbVModMaskText()

Introduced in: Prior to X11R6.1
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/11fcda87
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The code in XkbVModMaskText() allocates a fixed sized buffer on the
stack and copies the names of the virtual modifiers to that buffer.

The code however fails to check the bounds of the buffer correctly and
would copy the data regardless of the size, which may lead to a buffer
overflow.

xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue.

3) CVE-2025-26596: Heap overflow in XkbWriteKeySyms()

Introduced in: initial version of xc/programs/Xserver/xkb/xkb.c in X11R6
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/80d69f01
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The computation of the length in XkbSizeKeySyms() differs from what is
actually written in XkbWriteKeySyms(), which may lead to a heap based
buffer overflow.

xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue.

4) CVE-2025-26597: Buffer overflow in XkbChangeTypesOfKey()

Introduced in: X11R6.1
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/0e4ed949
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

If XkbChangeTypesOfKey() is called with 0 group, it will resize the key
symbols table to 0 but leave the key actions unchanged.

If later, the same function is called with a non-zero value of groups,
this will cause a buffer overflow because the key actions are of the wrong
size.

5) CVE-2025-26598: Out-of-bounds write in CreatePointerBarrierClient()

Introduced in: xorg-server-1.14.0
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bba9df1a
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The function GetBarrierDevice() searches for the pointer device based on
its device id and returns the matching value, or supposedly NULL if no
match was found.

However the code will return the last element of the list if no matching
device id was found which can lead to out of bounds memory access.

6) CVE-2025-26599: Use of uninitialized pointer in compRedirectWindow()

Introduced in: Xorg 6.8.0.
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/c1ff84be
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/b07192a8
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The function compCheckRedirect() may fail if it cannot allocate the backing
pixmap. In that case, compRedirectWindow() will return a BadAlloc error
without the validation of the window tree marked just before, which leaves
the validate data partly initialized, and the use of an uninitialized
pointer
later.

7) CVE-2025-26600: Use-after-free in PlayReleasedEvents()

Introduced in: X11R5
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/6e0f332b
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

When a device is removed while still frozen, the events queued for that
device remain while the device itself is freed and replaying the events
will cause a use after free.

8) CVE-2025-26601: Use-after-free in SyncInitTrigger()

Introduced in: X11R6
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/16a1242d
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/f52cea2f
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/8cbc90c8
      https://gitlab.freedesktop.org/xorg/xserver/-/commit/c2857989
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

When changing an alarm, the values of the change mask are evaluated one
after the other, changing the trigger values as requested and eventually,
SyncInitTrigger() is called.
If one of the changes triggers an error, the function will return early,
not adding the new sync object.
This can be used to cause a use after free when the alarm eventually
triggers.

--000000000000a89ccb062ef94c30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>Fro=
m: <b class=3D"gmail_sendername" dir=3D"auto">Olivier Fourdan</b> <span dir=
=3D"auto">&lt;<a href=3D"mailto:ofourdan@redhat.com">ofourdan@redhat.com</a=
>&gt;</span><br>Date: Tue, Feb 25, 2025 at 4:39=E2=80=AFPM<br>Subject: X.Or=
g Security Advisory: multiple security issues X.Org X server and Xwayland<b=
r>To:  &lt;<a href=3D"mailto:xorg-announce@lists.x.org">xorg-announce@lists=
.x.org</a>&gt;<br>Cc:  &lt;<a href=3D"mailto:xorg@lists.x.org">xorg@lists.x=
.org</a>&gt;, xorg-devel &lt;<a href=3D"mailto:xorg-devel@lists.x.org">xorg=
-devel@lists.x.org</a>&gt;<br></div><br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
X.Org Security Advisory: February 25, 2025<br>
<br>
Issues in X.Org X server prior to 21.1.16 and Xwayland prior to 24.1.6<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Multiple issues have been found in the X server and Xwayland implementation=
s<br>
published by X.Org for which we are releasing security fixes for in<br>
xorg-server-21.1.16 and xwayland-24.1.6.<br>
<br>
1) CVE-2025-26594: Use-after-free of the root cursor<br>
<br>
Introduced in: Unknown - Prior to X11R6.6 Xorg baseline<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/01642f=
26" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/01642f26</a><br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/xorg/xserver=
/-/commit/b0a09ba6" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/xorg/xserver/-/commit/b0a09ba6</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
The root cursor is referenced in the xserver as a global variable. If<br>
a client manages to free the root cursor, the internal reference points<br>
to freed memory and causes a use-after-free.<br>
<br>
xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue=
.<br>
<br>
2) CVE-2025-26595: Buffer overflow in XkbVModMaskText()<br>
<br>
Introduced in: Prior to X11R6.1<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/11fcda=
87" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/11fcda87</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
The code in XkbVModMaskText() allocates a fixed sized buffer on the<br>
stack and copies the names of the virtual modifiers to that buffer.<br>
<br>
The code however fails to check the bounds of the buffer correctly and<br>
would copy the data regardless of the size, which may lead to a buffer<br>
overflow.<br>
<br>
xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue=
.<br>
<br>
3) CVE-2025-26596: Heap overflow in XkbWriteKeySyms()<br>
<br>
Introduced in: initial version of xc/programs/Xserver/xkb/xkb.c in X11R6<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/80d69f=
01" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/80d69f01</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
The computation of the length in XkbSizeKeySyms() differs from what is<br>
actually written in XkbWriteKeySyms(), which may lead to a heap based<br>
buffer overflow.<br>
<br>
xorg-server-21.1.16 and xwayland-24.1.6 have been patched to fix this issue=
.<br>
<br>
4) CVE-2025-26597: Buffer overflow in XkbChangeTypesOfKey()<br>
<br>
Introduced in: X11R6.1<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/0e4ed9=
49" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/0e4ed949</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
If XkbChangeTypesOfKey() is called with 0 group, it will resize the key<br>
symbols table to 0 but leave the key actions unchanged.<br>
<br>
If later, the same function is called with a non-zero value of groups,<br>
this will cause a buffer overflow because the key actions are of the wrong<=
br>
size.<br>
<br>
5) CVE-2025-26598: Out-of-bounds write in CreatePointerBarrierClient()<br>
<br>
Introduced in: xorg-server-1.14.0<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/bba9df=
1a" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/bba9df1a</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
The function GetBarrierDevice() searches for the pointer device based on<br>
its device id and returns the matching value, or supposedly NULL if no<br>
match was found.<br>
<br>
However the code will return the last element of the list if no matching<br>
device id was found which can lead to out of bounds memory access.<br>
<br>
6) CVE-2025-26599: Use of uninitialized pointer in compRedirectWindow()<br>
<br>
Introduced in: Xorg 6.8.0.<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/c1ff84=
be" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/c1ff84be</a><br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/xorg/xserver=
/-/commit/b07192a8" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/xorg/xserver/-/commit/b07192a8</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
The function compCheckRedirect() may fail if it cannot allocate the backing=
<br>
pixmap. In that case, compRedirectWindow() will return a BadAlloc error<br>
without the validation of the window tree marked just before, which leaves<=
br>
the validate data partly initialized, and the use of an uninitialized point=
er<br>
later.<br>
<br>
7) CVE-2025-26600: Use-after-free in PlayReleasedEvents()<br>
<br>
Introduced in: X11R5<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/6e0f33=
2b" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/6e0f332b</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
When a device is removed while still frozen, the events queued for that<br>
device remain while the device itself is freed and replaying the events<br>
will cause a use after free.<br>
<br>
8) CVE-2025-26601: Use-after-free in SyncInitTrigger()<br>
<br>
Introduced in: X11R6<br>
Fixed in: xorg-server-21.1.16 and xwayland-24.1.6<br>
Fix: <a href=3D"https://gitlab.freedesktop.org/xorg/xserver/-/commit/16a124=
2d" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freedesktop.org/xor=
g/xserver/-/commit/16a1242d</a><br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/xorg/xserver=
/-/commit/f52cea2f" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/xorg/xserver/-/commit/f52cea2f</a><br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/xorg/xserver=
/-/commit/8cbc90c8" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/xorg/xserver/-/commit/8cbc90c8</a><br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://gitlab.freedesktop.org/xorg/xserver=
/-/commit/c2857989" rel=3D"noreferrer" target=3D"_blank">https://gitlab.fre=
edesktop.org/xorg/xserver/-/commit/c2857989</a><br>
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative<br>
<br>
When changing an alarm, the values of the change mask are evaluated one<br>
after the other, changing the trigger values as requested and eventually,<b=
r>
SyncInitTrigger() is called.<br>
If one of the changes triggers an error, the function will return early,<br>
not adding the new sync object.<br>
This can be used to cause a use after free when the alarm eventually<br>
triggers.<br>
</div></div>

--000000000000a89ccb062ef94c30--

--000000000000a89ccc062ef94c32
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Disposition: attachment; filename="OpenPGP_0x14706DBE1E4B4540.asc"
Content-Transfer-Encoding: base64
Content-ID: <1953dc41e4fdde96bc71>
X-Attachment-Id: 1953dc41e4fdde96bc71

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

--000000000000a89ccc062ef94c32
Content-Type: text/plain; charset="US-ASCII"; name="OpenPGP_signature.asc"
Content-Disposition: attachment; filename="OpenPGP_signature.asc"
Content-Transfer-Encoding: base64
Content-ID: <1953dc41e4fe0fb168b2>
X-Attachment-Id: 1953dc41e4fe0fb168b2

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NCg0Kd21NRUFCRUlBQ01XSVFSbjNJYnlZai9G
L1V1MUlsMFVjRzIrSGt0RlFBVUNaNzNrUlFVREFBQUFBQUFLQ1JBVWNHMitIa3RGUUhpVQ0KQUow
U2pRSHI4WC85SFlxelVpd3EvM3RZRWdEY1B3Q2d3WHAwVUVURE96ZTdTMHM1S2Y0YjNvZVY0aWs9
DQo9bHhHZA0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQo=

--000000000000a89ccc062ef94c32--

