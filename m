X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1538" "Thursday" "20" "August" "2020" "11:15:41" "-0400" "Richard Hipp" "drh@sqlite.org" "<CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>" "31" "[oss-security] Fossil-SCM patch fixes RCE in all historic versions" nil nil nil "8" "2020082015:15:41" "[oss-security] Fossil-SCM patch fixes RCE in all historic versions" (number mark "U       drh@sqlite.o Aug 20   31/1538  " thread-indent "\"[oss-security] Fossil-SCM patch fixes RCE in all historic versions\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fossil-SCM patch fixes RCE in all historic versions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25781 invoked by uid 550); 20 Aug 2020 15:18:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24110 invoked from network); 20 Aug 2020 15:15:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=6TDPFoaKm8fjZ/VOPwZuuFVo0hf1FzgYUVB2tzebbWY=;
        b=Y/8K1+j+hH3OvfDBGJl2ynvvzIUYkcjaXoizauJ4YNs+p6HVxMwEyPvB8kDy0bKdGq
         VNxNDc+ejNVnWV8AFnG0dANi8TROVkQEOQmTRXziocpDq6C1yxZcqvWmoEEpKfN5Ng0o
         WelB/bh96UnOb/ezRtHrbfRTeY9adrqf6eqm9cIaPsM13v7Y5OftIQU2SR/ot17xNxd0
         4/zunI7TZAQ7m+8qEvLauqU2KcBop8EEOFviFCWxOymNJcHA1d8u3HLZ9DqlDNoEh9o4
         OLHj9PZfngRMS4gi/5BuUpycsTqgNwpcHKTDQ/qZMlL4Zd1p0WMHF1nKQPUZ4UG72u2r
         Oqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=6TDPFoaKm8fjZ/VOPwZuuFVo0hf1FzgYUVB2tzebbWY=;
        b=Ujvwqe/M2UqjZq8lYjEsQyV1JUYI7JLnrh3AhyY7d/4fQWGO8wbV2UBKsxYMGeBsNI
         P8vRRFLo8Yb804hqQpQMOs6mi9vXEOrJwyjqt+9pxYt+Dnq1K6KJ4em1a6eScsMNRRY9
         NFppiZyxI2XE8Oqt6tM2WUngF/Z8y7rej0NRqSRU7s8ZDLwGdZS0BOP8dqSXRlNy38//
         raGxMEt3kgpgXvHLKx+1DlcdLbaKKq98Sah7ztu4/vVkdVzOOf8gStUNNgDuSfPATZNM
         FelrNLCToDq2fSsX4oTuI/7g3GiMw85sKvZUM1sIuConf2Lc/IFRvuPaDabVveVjI47L
         cm2g==
X-Gm-Message-State: AOAM5303DbKHI58g7REA3zkx4PTVIQZ8WBakAHVh1dytc0yE23wOAWie
	3QEk6NH2AGeJ4GOFUdqwugkEroDEiYz+7+tTn+nOFljzRg==
X-Google-Smtp-Source: ABdhPJyVpl5AT3ln85BK/zMa9BrXUjSmEfB14Woqgb9Fm9ftQ7mMMD6QG9OGNwY3E0XogAG4uKZUdLFYC7iTjl4tmrY=
X-Received: by 2002:a05:651c:1041:: with SMTP id x1mr1734941ljm.169.1597936542521;
 Thu, 20 Aug 2020 08:15:42 -0700 (PDT)
MIME-Version: 1.0
Sender: drhsqlite@gmail.com
From: Richard Hipp <drh@sqlite.org>
Date: Thu, 20 Aug 2020 11:15:41 -0400
X-Google-Sender-Auth: txfZZUfb-468ucoDVrtt6sf2cfg
Message-ID: <CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Fossil-SCM patch fixes RCE in all historic versions

Researcher Max Justicz discovered a potential RCE and other
vulnerabilities in the Fossil distributed version control system.
(https://fossil-scm.org/)  Patches to address these issues are now
available for download.  Package maintainers who bundle Fossil are
encouraged to update their packages without unnecessary delay.

All vulnerabilities require a pre-existing trust relationship between
the victim and the attacker.  In other words, the attacker must be
either a site administrator, or someone with check-in privileges on
the project.  There are no known vulnerabilities to servers from web
users entering tickets or forum messages or wiki or doing other
on-line operations.  The attacks require the ability to push, at
least, and the most serious RCE problem requires the ability to
configure a server in malicious ways.  If you are unable to upgrade to
one of the patched versions of Fossil, then you are encouraged at
least to know well the people from whom you clone or pull.

Precompiled binaries and source tarballs for the patched versions of
Fossil are available on the Fossil download page
(http://fossil-scm.org/fossil/uv/download.html).  However, the dozens
of check-ins that went into generating these patches, and the tickets
that describe the specifics of the vulnerabilities, will be embargoed
for a few days.

See the thread on the Fossil Forum
(https://fossil-scm.org/forum/info/a05ae3ce7760daf6) for follow up
information or to communicate directly with the Fossil developers.

-- 
D. Richard Hipp
drh@sqlite.org
