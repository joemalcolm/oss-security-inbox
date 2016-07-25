X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["495" "Monday" "25" "July" "2016" "10:50:30" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" "15" "[oss-security] CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Date:" nil nil "7" "2016072500:50:30" "[oss-security] CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "U       wmealing@red Jul 25   15/495   " thread-indent "\"[oss-security] CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5412 invoked by uid 550); 25 Jul 2016 00:50:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5394 invoked from network); 25 Jul 2016 00:50:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ydp/l62/HAJqPO3Jg3UC8o4DW7MYRgTx3TLY15t6W4o=;
        b=T2NlPMiJmL1Yzo9GidZgOiS1bufPxvfVm33VzSLRHa+Mimo0apbPQPlAElo66O8tWK
         U4fHbbeIgd282YjiIrP76D/QJm5vyyP0eYsk2ehzdzqInnheJFxtES/GkccgbfX4jYDS
         ypw2xx1/UQYUxCuWISqqE8UbbD0zneSlaZRvsq4RWMuWpN6Ic/p0pppTliu1e+kHng6u
         +yTu7W1OB6/d+v2YCjWXxW+g7EDkic3leX543Zk0T3aX9yI0T/z/UtONFFKLH/nF4jhw
         DVDQJklR2EUbLEqYR32xwvYOPlZ3rFFbMyrAZvNHAtHVCW72p9mVS/4SGAh8LeY6sts4
         NzCQ==
X-Gm-Message-State: AEkoouvCq9NiX3D24GMIK7OXdkPU7+BjcxYkm3hSR6cc0G/UjJyxgoY49OdpRdWuiPP6ULg2MG6C1mmi0nz//XJT
X-Received: by 10.107.197.1 with SMTP id v1mr14963624iof.178.1469407831124;
 Sun, 24 Jul 2016 17:50:31 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 25 Jul 2016 10:50:30 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.
To: oss-security@lists.openwall.com

Hello All,

A flaw was found in the linux kernel's implementation of the airspy
USB device driver in which a leak was found when a subdev or SDR are
plugged into the host.

An attacker can create an targeted USB device which can emulate 64 of
these devices. Then by emulating an additional device which
continuously connects and disconnects, each connection attempt will
leak memory which can not be recovered.

This issue was assigned CVE-2016-5400.

Wade Mealing
Red Hat Product Security Team
