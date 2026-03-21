Received: (qmail 24365 invoked by uid 550); 21 Mar 2026 01:39:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3192 invoked from network); 21 Mar 2026 01:25:17 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774056308; cv=none;
        d=google.com; s=arc-20240605;
        b=J+BhMeJmGEAPWXHwu/XPoJ9XqP8WmCzlnVwQyPiZiSushKQZv9r4YT7SxgFqCO/sWE
         VSB3uizseVkcMTVqREw3ktXzkJ4dwqKsY9UrZ/0zuHgbTv89GkUHG5nKWtVRgduG/ztP
         AxERPlCnEb65w8SKwKoCzr64fyjTBObqKVKxFtO2hqJxMOuniJLzQKAP7ApS1NkONOlZ
         +AgEYdYkoN7Djt3JNCZFlAuXa9DB/g1gav5VwJ8P6GiemstZu9GttNbOCXDYyHAbmQvQ
         8d0a2uLGnmZiI0/v88Y684fEKmJrKD9nE13sj74F5IA47YDQiW6pTNCeFXnDEvqnRZQF
         QZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=NeyYM3K7DrDgpZV1KdunoUqWraqX0pMQ+RIDiN281QE=;
        fh=TBl1JIFbfxBfsQAD2QsCKltVENruLOShOAOuCsRmzQY=;
        b=RxrW5IK0luOW+khQcgKXdsYc/zZDr5uWlO4/DOi+s7XI4CnEkk47e5RFxtQ8IJiIl/
         5GSlcW7HnfuH2nIKPK9pzZJFU4yPJOyBkYwr3ryFC1TnsQZ/zXcLhHEnJsUDdiqQ4m8T
         CBtq+oEt07pkaZe4zPQtoHm8zKuEB+QFBBUKe8RuXhZbso4bFET9ACsJEwV6WHtIO1kJ
         uia668Mm9ic4TnPG47bo9RW/y23JiVDpdhNVupCMFIVxFx81dN3GEgc2cXCKbA/WMPRk
         KCQKZH1WSXTeP7QlklwTN9lDB8QQVHy7o2+OODQJCpsMEG9luDzo8KhF9KAEPuDD60DG
         QIyg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774056308; x=1774661108; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NeyYM3K7DrDgpZV1KdunoUqWraqX0pMQ+RIDiN281QE=;
        b=U4NZfIOqjzhNXhaCJp08GVB3i8vsmxzuvT2ZMLLds9+THA1tKF8hscj7CvLSWJMat2
         zjjKi1Q+tS+EU9B8yjUNMgzlL2IulHwFQ5a1JTz5CtRHZoBcULubwAYPxUimS8ZpSazn
         pXDWDb8COKuuALAnsxdQUJZ34Ksa80bsGAqU7aveQD4HLu1eFSNwOd5hUjsHrKfdQ8Sw
         LUdpQyzE9t9rQXYHaOkg+k/R+gTBGqnXNLvRYdExVIkGhZWq0RM65ZRu5faFMzXDWQLj
         fiOE7/BNMAsX0uA27j+mNunq/MldQGI7w8gr5ys+qda79+UI6CVLfgk9BgrG1Q3JQfKi
         XUEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774056308; x=1774661108;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NeyYM3K7DrDgpZV1KdunoUqWraqX0pMQ+RIDiN281QE=;
        b=P5t1MwSf6kjvdWrmvx1H+UgKQE+CruvJUp9mjcBayAvkJhC+w9B6xqACM/uNvOLIh+
         sRB59WJfHA/PuO8yUQHzZB4/Ll0Qx47MYTlAq9mvoYEIZqL+lba0t530/AGpJqy5KsIO
         In9TVpGU7JHQEw5vwAbqq59L94sgOhFYIi5bVsO6MG7NdWpw90IDuRvW7GLNJGDIPdpt
         Arr8jv2cmsiOR6iwVvO8fO2OwYZBDQL857ewY8oSQgC44yHbUM2odEm9h09fB+d2mFaI
         V8GurXQy0ugubR0i8niKjUKmF8Di+IsX8dk1WyZWMz7x3OqRhkKIfo7nhmwVi+wGveXE
         BS6g==
X-Gm-Message-State: AOJu0YzK6UOKpNlTorQp/IVryoIqeXvcVq5eEr5rUaNQpXsQR5+KzgpF
	AS1ZR7VUE5T6H/QHlGrsquf6bYNnxomR6jYocJiqBzA1mZThpDmV6b/IH8LBuwiWRorB6wCGXFF
	ef3ezRZl1n1ad6GroRYALDlL+QZpSjGL0k7Gg87Q=
X-Gm-Gg: ATEYQzzNXOdfCVK+M0aQ23bWDtCpaXbHkI544jBvpCY0xJlGCrDIMizKjB0rNc7iz/x
	HZVFeAmISFFaKv5+VcJx312Ok9TkZlb7q1P6x0IBut0eubjlEHaKpRpzFsVvTZfl691gCQwyMGu
	qkSzbu/1SayK6SG+tmGEFaXKREGSBELEMOohOy0Q/0ULlpAlGxCxhe8sqtUNcXhtaZADmK8bcy/
	gdwvdxMEMYmxS/CaaWlAb1+YXbYJSjenChmDY8JdmbMaC4IJi+rcvTmaNExb8/AKiyj2uTrPmwQ
	ntWwKOvlIyPWQAtYeu5CNgnK1Fh9vu7duxKVjw0HXAQstD8ano3CYT2jWjeQELH2HqvsweiQ
X-Received: by 2002:a05:6000:2704:b0:43b:494d:818b with SMTP id
 ffacd0b85a97d-43b642731d0mr3012922f8f.6.1774056307749; Fri, 20 Mar 2026
 18:25:07 -0700 (PDT)
MIME-Version: 1.0
From: Abhinav Agarwal <abhinavagarwal1996@gmail.com>
Date: Fri, 20 Mar 2026 18:24:41 -0700
X-Gm-Features: AaiRm53Sxj9hLkeObyCFxtvmXnDQwQ6eRbM1dk6MR63UoNJIbxIrO7UW3Y68Lp0
Message-ID: <CAK3hNHa=A2kB5658f3_DMdSnhXSdK84+93Mq0uFRuWD-VXmyzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Akshat Sinha <akshat.snh@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-33150, CVE-2026-33179: libfuse io_uring memory safety
 vulnerabilities (use-after-free, NULL deref)

Two memory safety vulnerabilities in libfuse's io_uring code path
(introduced in 3.18.0) have been fixed in libfuse 3.18.2. Only the
io_uring transport is affected; the traditional /dev/fuse path is not.

Affected versions: libfuse >= 3.18.0, < 3.18.2
Fixed in: libfuse 3.18.2
  https://github.com/libfuse/libfuse/releases/tag/fuse-3.18.2


CVE-2026-33150: Use-After-Free
Severity: High (CVSS 7.8)
CWE: CWE-416

Use-after-free in io_uring session shutdown path. A local user can
crash the FUSE daemon or potentially execute arbitrary code.

Advisory: https://github.com/libfuse/libfuse/security/advisories/GHSA-qxv7-xrc2-qmfx
Fix: https://github.com/libfuse/libfuse/commit/49fcd891a58f622c098e2ca67d66086f7b213836
Credit: Abhinav Agarwal (reporter)
Remediation review: Akshat Sinha


CVE-2026-33179: NULL Pointer Dereference + Memory Leak
Severity: Moderate (CVSS 5.5)
CWE: CWE-476

Missing NULL checks and error-path cleanup in io_uring queue
initialization can crash the FUSE daemon on allocation failure
and leak NUMA memory.

Advisory: https://github.com/libfuse/libfuse/security/advisories/GHSA-x669-v3mq-r358
Fix: https://github.com/libfuse/libfuse/commit/7beb86c09b6ec5aab14dc25256ed8a5ad18554d7
Credit: Abhinav Agarwal (reporter)
Remediation review: Akshat Sinha


Both issues were reported privately to the libfuse maintainer
and fixed in a coordinated release.

Timeline:
  2026-03-16  first issue reported libfuse maintainer
  2026-03-17  second issue reported libfuse maintainer
  2026-03-18  Release 3.18.2 with fixes
  2026-03-19  GHSA advisories published
