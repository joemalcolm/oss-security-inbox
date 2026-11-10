X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/10/13
Message-ID: <CAP=2yyT1weVP-P=G1Hp6iWv07B3uvLP4jcrzEDxi_nNk3YbUgQ@mail.gmail.com>
Date: Tue, 10 Nov 2026 16:00:12 +0100
From: Olivier Fourdan <ofourdan@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: X.Org Security Advisory: multiple security issues in X.Org X server
Content-Type: text/plain; charset=utf-8

---------- Forwarded message ---------
From: Olivier Fourdan <ofourdan@...hat.com>
Date: Tue, Nov 10, 2026 at 2:43 PM
Subject: X.Org Security Advisory: multiple security issues in X.Org X server
To: <xorg-announce@...ts.x.org>, xorg <xorg@...ts.x.org>, xorg-devel
<xorg-devel@...ts.x.org>
Cc: Eun0us / Espilon <eun0us@...ilon.net>, Acts1631
<acts1631kjv@...ton.me>, Tristan <TristanInSec@...il.com>


========================================================================
X.Org Security Advisory: November 10, 2026

Issues in X.Org X server prior to xorg-server-21.1.26 and Xwayland
prior to xwayland-24.1.15
========================================================================

* CVE-2026-109091:
  X.Org Server EDID DS_RANGES Out-Of-Bounds Write

  The Xorg server records EDID Display-Range (DS_RANGES) descriptors
  into fixed-size MonRec hsync[] / vrefresh[] arrays without checking
  against MAX_HSYNC / MAX_VREFRESH. A malicious monitor or crafted EDID
  can supply extra descriptors that overrun those arrays and clobber
  adjacent MonRec fields (Modes, Last, DDC), causing an out-of-bounds
  write that can crash the server or corrupt memory.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/95cf222d
  Found by:  Eun0us / Espilon <eun0us@...ilon.net>

* CVE-2026-109092:
  X.Org Server XvShmPutImage Shared-Memory Bounds Overflow

  ProcXvShmPutImage checked (size_needed + offset) against the SHM
  segment size. A negative size_needed from the DDX plus a crafted
  offset wraps that addition so the bounds check passes and an invalid
  source pointer is passed to PutImage, enabling an out-of-bounds
  read or write in the X server.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/71cba5e4
  Found by:  Acts1631 <acts1631kjv@...ton.me>

* CVE-2026-109093:
  X.Org Server XTestFakeInput Valuator Stack Out-Of-Bounds Write

  ProcXTestFakeInput copied DeviceValuator fields into a fixed stack
  array (MAX_VALUATORS) before checking that the valuator range fits.
  Enough DeviceValuator events write past that array, which can crash
  the server or corrupt stack memory.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/43b4064a
  Found by: Acts1631 <acts1631kjv@...ton.me>

* CVE-2026-109904:
  X.Org Server XRes QueryClientIds Request Size Overflow

  Proc/SProcXResQueryClientIds multiply numSpecs by the spec size
  before REQUEST_FIXED_SIZE without an overflow check. On 32-bit
  servers a large numSpecs wraps so a short request passes length
  validation and the handler reads past the request buffer, which can
  crash the server or leak/process unintended memory.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/6330d2f8
  Found by: Acts1631 <acts1631kjv@...ton.me>

* CVE-2026-109094:
  X.Org Server XRes QueryResourceBytes Swap Path Size Overflow

  SProcXResQueryResourceBytes multiplied numSpecs by the spec size
  before REQUEST_FIXED_SIZE without an overflow check. On 32-bit
  servers a large numSpecs wraps and the swap loop walks past the
  request buffer, which can crash the server or corrupt memory.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/a77de309

* CVE-2026-109095:
  X.Org Server glamor Xv Image Size Integer Overflow

  glamor_xv_query_image_attributes() computed NV12 / YV12 image sizes
  with 32-bit ints. Large width/height values wrap to a small positive
  size, so protocol length checks can accept PutImage / ShmPutImage
  requests that lack the claimed payload, leading to out-of-bounds
  reads in the X server.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/1a84c543
  Found by: Tristan Madani (Talence Security)

* CVE-2026-109096:
  X.Org Server XvPutImage Negative Image Size Length Bypass

  When ddQueryImageAttributes() returns a negative size, ProcXvPutImage
  adds it to the header size so the length check can accept a request
  with no image payload, causing the server to process missing image
  data and potentially crash or misbehave.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/59bef993
  Found by: Tristan Madani (Talence Security)

* CVE-2026-109903:
  X.Org Server XvQueryImageAttributes Negative Size Reply

  When ddQueryImageAttributes() returns a negative size,
  ProcXvQueryImageAttributes still replies with that value cast to
  CARD32, advertising a bogus data_size instead of returning an error.
  Clients may then allocate or use the wrong buffer size based on that
  reply.

  Fixed in: xorg-server-21.1.26 and xwayland-24.1.15
  Fix: https://gitlab.freedesktop.org/xorg/xserver/-/commit/bddd1a6a
  Found by: Tristan Madani (Talence Security)

========================================================================

X.Org thanks all of those who reported and fixed these issues, and those
who helped review and release this advisory and these fixes.

