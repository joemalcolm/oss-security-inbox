X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["462" "Saturday" "3" "December" "2016" "12:22:43" "+0800" "Baozeng Ding" "sploving1@gmail.com" "<a4156d1d-7f4c-d5ea-0687-3dd6d9ace541@gmail.com>" "14" "[oss-security] CVE Request: -- Linux kernel: double free in netlink_dump" nil nil nil "12" "2016120304:22:43" "[oss-security] CVE Request: -- Linux kernel: double free in netlink_dump" (number mark "U       sploving1@gm Dec  3   14/462   " thread-indent "\"[oss-security] CVE Request: -- Linux kernel: double free in netlink_dump\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19479 invoked by uid 550); 3 Dec 2016 04:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18431 invoked from network); 3 Dec 2016 04:23:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:from:cc:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=RvOcQk2xMO2EZatd3ehsT+Cu8H/9RRY1bfF96wd9C74=;
        b=KFTdE0UrhInPotO+HRrUs8nr7aGILQOAcMm3QzE8XrUVaAHF5N0zW3JCX2qBgIt0aH
         VCY9mo+hnn2+jt57Ytx9LWACXqJYyONhJD2DV4bVocon//qaW7oihgRqdmMdN4i83f7h
         jfxRrSX5aXiqDo0tFL3oBMz9Ba/XNynMvSpGBf42EVVuAPsaQHCM7ZI1nYZoCu5FZjHc
         tqeXDtua5L9XT2eBLz/puX3OIYWLSed89biGiUDUL7gS3gGyqdyDS03wkBY2BK3AI8WF
         ADeJXbYW4lSMFgtW5M/yb6NPPOacrY+OkXZiLV/lt/2/V9NQ/A6C/1PiZrBZOO+VAmWQ
         XDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:from:cc:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=RvOcQk2xMO2EZatd3ehsT+Cu8H/9RRY1bfF96wd9C74=;
        b=kzdvV/wJLX1ihWi8vv/axl8EnF8XfX/+4R7J4U83nTBnchj1f7Cl9mjP5GoOxAN27O
         RIfEJvipeDQmnC5uJg53xy4b34splDEycYKUTZ7pFxs1VDYvPRxM8xzy2PCCyZ7L1AD7
         Oa43gfGEAhar8+9HalYtrp45o3o3QUwB53C49lhFKLGXb9O0L3tdGmrEJffeULt6q6ii
         6B6aC4/q2gunFavZnC0E0sHMZzl2v1j2Za8N6qxuXLBGXqxGxulwZRFh3FkJU1+UsHpB
         4x+q1DxPzVaAcM9ooyYZjlfKfJDMinvFjMUftHkyV5wdpAHNwWg9chw3W8vvR68BH30G
         Yprg==
X-Gm-Message-State: AKaTC00eMvkHTxuRF+7hvqzM4TDqofU1HB+IXmsUm6iIPsW67DtYepCJ6BLkQxKI20DtcQ==
X-Received: by 10.157.59.180 with SMTP id k49mr24474436otc.255.1480738997064;
        Fri, 02 Dec 2016 20:23:17 -0800 (PST)
To: cve-assign@mitre.org, oss-security@lists.openwall.com
From: Baozeng Ding <sploving1@gmail.com>
Cc: herbert@gondor.apana.org.au
Message-ID: <a4156d1d-7f4c-d5ea-0687-3dd6d9ace541@gmail.com>
Date: Sat, 3 Dec 2016 12:22:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: -- Linux kernel: double free in netlink_dump

Hello all,
A double free vulnerability was found in netlink_dump, which could cause a denial of service or possibly other unspecified impact. 

Reference:
------------------
  --> http://lists.openwall.net/netdev/2016/05/15/69

Fixed in upstream:
--------------------
  --> https://github.com/torvalds/linux/commit/92964c79b357efd980812c4de5c1fd2ec8bb5520#diff-8eef21016eaab5b2a6e8019e94f4a710

Could you please assign a CVE for this vulnerability? 

Thank you.
