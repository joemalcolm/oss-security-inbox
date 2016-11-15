X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["781" "Tuesday" "15" "November" "2016" "12:25:35" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRq0gS+0H-iFUm9kr2kDGoGXa01=ZakM=FwraBdAZoSCQ@mail.gmail.com>" "31" "[oss-security] CVE-2016-8646: linux kernel - oops in shash_async_export()" nil nil nil "11" "2016111502:25:35" "[oss-security] CVE-2016-8646: linux kernel - oops in shash_async_export()" (number mark "U       wmealing@red Nov 15   31/781   " thread-indent "\"[oss-security] CVE-2016-8646: linux kernel - oops in shash_async_export()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21806 invoked by uid 550); 15 Nov 2016 02:25:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21779 invoked from network); 15 Nov 2016 02:25:47 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZovOOsKXxq4CFGMtCRCz/sL7sUV0Gi+UJOfK7WV6pQ0=;
        b=OoKK6UdR1h4DUDwhke2rNebdJDlobmR3TBKtDGLCfYF5Iv/kkxQh5JYpGLkOdjwUiC
         6C2yjqd5WLP4FAhJTEoBKJyWodBnlv70+2mUaxakDcmkw5IBRZ1LVhpVX6tuSy0Ojtpu
         r3M/68R9rUKf7ARLVN4eqf3S7pykXC1LEUdRvgkM7qzMkO5ZsaD7vlkpoT4fsmjLDkaj
         rjeDJIubVW6pROMraHrFqudMFJ1ZywT3ZuWXCvxxYf5Xhq5mvzVByIpVz1SfArCz3g0+
         ZqrhRV8Ssyb/lixP4Wn11v962QD1ijwNtloyUt/jY3xAm82kfCMaeySILMZTShNlEwjB
         3jYA==
X-Gm-Message-State: ABUngvcIqDSkB+2Gjqnl/Z2ljSIICSW8pE50oQLmaQNt5JOCruWclG/vGKZvjisMfDl5mxYsBtJmRFffmxNaYWxk
X-Received: by 10.107.139.74 with SMTP id n71mr31305346iod.166.1479176735684;
 Mon, 14 Nov 2016 18:25:35 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Tue, 15 Nov 2016 12:25:35 +1000
Message-ID: <CALJHwhRq0gS+0H-iFUm9kr2kDGoGXa01=ZakM=FwraBdAZoSCQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c05be08e412e705414dabc9
Subject: [oss-security] CVE-2016-8646: linux kernel - oops in shash_async_export()

--94eb2c05be08e412e705414dabc9
Content-Type: text/plain; charset=UTF-8

Gday,

Igor Redko from Virtuozzo found a vulnerability was found in the Linux
kernel. An unprivileged local user could triger oops in
shash_async_export() by attempting to force the in-kernel hashing
algorithms into decrypting an empty data set.  Not all in kernel algorithms
are affected.

Upstream has already fixed this issue (See upstream patch) in 4.4rc1.

Thanks,

Wade Mealing
Red Hat Product Security


Upstream discussion:

https://lkml.org/lkml/2016/10/12/198

Upstream patch:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=4afa5f9617927453ac04b24b584f6c718dfb4f45

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1388821

--94eb2c05be08e412e705414dabc9--
