Received: (qmail 31984 invoked by uid 550); 9 Apr 2026 00:09:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3756 invoked from network); 8 Apr 2026 23:29:53 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1775690984; cv=none;
        d=google.com; s=arc-20240605;
        b=gFvRI38QWBEitRtM+gnGyWyYtYtZ6oXwqH8CE7UK+WYc4P7PaoZJRVyN9zTa8KJTDq
         znq2Mzs2IpsJWJDM7DcIWmfuVBoU4fmpF/fGGlcVdVx78kbY/OeL+HtbUVizqq+q5RKg
         s8garEw7WVs8eeAKrzWadDNOwEKsaXnsBA/NNf0Qg9PMQo/Q2eVHDfhpVg7dTGrSZ54e
         18NRrGWtC3RFvaGwRUdQN9t/42hsLKCRH9VlkDnUcY6DQ6qqa2p9GwkaTnmHDxwlYD70
         TyFIw84ri4dRlZFb08fDjEYv1K15KEJ1iymR5NVDMuT82xlFxWrZaU8C4gaDxs0Vm8f+
         pisA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=5oVxjM73AaEyZfqqqHC3UIX7rUokpw0qnHD1MqSFSK0=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=IFS3cQexFf7J6q/4Q2WKGK9T6s/DWkUJ7/sE/oGLfLN8GLalardxzp17aNfwMMvFg0
         S8zRY8+HLBNvkps1v9wV+izpexuNJPAwVmF5rXa/HKBu71KIbm3B01Pu1EDs+pPyT4pX
         y8sQBIqvsQpdGmZkBnrqvlQ+Psqsm9v3WlW1N5XnIlfHqy+iAIySQZev2tiDKZtl+G1T
         N5LZzjkP8gXQioJujJq0bzgElfPqzAohgeDRbOWHvWVKwg2EF7bxWkKS9DCUiwAQ/rij
         uerXFj3xMtA2YyeqbusGfhrouymoyvURM2CyAc870cI8zQKnauCY0NMHmnOQyQ7QZsgW
         pjow==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775690984; x=1776295784; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5oVxjM73AaEyZfqqqHC3UIX7rUokpw0qnHD1MqSFSK0=;
        b=r/QBXDTzdzl8UzLxq3alrZOLCMVyAUqkOgARJoZpJOksXZjyO/2Ll4TIEVjTnxSNGl
         OTCsp2QMsAySbWV6y7ElSOk47fUbLpV0S/eeJDFnLX0MnSdj96j9xprchyDVWqh/cYjC
         d4w6gDp2+qiC1kXuk5/XLcv0ZooSfdVt4GWc7qyI84fK1Z2OVJaYiDddacqfEwp5UH0g
         JDLeCkFIC0fV13xYhK2O9/qXpnORBKcUbRUlIHsUlM1oxd7M1381a45BifqFZoX4qQ2M
         Nf6qDYUCe/mT8ARTZYiqu2Z8+DvzRdHGa90w+y4IpBqnfYzTEpw9ImL2+GuenlwW/IZ7
         0I0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775690984; x=1776295784;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5oVxjM73AaEyZfqqqHC3UIX7rUokpw0qnHD1MqSFSK0=;
        b=pWuTYlBDXG3Z/nYsglYb65X92ljOEQ/Urq35zYCiAN8vMDmfJrnWPnEcvQGPHq9Zu8
         zfLdO0vQOfJWJ3VV8/djQ8c4wy+jg35DFpg0xFY+zEREol5VlxEOFWwf0dUdjxMb62ge
         160aOvckKbVQlrwGQiSlN2orFGQQl32zhmO/cHMllQkm7R4S0Z9vHR6mhPCmH2AJTNn0
         +AGuyQsPFoU0uC5hL3rm1LzKubV1sXbUvXSa5d8kL8zsF2rYnDq3NJT0+aCWvV6DwFfy
         iG26uX8hA3xxg/C2K8nYohCfGWTNSLNt7f7fPxtXSIwzwvSM8/fS0xSfFvcye2p4Mjsz
         t1Cw==
X-Gm-Message-State: AOJu0YxoYL/sLa4jZA0K7eAyazm7feuyyi1A5sBEp5btTdjqVaRbz5xJ
	toXS1JWEY4kXMVIrzo6lAWb1KjxC5Sk3eUvwsaq/7Y7eBiEwNttHsALpvsPeAP2aS4slQxDdth1
	qzWfx/qceW+/FV0esSTDnh6O3tzTNfnoPSLa7
X-Gm-Gg: AeBDieunjEqFxateAYWd4CpBSNSWCwSi6D1atCXnIoenhG9PyiGig7/z7C//Td82QeC
	n1G08L7AN2JAkDORRT9LnCiq+xZbLDbiZhj3eZEFOJgOSndZr5CQkqkVvES6rdAnaziomaljg11
	iNTxSW+VA2v7FCr+aLDfDVUaxCWREHR9M6oQcXJoy6WI75KXlDwX8td145CeV5eda3oFWYW1Kuq
	FmW7KaRIgfnmz0E9avH2DUUax5MVTjaT+TEjOLhr9PsFF9xrEU2lSkARoBOQxCCKg52VyKAZbX+
	DEXoUJqh1B4mkM+gxY3IYWP0TA9aeGXQSrQFf+IAGfv3YzTgjP80IIvOADzcbOobd0tPYxz2LhG
	37O+X7+qMFAgo5gqQ72Os2Xs=
X-Received: by 2002:a05:6820:1621:b0:67e:3804:3d24 with SMTP id
 006d021491bc7-68a62903673mr817250eaf.28.1775690983846; Wed, 08 Apr 2026
 16:29:43 -0700 (PDT)
MIME-Version: 1.0
From: Cosmin Truta <ctruta@gmail.com>
Date: Thu, 9 Apr 2026 02:29:32 +0300
X-Gm-Features: AQROBzBXV-sJ3h36UUt6YW_ys6gNE0Mh67OObqr_4HJtNezTvxJJNsaLcvdV4F0
Message-ID: <CAAoVtZwZrCcUGJsGh9WKpd7gvSq0o0wFO=RB-VCxoHmdv-GONA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libpng 1.6.57: Use-after-free vulnerability fixed: CVE-2026-34757

Hello, everyone,

libpng 1.6.57 has been released, fixing a medium-severity
use-after-free vulnerability in the chunk setter API, including a
long-standing defect in png_set_hIST present since at least 1.0.9
and regressions in png_set_PLTE and png_set_tRNS introduced in
1.6.56.

Users should either upgrade to libpng 1.6.57 or apply the fixes
described below.

=== CVE-2026-34757 ===

Use-after-free in png_set_PLTE, png_set_tRNS and png_set_hIST
leading to corrupted chunk data and potential heap information
disclosure

Security advisory:
https://github.com/pnggroup/libpng/security/advisories/GHSA-6fr7-g8h7-v645

Fixes:
https://github.com/pnggroup/libpng/commit/398cbe3df03f4e11bb031e07f416dfdde3684e8a
https://github.com/pnggroup/libpng/commit/55d20aaa322c9274491cda82c5cd4f99b48c6bcc

CVSS 3.1: 5.1 (Medium) - CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N
CWE: CWE-416 (Use-After-Free)
Affected (png_set_PLTE, png_set_tRNS): libpng 1.6.56 only
Affected (png_set_hIST): all versions since at least libpng 1.0.9
Fixed: libpng 1.6.57

Passing a pointer obtained from png_get_PLTE, png_get_tRNS, or
png_get_hIST back into the corresponding setter on the same
png_struct/png_info pair causes the setter to free the internal
buffer before copying from the caller-supplied pointer, which now
dangles. The subsequent copy reads from freed memory, producing
corrupted chunk data or leaking unrelated heap contents into the
chunk struct.

The png_set_PLTE and png_set_tRNS defects are regressions
introduced by the CVE-2026-33416 fix in libpng 1.6.56; earlier
versions tolerated the aliased pointer by accident. The
png_set_hIST defect has been present since at least libpng 1.0.9.

The defect cannot be triggered by a crafted PNG file alone; it
requires the application to call the getter and setter in sequence
on the same struct pair. Any valid image carrying the relevant
chunk suffices to populate the internal pointer that the
application then aliases.

Impact:
- Corrupted chunk data: the setter copies stale or reallocated heap
  contents into the replacement buffer, silently corrupting chunk
  metadata
- Information disclosure: unrelated heap data may become visible
  through subsequent getter calls

The same release also hardens the append-style setters
(png_set_text, png_set_sPLT, png_set_unknown_chunks) against a
theoretical variant of the same aliasing pattern.

Workaround: applications that pass a getter's return value back to
the corresponding setter on the same struct pair can simply remove
the redundant setter call, or copy the getter's output into a
caller-owned buffer before passing it to the setter.

Credits:
- @Iv4n550 (discovery of PLTE and tRNS defects)
- Cosmin Truta (discovery of hIST defect and fix of all defects)

=== References ===

- Release: https://github.com/pnggroup/libpng/releases/tag/v1.6.57
- libpng homepage: http://www.libpng.org/pub/png/libpng.html

---
Cosmin Truta
libpng maintainer
