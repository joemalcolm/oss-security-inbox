X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1713" "Monday" "22" "April" "2019" "13:12:21" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKYzq0PbZYOedTha2xaOOUgTg-UJjp6CrWjwaaA8qwiTKg@mail.gmail.com>" "54" "[oss-security] Nokogiri security update v1.10.3" nil nil nil "4" "2019042217:12:21" "[oss-security] Nokogiri security update v1.10.3" (number mark "U       mike.dalessi Apr 22   54/1713  " thread-indent "\"[oss-security] Nokogiri security update v1.10.3\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Nokogiri security update v1.10.3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16067 invoked by uid 550); 22 Apr 2019 20:31:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3671 invoked from network); 22 Apr 2019 17:12:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=H97DjwjATl+/toyVWbl6o9yPVq0LJ7UDhoPJRJ9CQ5c=;
        b=AVFpOrNQc4FXAKgBjBi/l90nanoa8WHqawGyLVKMhOJmRA88M10SyuU1+CzRJhiUA6
         SgjcJJ8RnEvoMmhiSX7kQNbIYixSbHa877SR8+fsPAd/Z6oblTogqrZI73w/3+dMtK1T
         XMMxagqRuk2JAK+cK76gN+gQmM6cORe9iCXXkjEyI7WRaxZsvRkB300mMYilgeVWDg2v
         56ED62rGAU8/zMp220hiwKw5XenD8U0tzYUFiZlekMNo2XV5ncyMVNCcbU8bC+rGgjNr
         XeJX8b1KriItNx6utOeSclff1fmof9d2SHQ6xUbHW2IftkCwl8mmOkCfz32ZujIRLBmU
         AU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=H97DjwjATl+/toyVWbl6o9yPVq0LJ7UDhoPJRJ9CQ5c=;
        b=ojjvQJu9JF1GzZL3HcAe4/Qk0zxNP6ggyyUe/fogXXpAypjJL82mrTgjag6xu1TFWC
         KZ6vyF1o3TrsEusV8YVyGkHclu4E9K/79U8pSI3D4Viuvz8NIv/XegwEgfHAKhf+kjac
         HE/a2V96a0AgD20g3nN1jl9KRdjec02MOOiuYe7Oy1Mb5xxPBD1qLLgOpOmns8m/cMCT
         NZHwlMgtm528j8f77LyQniF6bId+DdoTSEnMVeAo/9FkjtMeKiDdzFPgc7V7ED6uh9gR
         as296zXLekl7aEEy0qTZvQtuhyQKA7KR2zY5tT/LAeJjoMh+aA/P3b59FUn6xvbHzAl7
         IY2A==
X-Gm-Message-State: APjAAAUiCwYj99NERSE2g/Lg4L2LNjqLNZpGxB4/tG1AZdpcySPYW4pI
	+bYwAqsrVYH+Srv1BXgBeEuxe8/EVwElD2fEhvo=
X-Google-Smtp-Source: APXvYqy5VPyF3QLQJDoXTA4YZEH3EqXcLOtqkG58/GtKJ9j53PQZnLp95tUodpC3sGSzt1AXhT/4kMygZClqWiKHbd4=
X-Received: by 2002:aca:62c4:: with SMTP id w187mr10780910oib.45.1555953152880;
 Mon, 22 Apr 2019 10:12:32 -0700 (PDT)
MIME-Version: 1.0
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Mon, 22 Apr 2019 13:12:21 -0400
Message-ID: <CAGJbjKYzq0PbZYOedTha2xaOOUgTg-UJjp6CrWjwaaA8qwiTKg@mail.gmail.com>
To: nokogiri-talk <nokogiri-talk@googlegroups.com>, ruby-talk <ruby-talk@ruby-lang.org>, 
	ruby-security-ann@googlegroups.com, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f6f83b0587219207"
Subject: [oss-security] Nokogiri security update v1.10.3

--000000000000f6f83b0587219207
Content-Type: text/plain; charset="UTF-8"

Nokogiri v1.10.3 has been released.

This is a security release. It addresses a CVE in upstream libxslt rated as
"Priority: medium" by Canonical, and "NVD Severity: high" by Debian. More
details are available below.

If you're using your distro's system libraries, rather than Nokogiri's
vendored libraries, there's no security need to upgrade at this time,
though you may want to check with your distro whether they've patched this
(Canonical has patched Ubuntu packages). Note that this patch is not yet
(as of 2019-04-22) in an upstream release of libxslt.

Full details about the security update are available in Github Issue
[#1892][].

  [#1892]: https://github.com/sparklemotion/nokogiri/issues/1892

---

## 1.10.3 / 2019-04-22

### Security Notes

[MRI] Pulled in upstream patch from libxslt that addresses CVE-2019-11068.
Full details are available in [#1892](
https://github.com/sparklemotion/nokogiri/issues/1892). Note that this
patch is not yet (as of 2019-04-22) in an upstream release of libxslt.


---

CVE-2019-11068

Permalinks are:
- Canonical:
https://people.canonical.com/~ubuntu-security/cve/CVE-2019-11068
- Debian: https://security-tracker.debian.org/tracker/CVE-2019-11068

Description:

> libxslt through 1.1.33 allows bypass of a protection mechanism
> because callers of xsltCheckRead and xsltCheckWrite permit access
> even upon receiving a -1 error code. xsltCheckRead can return -1 for
> a crafted URL that is not actually invalid and is subsequently
> loaded.

Canonical rates this as "Priority: Medium".

Debian rates this as "NVD Severity: High (attack range: remote)".

--000000000000f6f83b0587219207--
