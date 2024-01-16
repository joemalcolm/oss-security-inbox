Received: (qmail 22194 invoked by uid 550); 16 Jan 2024 14:37:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20198 invoked from network); 16 Jan 2024 14:35:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705415807;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=iW5RoEFnKD7UXYQjD3QFy9oaueJbUf4BQ51toIpAe4s=;
	b=dnE61xYpqj27O1cK/D7rCJO3I2H6WiF/5r/MHMb1VX0VjSowHb+49JUN1gj+Y+OzvLMET9
	p5Kwo8xRywYK8HrocmZ7RKDJRPHlr964V/zai4wmsxH/leG+KvMptOBZ+6lKrC3aJ8Y+Xn
	jz39XcBTnGHpDuiGGM3G3BLuovHy+vU=
X-MC-Unique: IsCEYIsEOIOuQgnUngV76w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705415804; x=1706020604;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iW5RoEFnKD7UXYQjD3QFy9oaueJbUf4BQ51toIpAe4s=;
        b=KrWQuP79KlBuqdz5IBEpCYDGzgaAhOoHsT1io4sYuMHkoEAvlb6+UuEYt8vAOBbmAX
         4KnLLE43EZ5GoRg3wvVsHfhBCaSUzor3RwNgz7J6IV2B+o1earyhWcITrkkH0AsKzkEF
         68XZpshFy5fTmC5N2ZkP/vJIy/aX0SXg23qtQzzfXFJVyBg0rHyEw6FUP+hYNxqylYjZ
         3YJZbtG6X3WQU/JBnib+ecX1BAGvPyBKq4V360muyO5pm36ajhqqCFUQMzzNOdg70kuV
         MHKqjvHqJwG368hKrY7SDlLiSNIP5IkWA5XNWHjpVafeF3nBPdq+Zo8c/LpJJfok6G3X
         np8g==
X-Gm-Message-State: AOJu0YwQl9Is7rPIIq18b9uVvBPbwFDAmV5JWrdd0x1ki0VX4na/T2T3
	LHd/n8GUg1F322+BeS7Q3kLFf0ETpBV6MxpWUHLVJcfiyGpN/YuBJ/AYuNyd7esqBiaGpPutdzU
	VZJxfx115JZ8a1HZj3y46AKii1viYw4bJgaeW3CQ/bXlx+f4Oclu0dAcd0BevUes=
X-Received: by 2002:a17:90a:e989:b0:28c:ee72:512c with SMTP id v9-20020a17090ae98900b0028cee72512cmr4606276pjy.57.1705415804648;
        Tue, 16 Jan 2024 06:36:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV/rUj2vn66loDMHdyaxMVtpiD9GAhKVJ3+x+s1wqCYbvd/h3U6m6uw0H+g36AbL/p9qbv8wZZ7kjou/Ry0Gk=
X-Received: by 2002:a17:90a:e989:b0:28c:ee72:512c with SMTP id
 v9-20020a17090ae98900b0028cee72512cmr4606264pjy.57.1705415804160; Tue, 16 Jan
 2024 06:36:44 -0800 (PST)
MIME-Version: 1.0
From: Marco Benatto <mbenatto@redhat.com>
Date: Tue, 16 Jan 2024 11:36:07 -0300
Message-ID: <CAOGQQ2-EaBO5nKO35Ni0sfVCncjGQqWU8XU-gsnV36BKZoLhQg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Pavel Raiskup <praiskup@redhat.com>, Zack Miele <zmiele@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-6395 Mock: Privilege escalation for users that can access
 mock configuration

Summary:

There is a flaw in the Mock software
(https://github.com/rpm-software-management/mock) where an attacker
may achieve privilege escalation and execute arbitrary code as the
root user. This is due to the lack of sandboxing when expanding and
executing Jinja2 templates that may be included in some configuration
parameters.

Mock is a chroot build environment manager for building RPM packages.
Mock uses Jinja2 templates for expanding configuration parameters
through the TemplatedDictionary python class.

This feature was introduced in mock 1.4 back in 2019 [1] and in 2021
the TemplatedDictionary code was split out to a separate project [2].

Mock documentation recommends that users added to the mock group on a
system be treated as privileged users [3]. However, some build systems
that invoke mock on behalf of users may unintentionally allow less
privileged users to define configuration tags that will be passed to
mock as parameters when run. Configuration tags that allow Jinja2
templates could be used to achieve remote privilege escalation and run
arbitrary code as root on the build server.

This issue is being identified by the CVE ID: CVE-2023-6395 with the
following CVSSv3.1 score:

6.7/CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H

The upstream patches for this issue can be found at:
https://github.com/xsuchy/templated-dictionary/commits/main/
https://github.com/xsuchy/templated-dictionary/commit/bcd90f0dafa365575c4b101e6f5d98c4ef4e4b69
https://github.com/xsuchy/templated-dictionary/commit/0740bd0ca8d487301881541028977d120f8b8933

The provided patches target the templated-dictionary module [4].

Please don't hesitate to reach us out in case of any doubts or concerns.

We would like to thank Sankin Nikita Alexeevich, an independent
security researcher, for discovering and reporting this issue.

Thanks,

[1] https://github.com/rpm-software-management/mock/commit/426d973c2917a18303eea243bdf496ff6942bd27
[2] https://github.com/rpm-software-management/mock/commit/c989e28ba92c571c0834e9b5d10ef29340e661f8
[3] https://rpm-software-management.github.io/mock/#setup
[4] https://github.com/xsuchy/templated-dictionary

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

