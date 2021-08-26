X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["708" "Thursday" "26" "August" "2021" "11:58:35" "-0300" "Marco Benatto" "mbenatto@redhat.com" nil "25" "[oss-security] libssh: Possible heap-buffer overflow when rekeying (CVE-2021-3634)" nil nil nil "8" nil nil (number mark "U       mbenatto@red Aug 26   25/708   " thread-indent "\"[oss-security] libssh: Possible heap-buffer overflow when rekeying (CVE-2021-3634)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libssh: Possible heap-buffer overflow when rekeying (CVE-2021-3634)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31927 invoked by uid 550); 26 Aug 2021 15:16:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27695 invoked from network); 26 Aug 2021 14:59:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629989956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=gzeCZNldlPJYxKC7xiVA0w20lhlZyiS5+WqqtWBcNZM=;
	b=Hq3WA+AUT5mAFhAcHyfABmqiH4SI0s+BlzpP6BfrN2nujeymO2JRkSzYZzbLiUWJIw/Nk1
	z5TC1YfZXLpQ3kaba+Dt5E/Yh5vEblMi8IAKkcNjldumSvc9rKLQk/CsPIlSDWxvrieqem
	K3ZCmyFI8rB5twrCYAlgYNuNyo7LISo=
X-MC-Unique: Vdxe7NWOPWWl2Kt8LjnWgA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gzeCZNldlPJYxKC7xiVA0w20lhlZyiS5+WqqtWBcNZM=;
        b=s8oL7Jg5SaGRZejIq8rynEBjq6KghzbHd7n4mkL/p0oG5/sJs3G/TSUYflTrzv83HJ
         x+BTRWRf7kj7hSR7QTLAMudI3qBjkuE5uQUChElDjFGn3EHpjA8Nw35YKMqlJJhEdU4H
         ssXKPcQaP0bRWxu4tUx7jBXlW0DIFIweW5ijmPPLiSAx9lLc9KVTK0nWfH9Nl8xXb/aL
         iWct0mV8Gnmwh0MA4RUxRl2M979SbRUg6YK0m1wBgd8wVmH2xFEIws6i7ym61nqJ+wuY
         A4+dAYQWgiCZqzvdXvd1xDJ/Z2V2J9hCAYL0Yyt1q1mMUYqYF9l7TkLkMsw5dCr/vQ/6
         hRvg==
X-Gm-Message-State: AOAM531BavDzYVh6C9OmXY0wSHPxRWi5qN3hERfFRR/GD+Uu3bjk0GXZ
	c4HsroykIoPQxGtN/N3zay+sI3TJJyoVqL3GGS2/YRia4GTUD6/XfKfN9TtCufT18KuoQbH18G1
	R/LT1cCodZjaiPcYDfEkhfYFYJep8akoX4BuOAxJZHJj+
X-Received: by 2002:a05:6512:3f98:: with SMTP id x24mr3169583lfa.378.1629989951834;
        Thu, 26 Aug 2021 07:59:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMzKC3EgeV2mPtmn4D1sS3QXiPKVOgbm6Hpn+WsVzmqp50bi++ulgAQVO0RTkqqfCTVdh+vwZa5uwrMqXmiYs=
X-Received: by 2002:a05:6512:3f98:: with SMTP id x24mr3169568lfa.378.1629989951549;
 Thu, 26 Aug 2021 07:59:11 -0700 (PDT)
MIME-Version: 1.0
From: Marco Benatto <mbenatto@redhat.com>
Date: Thu, 26 Aug 2021 11:58:35 -0300
Message-ID: <CAOGQQ2-5630=HhmZbaxWr2bB3vHdzd=FE1hZ2jgCn71hxPZ2WA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mbenatto@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] libssh: Possible heap-buffer overflow when rekeying (CVE-2021-3634)

Hello all,

a new vulnerability was made public today for libssh. It involves a
possible heap-buffer overflow when rekeying and had CVE-2021-3634
assigned to it.

Vulnerability summary:

"A malicious attacker can request rekey with key exchange algorithm
with digest of different size, causing libssh reading or writing
behind the buffer limits."

CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:L/ (5.3)

You can find more detailed information regarding this issue on
libssh's security advisory:
https://www.libssh.org/security/advisories/CVE-2021-3634.txt
https://www.libssh.org/2021/08/26/libssh-0-9-6-security-release/

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

