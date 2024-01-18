Received: (qmail 3204 invoked by uid 550); 18 Jan 2024 09:21:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11600 invoked from network); 18 Jan 2024 08:34:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705566970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DfH0iINOKzc6FgWio5JdhQRB8N6o4J5U4uSbEX5Y9BU=;
	b=fiCiWuh68pMbHHTtiEwTNABiYfQtxvoapJBmFvhYRf5MznfxBlQphsTiJ+cawztchbYPog
	MFT76WpgjV2MQfMD6yH0yhV8/B5rfcO825xWaX8mmoBnPXnes8g68S3jtXHsbMhvJIcudL
	/6zqM9xhaSDeT6bF6m0TTWH5N+hrJzA=
X-MC-Unique: 9m_Ak9zdPae9qNVhOMDcXg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705566966; x=1706171766;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DfH0iINOKzc6FgWio5JdhQRB8N6o4J5U4uSbEX5Y9BU=;
        b=GtdqWAdcdwl5pbxKB3PzZWxvnyevk7GEaohLcwT4ehik7pnxO8GPHYzYvnY0xSR7BP
         BeTza2MMwtt1gEj3R1J00bnjjGHusLuvAi/y0NCR17TOeaL0OWgqYd3KiUCv4bwK58HC
         5YacE10S6Xg/LyzXlWDJU/qGlDMa3gPuMREYUXS5MQ4sz6Tbiov2VaNNZvlK8wQ7mk5m
         dKTP71NJJcisrEPLvFYL8/AbQJyfPHYo/KCAe5FKc1gCZEonUZKKaPt2qxYCPHFhxJ2s
         usM0oh4urWZpcELdYX5JFbm3qUccfRz7PCN15gYYwl+NqjULRpzs2VDdlvTynJn+Bi2e
         Oa1g==
X-Gm-Message-State: AOJu0YwyjWFCCNsRn3O0WPMh/B9X/mB/bqnvwcOi0UVq43s5NGc2WAQl
	pEHmPyb/7baPySe+BdF3IXJKMmxuzoBM7DTQtV7V3uJcZIrXQjJXjEsIP2rmXt5zk5LqEKTkPZA
	zAn7Ixj5hp5XDXI4mpXn86FOI4g4sqYIa7X8GBSIZv3Zc/obIJtpSAEQitEIKlauw2A59+l+8Gd
	pQWDbKGSqsL2fx28DxNhGx8dMHmSXS9fiR94p4+hO/xS+yRTFc
X-Received: by 2002:a17:90b:30c5:b0:290:f52:a045 with SMTP id hi5-20020a17090b30c500b002900f52a045mr366070pjb.82.1705566964863;
        Thu, 18 Jan 2024 00:36:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaWKyAeYIUYFMLWeMhVsNxLNS08LyHkw1p0aRk93EQ4PgasSv4nn/7JucM+v015zEAZMucLeCiKp8jvUmJPwc=
X-Received: by 2002:a17:90b:30c5:b0:290:f52:a045 with SMTP id
 hi5-20020a17090b30c500b002900f52a045mr366046pjb.82.1705566963279; Thu, 18 Jan
 2024 00:36:03 -0800 (PST)
MIME-Version: 1.0
References: <CAFkFYGjNzVsj4koCKi=sx0TPiskNnB0d7=xJ64H1JbRUW5gq+g@mail.gmail.com>
In-Reply-To: <CAFkFYGjNzVsj4koCKi=sx0TPiskNnB0d7=xJ64H1JbRUW5gq+g@mail.gmail.com>
From: Jose Exposito Quintana <jexposit@redhat.com>
Date: Thu, 18 Jan 2024 09:35:52 +0100
Message-ID: <CAFkFYGgBu7efQ+OG0W=d8P7reio=iuBJ=zwM3o6wqkK8uAbQvw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000fcbae3060f344089"
Subject: [oss-security] Fwd: X.Org Security Advisory: Issues in X.Org X server prior to
 21.1.11 and Xwayland prior to 23.2.4

--000000000000fcbae3060f344089
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Jose Exposito Quintana <jexposit@redhat.com>
Date: Tue, Jan 16, 2024 at 3:24=E2=80=AFPM
Subject: X.Org Security Advisory: Issues in X.Org X server prior to 21.1.11
and Xwayland prior to 23.2.4
To: <xorg-announce@lists.x.org>


X.Org Security Advisory: January 16, 2024

Issues in X.Org X server prior to 21.1.11 and Xwayland prior to 23.2.4
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple issues have been found in the X server and Xwayland implementations
published by X.Org for which we are releasing security fixes for in
xorg-server-21.1.11 and xwayland-23.2.4.

1) CVE-2023-6816 can be triggered by passing an invalid array index to
DeviceFocusEvent or ProcXIQueryPointer.

2) CVE-2024-0229 can be triggered if a device has both a button and a
key class and zero buttons.

3) CVE-2024-21885 can be triggered if a device with a given ID was
removed and a new device with the same ID added both in the same
operation.

4) CVE-2024-21886 can be triggered by disabling a master device with
disabled slave devices.

5) CVE-2024-0409 can be triggered by enabling SELinux
xserver_object_manager and running a client.

6) CVE-2024-0408 can be triggered by enabling SELinux
xserver_object_manager and creating a GLX PBuffer.

------------------------------------------------------------------------

1) CVE-2023-6816: Heap buffer overflow in DeviceFocusEvent and
ProcXIQueryPointer

Introduced in: xorg-server-1.13.0 (2012)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/9e2ecb2af8302dedc=
49cb6a63ebe063c58a9e7e3
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

Both DeviceFocusEvent and the XIQueryPointer reply contain a bit for
each logical button currently down. Buttons can be arbitrarily mapped to
any value up to 255 but the X.Org Server was only allocating space for the
device's number of buttons, leading to a heap overflow if a bigger value
was used.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.


2) CVE-2024-0229: Reattaching to different master device may lead to
out-of-bounds memory access

Introduced in: xorg-server-1.1.1 (2006)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fixes:
  - https://gitlab.freedesktop.org/xorg/xserver/-/commit/ece23be888a93b741a=
a1209d1dbf64636109d6a5
  - https://gitlab.freedesktop.org/xorg/xserver/-/commit/219c54b8a3337456ce=
5270ded6a67bcde53553d5
  - https://gitlab.freedesktop.org/xorg/xserver/-/commit/df3c65706eb169d593=
8df0052059f3e0d5981b74
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

If a device has both a button class and a key class and numButtons is
zero, we can get an out-of-bounds write due to event under-allocation in
the DeliverStateNotifyEvent function.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.


3) CVE-2024-21885: Heap buffer overflow in XISendDeviceHierarchyEvent

Introduced in: xorg-server-1.10.0 (2011)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/4a5e9b1895627d40d=
26045bd0b7ef3dce503cbd1
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The XISendDeviceHierarchyEvent() function allocates space to store up
to MAXDEVICES (256) xXIHierarchyInfo structures in info.

If a device with a given ID was removed and a new device with the same
ID added both in the same operation, the single device ID will lead to
two info structures being written to info.

Since this case can occur for every device ID at once, a total of two
times MAXDEVICES info structures might be written to the allocation,
leading to a heap buffer overflow.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.


4) CVE-2024-21886: Heap buffer overflow in DisableDevice

Introduced in: xorg-server-1.13.0 (2012)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fixes:
  - https://gitlab.freedesktop.org/xorg/xserver/-/commit/bc1fdbe46559dd9476=
74375946bbef54dd0ce36b
  - https://gitlab.freedesktop.org/xorg/xserver/-/commit/26769aa71fcbe0a840=
3b7fb13b7c9010cc07c3a8
Found by: Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

The DisableDevice() function is called whenever an enabled device
is disabled and it moves the device from the inputInfo.devices linked
list to the inputInfo.off_devices linked list.

However, its link/unlink operation has an issue during the recursive
call to DisableDevice() due to the prev pointer pointing to a
removed device.

This issue leads to a length mismatch between the total number of
devices and the number of device in the list, leading to a heap
overflow and, possibly, to local privilege escalation.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.


5) CVE-2024-0409: SELinux context corruption

Introduced in: xorg-server-1.16.0 (2014)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/2ef0f1116c65d5cb0=
6d7b6d83f8a1aea702c94f7
Found by: Olivier Fourdan

The Xserver uses the mechanism of "privates" to store additional data to its
own objects, each private has an associate "type". Each private is allocated
for the relevant size of memory that is declared at creation.

The cursor structure in the Xserver goes as far as having two keys, one for
the cursor itself and another one for the bits that make the cursor shape.

XSELINUX also uses privates but it's a bit of a special case because it uses
the same privates keys for all different objects.

What happens here is that the cursor code in both Xephyr and Xwayland uses =
the
wrong type of private at creation, using the cursor bits type with the curs=
or
private and when initiating the cursor, the overwrites the XSELINUX context.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.


6) CVE-2024-0408: SELinux unlabeled GLX PBuffer

Introduced in: xorg-server-1.10.0 (2011)
Fixed in: xorg-server-21.1.11 and xwayland-23.2.4
Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/e5e8586a12a3ec915=
673edffa10dc8fe5e15dac3
Found by: Olivier Fourdan and Donn Seeley

The XSELINUX code in the Xserver labels the X resources based on a hook. Wh=
at
happens here is that the GLX PBuffer code does not call that XACE hook when
creating the buffer, so it remains unlabeled, and when the client issues
another request to access that resource (as here with a GetGeometry) or even
when it creates another resource which needs to access that buffer (such as=
 a
GC), the XSELINUX code will try to use an object that was never labeled and
crash because the SID is NULL.

xorg-server-21.1.11 and xwayland-23.2.4 have been patched to fix this issue.

------------------------------------------------------------------------

X.Org thanks all of those who reported and fixed these issues, and those
who helped with the review and release of this advisory and these fixes.

--000000000000fcbae3060f344089--

