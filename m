X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Monday" "24" "August" "2020" "15:05:28" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-rQYK+Tkzszw6S736L7PVH0nudX5Sd5Pu_V--qmaRWxEg@mail.gmail.com>" "29" "[oss-security] CVE-2019-20794 kernel: task processes not being properly ended could lead to resource exhaustion" nil nil nil "8" "2020082409:35:28" "[oss-security] CVE-2019-20794 kernel: task processes not being properly ended could lead to resource exhaustion" (number mark "U       rkeshri@redh Aug 24   29/722   " thread-indent "\"[oss-security] CVE-2019-20794 kernel: task processes not being properly ended could lead to resource exhaustion\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-20794 kernel: task processes not being properly ended could lead to resource exhaustion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22452 invoked by uid 550); 24 Aug 2020 09:43:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18149 invoked from network); 24 Aug 2020 09:35:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598261743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=WElRFpbImSBpv8N8PVrU7E9VTenLIs4PrbCYFQ2btRw=;
	b=dKtRNj4Q0657Et+PfsXGtc8T7a1iFx1oXPy3nkUNQoHxOOKZXgwEILGy0i4TXapeqGj3c0
	egpsfqMSLDoJ5UX9ELDB7X7y5Nog8oA2mJIum9NyUIRELSnvrRYhA6nVrUZ1BkFR/CWf4o
	8/Lff4QalRWnZx8LtokjGdFtgCWZw/o=
X-MC-Unique: ZuLUrg4uOOq9_WV16YhE8Q-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WElRFpbImSBpv8N8PVrU7E9VTenLIs4PrbCYFQ2btRw=;
        b=HYDvCvnmbL5FwmiMVIuIQc87gE3aToYvDBEOJKgJghYbc/1mFVc/B6dq9763NNk95s
         R1nLjmC7ESE3KGK7v4DWFlOdePMsY1OY97PEcPFWiCdKxaJ3KuFi/NwG16hZ8eBWo589
         jTMs5uxcVtibyUFytslI2hbAlUV8aNGoQu6KCW3WIrJ2ktNY5JjQ7fv+fjgQbRnuwV2A
         BPrbbSnZ8fDkA7TMEo5GFuf2XAr/4V+tcY+65GiWyFvlNxDm1qRGc9RfOw/VP6Q6xtsq
         mQZtJatM20QfWy7IvfuZSw4ypuXZF5xXiHxEzUwL8Q4BP63n4tbZpy/Qj8GummV1sRKP
         dCEQ==
X-Gm-Message-State: AOAM532Jrqg2wEOJ+VsyQ8uoVjmNVsyUuXpqxV/fWOFMsaOJKOWacLw1
	gK+6SLeBY4EsyFlaFQhRR8BsoQ+5M1EE7Co2l3rjw9f4I9wwtIqucPzUG4IkQra6GCXNXQmXPQ3
	jJUcKzNAXt+PZDYcDW9+w8Q8SnwHi1skEspq/KWO+1aYL
X-Received: by 2002:a67:eb92:: with SMTP id e18mr1773118vso.96.1598261739470;
        Mon, 24 Aug 2020 02:35:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz7DKHbsBZRQ+CK04bYqdJmjev/6eY7ly6xp4dL8v0iHSzS7lDTvRSnCSjBkulGh1hGIl/CERqTFnQM3bPLHP8=
X-Received: by 2002:a67:eb92:: with SMTP id e18mr1773115vso.96.1598261739147;
 Mon, 24 Aug 2020 02:35:39 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Mon, 24 Aug 2020 15:05:28 +0530
Message-ID: <CAKx+4-rQYK+Tkzszw6S736L7PVH0nudX5Sd5Pu_V--qmaRWxEg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000038640205ad9c4f9f"
Subject: [oss-security] CVE-2019-20794 kernel: task processes not being
 properly ended could lead to resource exhaustion

--00000000000038640205ad9c4f9f
Content-Type: text/plain; charset="UTF-8"

Hello Team,

Red Hat has identified a vulnerability with the following details.

A flaw was found when a user with PID namespace mounting a FUSE filesystem,
If the userspace component is terminated (pid 1), this results into a
denial of service (DoS) problem. This internally makes the fuse requests go
into Uninterruptible state until the system is rebooted.


'CVE-2019-20794' was assigned via MITRE.

Reference:

https://github.com/sargun/fuse-example


Thank you
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--00000000000038640205ad9c4f9f--

