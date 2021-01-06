X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1463" "Wednesday" "6" "January" "2021" "11:59:28" "-0800" "Anthony Liguori" "aliguori@amazon.com" "<cig3328s95zvj3.fsf@u54e1add816995a33037d.ant.amazon.com>" "47" "[oss-security] A security vulnerability in linux kernel 5.8.10" nil nil nil "1" "2021010619:59:28" "[oss-security] A security vulnerability in linux kernel 5.8.10" (number mark "U       aliguori@ama Jan  6   47/1463  " thread-indent "\"[oss-security] A security vulnerability in linux kernel 5.8.10\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] A security vulnerability in linux kernel 5.8.10" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26259 invoked by uid 550); 6 Jan 2021 21:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30522 invoked from network); 6 Jan 2021 19:59:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1609963190; x=1641499190;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=FhhfY8kDw8y5yT+03Whw1eLYEohMeMnuSLCma1cdCQ0=;
  b=oicib/e40hUwaSw2r14Z48MTbuNVBPx7NLZYt8UtcrwDtnyUpblo3TlN
   y8D4lG1eAQPSdL5OSazEqGlqOXlVDALV5ZG5bo9JjsuveOZkvyDekW9VS
   CsbMA5lhSBoNxgrDQA4pqgmXzje+k0WgUs1Q/JxlYJjdrqBpRA9ZLTOW3
   k=;
X-Amazon-filename: image001.png
X-IronPort-AV: E=Sophos;i="5.79,328,1602547200"; 
   d="png'150?scan'150,208,150";a="110064642"
From: Anthony Liguori <aliguori@amazon.com>
To: <oss-security@lists.openwall.com>
CC: <security@kernel.org>, <luolikang@nsfocus.com>
User-Agent: Notmuch/0.21 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Date: Wed, 6 Jan 2021 11:59:28 -0800
Message-ID: <cig3328s95zvj3.fsf@u54e1add816995a33037d.ant.amazon.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Subject: [oss-security] A security vulnerability in linux kernel 5.8.10

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

The following message was sent to the distros@ list.  Unfortunate the
sender was not responsive and it's unclear if it's actually an issue.
The report overall did not follow the policies of the list with the
information provided.

Per the distros list policy, we've past the 14 day mark and even with a
little extra time due to the holiday, this needs to be made public.

Posting follows below.

Regards,

Anthony Liguori

Subject: A security vulnerability in linux kernel 5.8.10
To: security@kernel.org
Cc: linux-distros@vs.openwall.org
Date: Fri, 18 Dec 2020 16:53:59 +0800

¢þË: æ¢µ <luolikang@nsfocus.com> 
¢ÍÊ±ä: 2020ê12Â18Õ 13:23
Õ¼È: 'security@kernel.org' <security@kernel.org>
÷â: change the poc

Sorry , please use this poc

¢þË: æ¢µ <luolikang@nsfocus.com <mailto:luolikang@nsfocus.com> > 
¢ÍÊ±ä: 2020ê12Â18Õ 11:46
Õ¼È: 'security@kernel.org' <security@kernel.org
<mailto:security@kernel.org> >
÷â: A security vulnerability in linux kernel 5.8.10

Hello,
I have found a security vulnerability in linux kernel 5.8.10. When I use the
DCCP protocol to establish a connection, the kernel will crash.

My analysis are followed: When call the  ___slab_alloc function, it will
enter the new_slab branch, and the new_slab_objects will return a normal
freelist, but in  alloc_debug_processing, it will change the second object
ptr in freelist to an invalid address,and then cause dos.


--=-=-=--
