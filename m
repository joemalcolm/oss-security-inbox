X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Friday" "15" "September" "2017" "18:36:59" "+0200" "=?UTF-8?B?SmFuIEguIFNjaMO2bmhlcnI=?=" "jschoenh@amazon.de" "<63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>" "15" "[oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)" "^Date:" nil nil "9" "2017091516:36:59" "[oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)" (number mark "        jschoenh@ama Sep 15   15/537   " thread-indent "\"[oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on Intel systems (since Linux 4.4)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28219 invoked by uid 550); 15 Sep 2017 16:40:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26511 invoked from network); 15 Sep 2017 16:38:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
  t=1505493508; x=1537029508;
  h=from:subject:to:message-id:date:mime-version:
   content-transfer-encoding;
  bh=QGE3FS253502B/BzjhJGPV4PNegqRxXy6dEz+1agWmo=;
  b=Lu7y5Kv+lAmFzFVsCcG3VPdRoT9JycSzVFG7dCnU8vybTBdMLYwYhJii
   qcRXybNjHxOtfO4xurL9etOjAwzbQc/nlyk4+R2Klz/vOEytNymJlJtLh
   QjIPYao8tGZBQJGzqFmi27bbNhTTojFEuRWssxXW9U5gv4alZOYOkNbV2
   U=;
X-IronPort-AV: E=Sophos;i="5.42,397,1500940800"; 
   d="scan'208";a="305784500"
Message-ID: <63ba101d-71b7-fcb0-5f28-ed6f78ebfbbd@amazon.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Fri, 15 Sep 2017 18:36:59 +0200
From: "=?UTF-8?Q?Jan_H._Sch=c3=b6nherr?=" <jschoenh@amazon.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-1000252: KVM denial of service with posted interrupts on
 Intel systems (since Linux 4.4)
To: oss-security@lists.openwall.com

Hi.

We have discovered a user triggerable BUG() when using KVM with posted interrupts on Intel
systems. This requires an unprivileged user to have access to the KVM device.

Certain values in a KVM_IRQFD API call can trigger a BUG_ON() at a later point in
vmx_update_pi_irte(). KVM as a whole seems to hang after that.

The issue was introduced with Linux 4.4, patches have been posted to the KVM
mailing list:
- https://marc.info/?l=kvm&m=150549145711115&w=2
- https://marc.info/?l=kvm&m=150549146311117&w=2

Regards
Jan H. Schönherr
