X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1079" "Tuesday" "17" "August" "2021" "18:09:32" "-0400" "Dave" "snoopdave@gmail.com" nil "35" "[oss-security] CVE-2021-33580: Apache Roller: regex injection leading to DoS" nil nil nil "8" nil nil (number mark "U       snoopdave@gm Aug 17   35/1079  " thread-indent "\"[oss-security] CVE-2021-33580: Apache Roller: regex injection leading to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-33580: Apache Roller: regex injection leading to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29991 invoked by uid 550); 18 Aug 2021 06:55:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7608 invoked from network); 17 Aug 2021 22:09:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=cnJYApKTjfinDnKRBAjJmBjNwaeZ2rNeMlPKN2DObu8=;
        b=VbzFh/AeQCNzUmtHVhfhBIoS/OZU8J9lHQ/vqN79e4rR5vurmflYPZ5vgLrPfjfrab
         glQXhrD4S+W1DCqaM141HjNQs++d8z4bIRZTeE/Ca0skHcVMfYpkvlmm7AxM7AQvTk/h
         LeeS02hwevoiSJ2PYGBmlC2TyKj3dLPprkQY9c8jnp79kIYl2TvFAUfSblgF19W90Vmx
         jGblCP1EXmidSDTwrnFdKBfHy9Ira9hrE2yyhJAt/JxY3QFsQ6qFHt+KCdcM5vDZsiVy
         ORP2raKwwa+0inmBvBCDmcVQ/tBPQsgslHHKle8WjT6SWGvS0Q01xsu6BdS1EYVlJGNq
         2G/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cnJYApKTjfinDnKRBAjJmBjNwaeZ2rNeMlPKN2DObu8=;
        b=QhjUZ6ZAaDKzz9TfjNmsCIOL9PW8dk8lFHEyYVcULHWt+ac6CdAtWjihH1JmM6/W+W
         xfqXBPiqgl/91asvFbNpvhFoiMAjM/KPNCvJPOyHAfaJDPl8qjlkPHwr/gs0NFHuN5Go
         HSRjgZat4cJa4JFo/k1UrgybGHp0uYyM/CJUDLmzaQvszHloFG0V2V/wu4qtEzpTOOJK
         VDFuZ8X5/xGnmQ6gSd2hd6h+LG0J2RN24k+2UVfroSKUTXR4vvA0SYzYomuOHhdru5N1
         Lu3lVzZXzZ3Vf36vaPei+VaF+FSDUprLGjfDtZ7nocimUga39I3c5zQw/2jZYRfSXF/o
         ng/Q==
X-Gm-Message-State: AOAM533VRpqmd4/jWRSP+sh142LFj2SAhIDb9qXzgdlF9BS51m9TlT30
	TyPJbwfcj2Z2kLR5h7AU2TXHMIIxdpc4Q3P5PkjrYtUqzZF5pQ==
X-Google-Smtp-Source: ABdhPJxVUPQWgTz0qVLGLNd3phTLUC0jvvP9+0cRXrPI8jhofxlHv/CrGyC4B6/oEg1wmTSztNiopPok/RsBOpBRN1A=
X-Received: by 2002:a50:da0e:: with SMTP id z14mr6353822edj.73.1629238184841;
 Tue, 17 Aug 2021 15:09:44 -0700 (PDT)
MIME-Version: 1.0
From: Dave <snoopdave@gmail.com>
Date: Tue, 17 Aug 2021 18:09:32 -0400
Message-ID: <CAF1aazDWpE1kmRv92N2sGtH_B4OC0cJJVrK8qJfxvXt33s_B5A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004316f605c9c89305"
Subject: [oss-security] CVE-2021-33580: Apache Roller: regex injection leading to DoS

--0000000000004316f605c9c89305
Content-Type: text/plain; charset="UTF-8"

Severity: Low: This attack will only work if Banned-words Referrer
processing is turned on in Roller and it is off-by-default.

Description:

User controlled `request.getHeader("Referer")`,
`request.getRequestURL()` and `request.getQueryString()` are used to
build and run a regex expression.

The attacker doesn't have to use a browser and may send a specially
crafted Referer header programmatically. Since the attacker controls
the string and the regex pattern he may cause a ReDoS by regex
catastrophic backtracking on the server side.


Mitigation:

This problem has been fixed in Roller 6.0.2. If you are not able to
upgrade then you can "work around" the problem.

If Banned-Words Referrer processing is enabled and you are concerned
about this type of attack then disable it.

In the Roller properties, set this property
site.bannedwordslist.enable.referrers=false

Credit:

Apache Roller would like to thank Ed Ra (https://github.com/edvraa)
for reporting this.

--0000000000004316f605c9c89305--
