Received: (qmail 29980 invoked by uid 550); 2 Mar 2026 16:34:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26237 invoked from network); 2 Mar 2026 13:10:29 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1772457019; cv=none;
        d=google.com; s=arc-20240605;
        b=KMUqbgFrAnbGW33iwM3i1BTKPph7+lN6QgyPaWGVyAcY7sJHFFUCjE0bxI0ELdHwCG
         KCfWTJsKHH1QeZhhivOAwxGzgQqH34VQcz+YmAkLs3WZC+PlLvY8gNxywu6tYRMErIQ3
         fH+psFZMVj+TOj5ddirIa0Gk3hkoxJOy3n01sE0p7BHariMtl6+/3Xq1N7ESMLaCc79l
         9ZaRXsX+ZbbrQy5lbeFV3JvtO9SJDdcpGct3mT/btA81RQYTlwti6Yy1mS3O+1rJd1J9
         lbRCo/8qypGmqa/RGrKnQDo79e+LanNUGn6nPzg6mhGJHBW0lP8gPJEcg5hB0fkb4vtp
         3RDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pYQmcs9EpMJHZ2RFcc44uCanPBb11dpZ1ClMDj9OZqg=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ibfBvMkEzXICqMTs76sZtyit1llAVUgzWC0htCVBrhvSa2lebG6BcefP1qayZ6L5Um
         Cb+FRdgsPPa2P1Ng/aNmjtt4a6LmCbuwmsD7A7fJjUeHDtA6sdPQB2wYYHbrl/aIqIPy
         6zoEj2+Cxu7dciMQ35eK4gkZkjmPC51Ib/N8bHYRU4h+m/iBAuR9RPjl1KnOvC3X7JGP
         UIJvDKD+ijLtRYjL2uZL1YRe9K13hN1cWQSygbf6IqF5x9O4z8vBxAP5OLxaMh9JoS9N
         UnsyN2cnv/ghcOb81bt2LYvx+lwN3bCNWcPR/CHpHhtLQmsS4p8waMe/v1j65us3wpAy
         HqsA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772457019; x=1773061819; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pYQmcs9EpMJHZ2RFcc44uCanPBb11dpZ1ClMDj9OZqg=;
        b=JvX75lHwkXg4Nt3MD+mcEUqOoJ18Ah34yjYT3ROuzyOqg9ngiatxr+loMIFcqRWUyA
         3WfYn7hN8JKpegRYJEBLJkrhKTckvIjbHaEWz/4fHt5QlYI9/cHp8SFJvIYi9DUNcmMc
         QsWXFngyHUiHA/7KsRJQoy/D+1bd2fMVi0HhPk9x1kdoy5mfXelZRtnMMT5Nalohpp4Y
         5jDncmJUTJxGO1nEw9596Xjn1g+pYFFG/f+Z/haO678C1jKRAK0GlWDDDslApapCUfB8
         J+iIlusy1K00It8suh+3XrgFdTkIndj5YpBoEV44fjql0b5qcYtnMLmfN/NH6bVKdKoW
         EV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772457019; x=1773061819;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pYQmcs9EpMJHZ2RFcc44uCanPBb11dpZ1ClMDj9OZqg=;
        b=IJCWXYInAQi9+YuYsTlumw9+senMb8Gol4luXZ5NVSywJ65n2mDOQ/Io3h8cKnnm+K
         yw5I/Q0Ija2bmW84uIxBxB7obvyWeH9BZiayEsd1xHjJNyyXAm6WMbkuaUf0wT3eTn00
         icWn7AS03WHcVdPX/qg5EHuvCaf64wkBEwQhPGJLQEQLjyh+X8sXUJp4tVYa7yjpBv+b
         n8/7oc1ZxVbaYSJIOWKjuAw4Meo3oeJZjZbiMtW+bNAPU2nuRJTEggtLSDsBqtfJrSLA
         +c+9qEZdoXdOUvvmQ/MZeaR43/Kmo1VocDGk+zzTZh0G6QjBYkxvDpU2RnMssBw/Lq6u
         HZsw==
X-Gm-Message-State: AOJu0Yx+KgSLZTOxR5NZgLqZC8YhVTdhT9Vf9VLyoTpQP0PlXJG2TDuQ
	Vp83KXPr6r5ajGKsVpS7tk/P+RPvtDm0QLbynMGwHI2Ji0QDq3nEskp27/jojT5j3IwaQ05qJxD
	A3dojC78G0008csIUrD+zermltBlOlvRoKFtG
X-Gm-Gg: ATEYQzxCU2dnGzZFjYkXFVAayAE8iA7n9KuyCP6FrYJ0cQ3b7lSEKYHMM/GCOKqgGGn
	6T+yYu+G7SIHJo4ej8H3u1pOGfKB9/4ePb7h77BphxQyNvVEwMWuQvs1p0aKMPJsylKIrV1bA8c
	QmIke5ESwIcSH+Nq2lCWIZ6Isrb7SSpNuS+DuDGPhCNfVusg1itsPLnFQ90ZQeB7+hh7NPLmCmL
	wCyW+hR7SXKalskRVbkd/z8sGw/zOIJel9NiPS5Ys/vrTGBiAibGafoZT5QgXHcRzv5tjsLbcmt
	uABOBuYyI4wYbWVACC5BpsVhKPUBFwaekqr3kFTtwWWDA+egrHFj
X-Received: by 2002:a05:6102:3583:b0:5fd:a537:a778 with SMTP id
 ada2fe7eead31-5ff3231a87amr6489668137.10.1772457018457; Mon, 02 Mar 2026
 05:10:18 -0800 (PST)
MIME-Version: 1.0
From: Kevin Backhouse <kevin.backhouse@gmail.com>
Date: Mon, 2 Mar 2026 13:10:07 +0000
X-Gm-Features: AaiRm53IzwTvnQeaPpncMG-TOdOR4U-gev3pog8tYvBg_UQ-MLavcYChtuDpy7s
Message-ID: <CAMKvgcQN1k4VLRzCumyHJTycSrvA4CUnjQQvt46a3kaXHkeR7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f70708064c0a4e5c"
Subject: [oss-security] Exiv2 version 0.28.8 released with fixes for 3 low-severity CVEs

--000000000000f70708064c0a4e5c
Content-Type: text/plain; charset="UTF-8"

Exiv2 version 0.28.8 was released yesterday (2026-03-01) with fixes for
three CVEs:

CVE-2026-25884: Out-of-bounds read in CrwMap::decode0x0805
Impact: low severity, because we're only able to reproduce this with our
fuzz target, not with the exiv2 command-line application.
Credit: found by Google OSS-Fuzz

CVE-2026-27596: Integer overflow in LoaderNative::getData() causes
out-of-bounds read
Impact: low severity, because it is only triggered when running Exiv2 with
an extra command line argument, like -pp. The out-of-bounds read is at a
4GB offset, which typically causes a crash.
Credit: found by @zerojackyi

CVE-2026-27631: Uncaught exception: cannot create std::vector larger than
max_size()
Impact: low severity, because it is only triggered when running Exiv2 with
an extra command line argument, like -pp. This issue causes Exiv2 to crash
with an uncaught exception.
Credit: found by team Exiv2

The second issue (CVE-2026-27596) is perhaps the most interesting because
it looks to me like it was found by AI. I think the report looks
AI-generated, but it's also unusual for a poc to be written in Python,
since most Exiv2 bugs are found by fuzzing. In the past, a poc like this
would have indicated that it was hand-crafted by a human, but these days AI
seems more likely. Although we've rated it low-severity, it was a useful
report to receive because it uncovered a gap in our fuzzing coverage. We
have now added a new fuzz-target to address that gap, which is how we found
the third issue (CVE-2026-27631).

One more thing that I'd like to mention: we have stopped supporting older
versions of Exiv2. If you haven't done so already, please consider
upgrading to the 0.28 series.

Thanks,

Kev

Links:
https://github.com/Exiv2/exiv2/releases/tag/v0.28.8
https://github.com/Exiv2/exiv2/security/advisories/GHSA-9mxq-4j5g-5wrp
https://github.com/Exiv2/exiv2/security/advisories/GHSA-3wgv-fg4w-75x7
https://github.com/Exiv2/exiv2/security/advisories/GHSA-p2pw-7935-c73j

--000000000000f70708064c0a4e5c--
