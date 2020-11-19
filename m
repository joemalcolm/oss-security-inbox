X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1860" "Friday" "20" "November" "2020" "10:29:34" "+1100" "Daniel Axtens" "dja@axtens.net" "<20201119232934.366442-1-dja@axtens.net>" "41" "[oss-security] CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" nil nil nil "11" "2020111923:29:34" "[oss-security] CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" (number mark "U       dja@axtens.n Nov 20   41/1860  " thread-indent "\"[oss-security] CVE-2020-4788: Speculation on incompletely validated data on IBM Power9\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-4788: Speculation on incompletely validated data on IBM Power9" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9329 invoked by uid 550); 20 Nov 2020 08:11:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30350 invoked from network); 19 Nov 2020 23:29:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=axtens.net; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Hv50OTKof1ySLSgXKhbSDwPu63dc/Q2OYUYjDioqDk=;
        b=K7IAO8/bWSn0BNaUx2CV0Adr4gHAQxYGdy13lz4Av9ecvYMOor+eJgmjUKEuSiR1U5
         dKltGQ7TI5T0UfOOuy1HkRWRtlx+Z4AalngJHhvpUiwtGKhE3Lyy+RxD8brjetwwI2yl
         QuF2wqPYK63qwaJM/+d3TYKDhV7WqYT68adMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Hv50OTKof1ySLSgXKhbSDwPu63dc/Q2OYUYjDioqDk=;
        b=ExrA9eBVwRpgosFBK1vUyhKF1ghC4B08x4sO2JAyqKVKydwksiBSf33YVvQQmXNHHT
         G6EH5Rhawe1MMoQKZhFZiPKJSkX98CCKxegtoIZ1O0IGrdYpxNeEg0/O/DCJ4nArQoz9
         LS+lwzkJUKbf3SQDr4bpaDBkatEZ1m/WIcZtA+6PEjJ1CtRZtOAJTJawBZPHGWkcweYe
         MZSa1Y5YJ7pWqdzjsl64Zd7kjBAYK2Fi7NPza2VLHaYqQnnqMd8G88oDSWZmEwealbzr
         HR5Qab+dAGl4AJaYHqvE6ygBzXgrc8fBmDWxQeIrPqs0lZm5I8d8QAfBdpd37E1DHm+P
         qxVA==
X-Gm-Message-State: AOAM530gt62lUVC6/TB0dt0W8ARIFZ2i38v7bSOoG96GnXVZ+QNeCxgu
	r6MvwhqhdzMaaBpdOwhyqa5NkWM5FElSBA==
X-Google-Smtp-Source: ABdhPJx6B0ZhBVMY7by5UNT8Nhy6OaoT1ETK0GrbPUqqrYS2zyj6Gf2zPTLhI/U5sJut53xbfctwcg==
X-Received: by 2002:a17:90a:aa09:: with SMTP id k9mr7300838pjq.197.1605828578550;
        Thu, 19 Nov 2020 15:29:38 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: oss-security@lists.openwall.com
Cc: cmr@informatik.wtf,
	ruscur@russell.cc,
	npiggin@gmail.com,
	mpe@ellerman.id.au,
	spoorts2@in.ibm.com,
	dja@axtens.net
Date: Fri, 20 Nov 2020 10:29:34 +1100
Message-Id: <20201119232934.366442-1-dja@axtens.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2020-4788: Speculation on incompletely validated data on IBM Power9

Hi,

IBM Power9 processors can speculatively operate on data in the L1
cache before it has been completely validated, via a way-prediction
mechanism. It is not possible for an attacker to determine the
contents of impermissible memory using this method, since these
systems implement a combination of hardware and software security
measures to prevent scenarios where protected data could be leaked.

However these measures don't address the scenario where an attacker
induces the operating system to speculatively execute instructions
using data that the attacker controls. This can be used for example to
speculatively bypass "kernel user access prevention" techniques, as
discovered by Anthony Steinhauser of Google's Safeside Project. This
is not an attack by itself, but there is a possibility it could be
used in conjunction with side-channels or other weaknesses in the
privileged code to construct an attack.

This issue can be mitigated by flushing the L1 cache between privilege
boundaries of concern.

Patches to fix this have been sent to the linuxppc-dev mailing list:
https://lore.kernel.org/linuxppc-dev/20201119231333.361771-1-dja@axtens.net/T/#me4f6a44748747e3327d27cd95200bf7a87486ffc
https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=215657&state=%2A&archive=both

Backports to supported stable trees are currently being sent to the
stable mailing list.

Fixes for AIX and IBM i are also available from IBM.

CVE-2020-4788 has been assigned. Further details, including the CVSS
score, will be available at
https://exchange.xforce.ibmcloud.com/vulnerabilities/CVE-2020-4788

Thanks to Nick Piggin, Russell Currey, Christopher M. Riedl, Michael
Ellerman and Spoorthy S for their work in developing, optimising,
testing and backporting these fixes, and to the many others who helped
behind the scenes.

Kind regards,
Daniel Axtens
