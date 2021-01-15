X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["777" "Friday" "15" "January" "2021" "14:13:35" "-0800" "Anthony Liguori" "aliguori@amazon.com" "<cig332o8hpx300.fsf@u54e1add816995a33037d.ant.amazon.com>" "21" "[oss-security] Adding an additional Amazon Linux member to distros@" nil nil nil "1" "2021011522:13:35" "[oss-security] Adding an additional Amazon Linux member to distros@" (number mark "U       aliguori@ama Jan 15   21/777   " thread-indent "\"[oss-security] Adding an additional Amazon Linux member to distros@\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Adding an additional Amazon Linux member to distros@" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8186 invoked by uid 550); 15 Jan 2021 23:59:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15478 invoked from network); 15 Jan 2021 22:13:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1610748832; x=1642284832;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=3wZ2jXK8SwNXRmdbe7dfEL6ChNhbgCUjorzqtIpgdrI=;
  b=PlnplE5lI9bHywi8PFSL0SN7QJUMwu1D6uC1vD17EiBw8+kgnNtf9BVM
   /Sk8jbBATGQMWiOACJHB0zyezwg0b0YHIg8sfQpygrJA1BC5p2ziy1293
   hdvCGPa/Z2Jglz33XLZQcfjV49UTLYk2THdrwFuh5fWcLcbunBeqBE3SN
   s=;
X-IronPort-AV: E=Sophos;i="5.79,350,1602547200"; 
   d="scan'208";a="104252005"
From: Anthony Liguori <aliguori@amazon.com>
To: Solar Designer <solar@openwall.com>, <oss-security@lists.openwall.com>
CC: Abby Fuller <abbyfull@amazon.com>
User-Agent: Notmuch/0.21 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Date: Fri, 15 Jan 2021 14:13:35 -0800
Message-ID: <cig332o8hpx300.fsf@u54e1add816995a33037d.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Adding an additional Amazon Linux member to distros@

Hi,

I'm splitting off from the previous thread.  I would like to propose
adding Abby Fuller from the Amazon Linux security as the second member
of distros@ from Amazon.  Abby would back me up for the Amazon assigned
tasks which is important as I'll be going on parental leave in March for
6-12 weeks and will be slow to respond.  We will also take primary on
item 13:

"Keep track of per-report and per-issue handling and disclosure
timelines (at least times of notification of the private list and of
actual public disclosure), at regular intervals produce and share
statistics (most notably, the average embargo duration) as well as the
raw data (except on issues that are still under embargo) by posting to
oss-security"

https://keybase.io/abby

Regards,

Anthony Liguori
