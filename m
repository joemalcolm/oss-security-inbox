X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1436" "Tuesday" "17" "May" "2016" "11:01:17" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRSR+vkuO9fn_d1-Ui9=eWsfd73QCLNi6zc7egL+zM7Fg@mail.gmail.com>" "39" "[oss-security] CVE-2016-3707 : kernel-rt - Sending SysRq command via ICMP echo request" nil nil nil "5" "2016051701:01:17" "[oss-security] CVE-2016-3707 : kernel-rt - Sending SysRq command via ICMP echo request" (number mark "U       wmealing@red May 17   39/1436  " thread-indent "\"[oss-security] CVE-2016-3707 : kernel-rt - Sending SysRq command via ICMP echo request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23661 invoked by uid 550); 17 May 2016 01:01:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23640 invoked from network); 17 May 2016 01:01:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=ROdA3haDxcMJXG7NQCDthHnMxvK2va2JyNxWwIMgpGY=;
        b=UOL+5LaOqncRIq7BtJO9FsU2pd9gkh9Z2d1tuKmloB/rCk3QTsjyDUPDIYTVTrZslw
         dJyoLqqWaqWcWAP0eSQw8EGdgMIOqxLgmk9Ld1jXYSlmbH6sDw8SxCDFsnMOEFGyjfLd
         7kJU+RevRNCRHxwELphA9NRSzjkLCF5S+e4zBh2pTwxZpX8AGVettaw9S4/brTF7TCb9
         tl5v6kr11P0hYQonwkR3K2jNRZXrc3DZFqqs1WNqOM+ZrH/YGBSDjKZmKkgGqwgX5/sY
         Sl538KXICKOhewFNdhxbAPLBkjRgaE22Lo5HVDda0GwWSbhDDnku6HucPrXAL7gRBTNl
         6gig==
X-Gm-Message-State: AOPr4FXvkNtNveEQF3khmr7bdmfULspCgHITU6PbGnRrZIb0RNcy9kgZiGtmVRQthHAPz4ebPLKI7T5ZtjryllZi
MIME-Version: 1.0
X-Received: by 10.107.32.79 with SMTP id g76mr20520846iog.117.1463446877559;
 Mon, 16 May 2016 18:01:17 -0700 (PDT)
Date: Tue, 17 May 2016 11:01:17 +1000
Message-ID: <CALJHwhRSR+vkuO9fn_d1-Ui9=eWsfd73QCLNi6zc7egL+zM7Fg@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-3707 : kernel-rt - Sending SysRq command via ICMP echo request

Gday,

A flaw was found in the kernel-rt in which an attacker could submit a
specially crafted ICMP echo request which can trigger a sysrq function
based on values in the ICMP packet.

This feature was introduced in the kernel-rt only and is not shipping
with standard Red Hat Enterprise Linux kernels.  Other kernels also
ship this patch.

When enabled, remote attacker who are able to send ICMP packets to the
host could exploit this feature using bruteforce to submit arbitrary
SysRq commands.

A local user can find the cookie immediately by inspecting the cookie file:

$ ls -l /proc/sys/net/ipv4/icmp_echo_sysrq
-rw-r--r--. 1 root root 0 Apr 28 15:39 /proc/sys/net/ipv4/icmp_echo_sysrq

This pattern in hex can be used to attack the host with the
icmp_echo_sysrq cookie set (and sysrq enabled) as per this example:

# ping -c1 -s57 -p0102030468 <target>

Remote attacker could exploit this feature using bruteforce to submit
arbitrary SysRq commands if this feature was enabled.

There is no fix for this at the time, this feature can be disabled /
reverted in the code and usual methods of sysrq magic keys can be used
as a workaround till a sufficient alternative has been developed.

Resources:
https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/patch-4.4.7-rt16.patch.gz

Upstream discussion on original topic:
https://lwn.net/Articles/448790/

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-3707
