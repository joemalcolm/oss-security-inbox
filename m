X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["855" "Friday" "19" "February" "2021" "17:54:27" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "30" "[oss-security] CVE-2021-3411 kernel: broken KRETPROBES reports corruption of .text section while running a FTRACE stress tester" nil nil nil "2" nil nil (number mark "U       rkeshri@redh Feb 19   30/855   " thread-indent "\"[oss-security] CVE-2021-3411 kernel: broken KRETPROBES reports corruption of .text section while running a FTRACE stress tester\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3411 kernel: broken KRETPROBES reports corruption of .text section while running a FTRACE stress tester" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18133 invoked by uid 550); 19 Feb 2021 12:26:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17576 invoked from network); 19 Feb 2021 12:24:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613737484;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=jk+rGpG0BTYJ3SptISzb9XYZIHwql9SZE+NyBeGp2p4=;
	b=XeOVMScRrUl9iNKjzasdwAZFcmYH30etBvv3IRK7+ixxsBfysW361iu/RxjCmhW983pbly
	LR2uG2Xj6wQgkgJGHw68KBVra8zbRDo71G/8hJnmuo0k5AIaDZrzQi1OmrLxfLhhFkEuVf
	5hWX72Wh6D/VMMcNq3BN7mk7dj/z4Xs=
X-MC-Unique: 9NbI4DMNPM6TlP_h745ZRg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jk+rGpG0BTYJ3SptISzb9XYZIHwql9SZE+NyBeGp2p4=;
        b=Ua8Wq2DFPNHWDekQ04I38HUrh9zI9zU2NHF7fQu6CF5QjrhEfacpcNem7zPO1Aii7z
         X8BA6NtMmjgeZyShIzYdRYUM/ZGVKb2EaFz6kiW3qYwY3TXnqaeXGX1AggnpJIR537MY
         K94E6HcAxyq/3ZQQfuOfhlGcNArXCmYm47LkVXN7vPFDCEs14ncqPpchH5r8KW949Ch+
         /IW4o7KV7LhCb3NbE7SxWGDr0CDDtSvcu3mjpgwhR8lWEmtW2IMfp/wmJaQ/lHpH8IhU
         eIrcVY3v31gWnZGpCsp3uETQYX6oXtqmhk1kHbtGOZmrWUo+OjL6cbWORFfd+Vib3qFz
         2YYw==
X-Gm-Message-State: AOAM531DcvpFMBcaDp8JZ6r2FTrLBV8azqJzOCXJtlPelyIzzbTkFDRW
	EwtsJe9SyJygCVeDS4c/Y9D2BMd10s0eNFOKBg7KCfwQ0zY6r+Hsl+4ArBbyhBt/6XeEbJvZmUW
	ErnoX0SrYt08iGLSuNTP3BdU0jXwRJ0nVrbjOldrko1U7
X-Received: by 2002:ac2:5a0a:: with SMTP id q10mr4735564lfn.319.1613737478765;
        Fri, 19 Feb 2021 04:24:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfZeP99LlBw6LnGGpUiXYtV9CmIpWe72Pjh1ntbclQALWPkQriyXQZ0VLyor305xHa3rEhVw9gMyRCM9sJl7s=
X-Received: by 2002:ac2:5a0a:: with SMTP id q10mr4735551lfn.319.1613737478516;
 Fri, 19 Feb 2021 04:24:38 -0800 (PST)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Fri, 19 Feb 2021 17:54:27 +0530
Message-ID: <CAKx+4-rj0qAZMmpuW9txO6ep1rkFD6dJa0nviEfmDmo7NUvsPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000002afe7b05bbaf89db"
Subject: [oss-security] CVE-2021-3411 kernel: broken KRETPROBES reports
 corruption of .text section while running a FTRACE stress tester

--0000000000002afe7b05bbaf89db
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A violation of memory access flaw was found while detecting a padding of
int3 in the linking state in function can_optimize in
arch/x86/kernel/kprobes/opt.c. In this problem a local attacker with a
special user privilege may cause a threat to a system Integrity and
Confidentiality, and may even lead to a denial of service problem.

'CVE-2021-3411' was assigned by Red Hat.

Credit: Adam 'pi3' Zabrocki


References:
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg2410570.html
https://lists.openwall.net/linux-kernel/2020/12/11/265
http://blog.pi3.com.pl/?p=831

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--0000000000002afe7b05bbaf89db--

