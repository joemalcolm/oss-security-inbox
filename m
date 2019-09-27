X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Friday" "27" "September" "2019" "11:50:05" "-0500" "Tyler Hicks" "tyhicks@canonical.com" nil "17" nil "^Date:" nil nil "9" nil nil (number mark "        tyhicks@cano Sep 27   17/696   " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9807 invoked by uid 550); 27 Sep 2019 16:50:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9789 invoked from network); 27 Sep 2019 16:50:19 -0000
Message-ID: <20190927165004.GD1884@elm>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 27 Sep 2019 11:50:05 -0500
From: Tyler Hicks <tyhicks@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On 2019-08-20 20:20:34, Andrey Konovalov wrote:
> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15290
> 
> An issue was discovered in the Linux kernel through 5.2.9. There is a
> NULL pointer dereference caused by a malicious USB device in the
> ath6kl_usb_alloc_urb_from_pipe function in the
> drivers/net/wireless/ath/ath6kl/usb.c driver.

This seems like it might be a duplicate of CVE-2019-15098. The fix for
CVE-2019-15098 was recently merged upstream:

 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d170b3cb62ba98567f5c4f40c27b5864b304e5

If you agree, could you request that MITRE mark CVE-2019-15290 as a
duplicate of CVE-2019-15098?

Tyler
