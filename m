X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["444" "Sunday" "19" "April" "2015" "22:21:00" "-0400" "Dan McDonald" "danmcd@omniti.com" "<93B50930-3327-4BCA-86C1-3768F27C7490@omniti.com>" "11" "[oss-security] CVE request" nil nil nil "4" "2015042002:21:00" "[oss-security] CVE request" (number mark "        danmcd@omnit Apr 19   11/444   " thread-indent "\"[oss-security] CVE request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9776 invoked by uid 550); 20 Apr 2015 02:21:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9758 invoked from network); 20 Apr 2015 02:21:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from:date:cc
         :content-transfer-encoding:message-id:to;
        bh=6KCDGCKijaXjWkNIc0rBUiOWl6dKVWMeDLHAbCK9Caw=;
        b=KKcJCy0mPEr3cVzEhZQY0dI+noQ4xKx+OP6xB/HQttETU62EWD+PGWhzMoU7Lsan2p
         A9Yp1GT5OHaN2z57y2LzcPV6JFX50iN/zQoL1EXgmZFnFWFUvhyhlH1UaKElPe1RKy1+
         3P/A7lYyyCd/WJ+eC5oqNLOA1EQB8+/TpG7vai8BEciSR5pEmVMBCqAKt1a0pLP1Tfav
         49fm2f2O2hJdSI/fUh/zGODYOhFR/pyK/6Ki4Z1COUVKyWnmajhMBn98RdA3BZ8YuuQe
         kY9QfKdbsorlcidx4SJR5QYB8Dftlpf7k3Dd3ayZnxGCmHaPNyC7XF6fHhAgwaoUgGAs
         J3MA==
X-Gm-Message-State: ALoCoQmg1Ip8sH8LQ/cqGyTzJkGkqAoM7VRwChxDjr1MivGfCl0nOBLH5DQoMptydo3Fn9eP5Spz
X-Received: by 10.229.66.198 with SMTP id o6mr15683847qci.31.1429496462463;
        Sun, 19 Apr 2015 19:21:02 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Content-Transfer-Encoding: quoted-printable
Message-Id: <93B50930-3327-4BCA-86C1-3768F27C7490@omniti.com>
X-Mailer: Apple Mail (2.2098)
Cc: Dan McDonald <danmcd@omniti.com>
Date: Sun, 19 Apr 2015 22:21:00 -0400
From: Dan McDonald <danmcd@omniti.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request
To: oss-security@lists.openwall.com

Illumos bug #5853 (https://www.illumos.org/issues/5853), now fixed, can be =
exploited to escalate privilege.  It's not easy to do so, but it is enough =
to cause concern and ask for a CVE number.

At least two distros already have this fix in place.  I'd appreciate a CVE =
number (and if possible a way to request these on a non-public list... sorr=
y if I missed the FAQ).

Thanks,
Dan McDonald -- OmniOS Engineering & illumos Security POC

