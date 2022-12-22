Received: (qmail 24318 invoked by uid 550); 22 Dec 2022 18:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7712 invoked from network); 22 Dec 2022 16:43:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yZLAlOhCGilIwuTmtW0IVLJRanvaBYIelqxDGN9L3mA=;
        b=ntlPTMV4mBJYN7GB1xLqSC6qEFW7/c4RVIUl7rVnZDNgEyUnIFTrW7ehcuwSjA9MOT
         roXNazIIcGsS24FHx1L0hDGQS3Z8bXmRO0K8a7JuCtbpCxERvYemdLj3Ua0F+5P3X8Js
         6+6krr8AjM5RIrp+OxufDGOxjY2Hieowj0//MgfhL0H9x7rknnumipH69NwM/Hw9X11p
         peaLgdBwcc1r1HCNdLU7G+QzpckOgMmxMzZq1aEn04PkaKZum8VZr5h/v5z0CMpwNa1w
         EefqCy5z9v4qYICYsn3Qf9hH91DI57OppL3On7C7ra5J+d/YImz3xvg16yTkqmmOGHxI
         5q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yZLAlOhCGilIwuTmtW0IVLJRanvaBYIelqxDGN9L3mA=;
        b=vnR8wXlQgscqVKG8tFrI/8qSDWroLYIR71AtuyJjfwB24k723PEwcbsDR1JDjxFCaA
         IKjIqJElz5MIlKdb/FlRYo7GHey6XgpfjyTlohxkmXTJCOKh1cnsn0jD7ldt2qiw0VMT
         xOQnSZDUQJ8xvS8+5VXVdM7TKx7RqjmHmWuXCPLsfjBSFnZ+NhYyB2MDg9H158JtpYpI
         m3/yt0nlXq87vdaEJQi7WJ+JRNfPj3PAUTHUtF4YeAYbr8No/Y5ckC2W3DGaFnOga1gu
         kVBn1JgffPTE2erJD9QomlbDIwm4iu4vhN6QKSlpAbGxRmlZcziBUCzkBgp7EPeJgsDP
         4g0w==
X-Gm-Message-State: AFqh2koY6Q9DWjmSbjf7GU0Qpn4EWUaUn7E32u/xsUsCfTyU9Cf+yqcB
	HDeXrvskm2Sb2tTol8V6wQ==
X-Google-Smtp-Source: AMrXdXuzs4kMZk+HWNO62x7FIJsgu18TkyZ58z9KExzlVdu/eNpacftlA06q5G9uWJDVMBdBRmQvoQ==
X-Received: by 2002:a05:600c:4d25:b0:3d2:27ba:dde0 with SMTP id u37-20020a05600c4d2500b003d227badde0mr4876976wmp.33.1671727375391;
        Thu, 22 Dec 2022 08:42:55 -0800 (PST)
Date: Thu, 22 Dec 2022 19:42:53 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	oss-security@lists.openwall.com
Message-ID: <Y6SJDbKBk471KE4k@p183>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat correctly

/proc/*/stat can't be parsed with split() or split(" ") or split(' ')
or sscanf("%d (%s) ...") or equivalents because "comm" can contain
whitespace and parenthesis and is not escaped by the kernel.

BTW escaping would not help with naive split() anyway.

Mention strrchr(')') so people can at least stop adding new bugs.

Signed-off-by: Alexey Dobriyan <adobriyan@gmail.com>
---

 man5/proc.5 |    5 +++++
 1 file changed, 5 insertions(+)

--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2092,6 +2092,11 @@ Strings longer than
 .B TASK_COMM_LEN
 (16) characters (including the terminating null byte) are silently truncated.
 This is visible whether or not the executable is swapped out.
+
+Note that \fIcomm\fP can contain space and closing parenthesis characters. 
+Parsing /proc/${pid}/stat with split() or equivalent, or scanf(3) isn't
+reliable. The correct way is to locate closing parenthesis with strrchr(')')
+from the end of the buffer and parse integers from there.
 .TP
 (3) \fIstate\fP \ %c
 One of the following characters, indicating process state:
