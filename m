X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["401" "Tuesday" "22" "November" "2016" "10:52:44" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>" "15" "[oss-security] CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb" nil nil nil "11" "2016112209:52:44" "[oss-security] CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb" (number mark "U       andreyknvl@g Nov 22   15/401   " thread-indent "\"[oss-security] CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26191 invoked by uid 550); 22 Nov 2016 14:54:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32694 invoked from network); 22 Nov 2016 09:52:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=2QvROmuTFaZa4ZaJFER4IyMYJOcd/zr4ho1MqiE8bfc=;
        b=C5nIBH53/R8Tu8LH638Y5I1fNFUGMZ/n5ZGOGGaI4isoBLM+F1ggH63gK98nFMSCjj
         xURobJQ2BAP7Y7HY1mECmkt04zSe4X/dysTYScdi07/76iy1XquQWGRdO0ZzqZ1cnk42
         lZQA+YXmqUwqRKCggq/dTpOVuB8BLaf2BsLkG15nkMapeTcznNAHnZpzDeDXRhRVJt8N
         JaVEp0o03FHWYrQ2+wT/+EkSive1nTotymwDTUVMiOIpCmhxt+VMqNq9npEYqtRsqBsq
         aPrsa8EpETvjmbS+6R06ONLG70/RCLcNSCpzHbhZH5jT6F6Q670/ITA8Pm+V+1o9BT2r
         YoTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=2QvROmuTFaZa4ZaJFER4IyMYJOcd/zr4ho1MqiE8bfc=;
        b=C4p0H9tAURknH72hW2Db+fHbyQ/wqmrd1ZFcsqaqIblcqaxpvyO1utmg4YGc1QZ4Na
         rJP8naPi/MvfUa/Obk67Z7aWkrj948RrEyjzQpaAS5rUICgnCwmyK6bkWM2Fp3anhpUi
         m/Sr9twGdEEWM8dTD2WbdVvGIAbXddkdOcB3kfowOSKi0MWm3h2G0PP9B25EDM0421zw
         1URMja9gdU5I21Pz1P6H3Hjo3uzOIQC6SrNdRbmM36uoABsEB8NCD6WrPfluw2gbVJPm
         w8PP2O0g2zloHas40lQ8M2fCheAvvFM7Ox5wjiFgQ+f8lrfLm15DTrtAePaGRpuhkifg
         bKig==
X-Gm-Message-State: AKaTC03W4o8ABG6n9mW+PDMJo1quGrZctzIEZ/Zu+crk2wJdwNCB6+KOegIzcmyKUU3Pqlj2t8kUzbdYYuydbcfn
X-Received: by 10.46.0.137 with SMTP id e9mr10879315lji.11.1479808365502; Tue,
 22 Nov 2016 01:52:45 -0800 (PST)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 22 Nov 2016 10:52:44 +0100
Message-ID: <CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb

Hi,

There's a bug in the Linux kernel sctp implementation which allows a
remote attacker to trigger a slab-out-of-bounds access with an offset
up to 64K bytes.

The bug was fixed upstream:
https://github.com/torvalds/linux/commit/bf911e985d6bbaa328c20c3e05f4eb03de11fdd6

More details are here:
https://groups.google.com/forum/#!topic/syzkaller/pAUcHsUJbjk

Could you assign a CVE for this?

Thanks!
