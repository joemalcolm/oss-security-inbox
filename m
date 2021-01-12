X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Tuesday" "12" "January" "2021" "16:58:07" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>" "49" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil "1" "2021011206:58:07" "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" (number mark "U       wmealing@red Jan 12   49/1124  " thread-indent "\"[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20177 kernel: iptables string match rule could result in kernel panic" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19979 invoked by uid 550); 12 Jan 2021 06:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19961 invoked from network); 12 Jan 2021 06:58:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610434702;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=ssVS0lUCYANFHmRZnCSC7OKZClhLTXNl+1f8+oLQubY=;
	b=QT27Cd5uqfD5Bx6f+VXzZHwlCwm8lUN5ePtYpUcUVWT+3Lpb2P+KQJy7f/menMX/yBJzZl
	9RpCzIthHeOTPdqKnhtFJroa19Vg+3SlTN+qJvakEniPMcBdX7A7m5pBlid8/EWfMl4nk1
	rGyJKJGu18SBPkf/rBTc6n1AW9zwwls=
X-MC-Unique: KWt3GcKYOK2AJ2gobH3s2A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ssVS0lUCYANFHmRZnCSC7OKZClhLTXNl+1f8+oLQubY=;
        b=gqeN5YJXdKH5YZMzhnmqm/a/MvqIrL/RWW39wVYtcpb8Hn5Jff6XjToI0LQzFa46+d
         9TrPJKpwkPGgy+P0TVDjnJ6rN9F1RENJa8DoLvio6RG+v/oJhIJ4g4HoW8RSEDh0PAZR
         NLxOKqRBFh76JbYclM20JMTZ4eKo3XptaqC8Y3x4njgV5hv2XqNRuL/CmT0L/Ktiq0Qm
         8PUHPp5jH933x3wEOoYos6jQu1G7EL1FtakBEKqNSCibA0DyQ3pw77o6spFwPTIHzKRV
         FCpuXWJPGLwkZqqljrF2RirAT6wEqQqRT75oM6aBs/Hw1kvx19HnoaYon4jh7SXCAIF0
         nfrQ==
X-Gm-Message-State: AOAM532EJiDz+A62kv+w1tlAwpjfgosJGON10NDFf1YOFz4e8hfRXF7H
	l2Vj+tBQxQLYQEip/IqB8l3YzuCY3u4Z2eG6GLTW8dXizanXJ4fWZOVqTZ/U9Lrmtkve9CAudxJ
	yVghRXWSowCTdldCoYyYepxUwOcSY/RK21IyDRxXdjIJo
X-Received: by 2002:a92:358a:: with SMTP id c10mr2663410ilf.258.1610434698423;
        Mon, 11 Jan 2021 22:58:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxPJM/yrMiFddxpHeA5XreBvzXQgPwYNbyLfy0OgWQCRrrMhYL+4it6Hp38CDhsCEIHXw6tuMGv7th/4zZ1sjc=
X-Received: by 2002:a92:358a:: with SMTP id c10mr2663398ilf.258.1610434698176;
 Mon, 11 Jan 2021 22:58:18 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Tue, 12 Jan 2021 16:58:07 +1000
Message-ID: <CALJHwhR0d-q7dPhC1wXWm63WA9cLh9cQX_GYRJO7Mw0O8kDL4w@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001e7e9d05b8ae8cb5"
Subject: [oss-security] CVE-2021-20177 kernel: iptables string match rule could result in
 kernel panic

--0000000000001e7e9d05b8ae8cb5
Content-Type: text/plain; charset="UTF-8"

Gday,

A flaw was found in the Linux kernels implementation of string matching
within a packet. A privileged user
(with root or CAP_NET_ADMIN ) when inserting iptables rules could insert a
rule which can panic the system.

Likely a user with these permissions could do worse, however it crashes the
system (DOS) and the user is going to have a bad day
especially if the rule is inserted and restored on every boot.

At this time it doesn't affect RHEL releases, and there are fixes already
in multiple upstream trees.

Thanks,

Wade Mealing

Upstream patch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca58fbe06c54

Upstream bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=209823

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1914719


-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@redhat.com for urgent response

--0000000000001e7e9d05b8ae8cb5--

