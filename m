X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["494" "Saturday" "28" "March" "2015" "08:51:39" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20150328075139.GA16356@eldamar.local>" "14" "[oss-security] CVE Request: arj: free on invalid pointer due to to buffer overflow" nil nil nil "3" "2015032807:51:39" "[oss-security] CVE Request: arj: free on invalid pointer due to to buffer overflow" (number mark "        carnil@debia Mar 28   14/494   " thread-indent "\"[oss-security] CVE Request: arj: free on invalid pointer due to to buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32389 invoked by uid 550); 28 Mar 2015 07:51:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32371 invoked from network); 28 Mar 2015 07:51:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mxA9uAFisWevdPTx/rK3upVNW1UgcB6Hgsk+KbKfOXY=;
        b=TAB+nKhzotGS7sg1g+nSJJxCs+yL61xjNpW5eFwSRcoTdHOOQhfe2HTmxZYQCeVMgE
         Q9YuhHOLRtz4l2je5YVuRd5ywbdKO47TNrUkVSfEBch0ZvM2a0m0lYPo4BhuUmSoKRAu
         KWHjub16KBwRsGWn0SLdfhyH+LqWR86zptH8WQ31T2gZ00qc5k+YuetLREJ6wTUamiCN
         V3/EY29nSwZCfGKBRCLJRRrtgtbuyrNMbp5rsUjFgxrtPyKD+TzfRz1IHDlMpZsi3s1C
         h8MacNO2eX4mT8PQ6VSLDK4DdT99scB5t45P8Fa0731KxVcVnQ8XB/+T2HrccmK6Jnjh
         zfKw==
X-Received: by 10.180.86.162 with SMTP id q2mr4328359wiz.26.1427529101273;
        Sat, 28 Mar 2015 00:51:41 -0700 (PDT)
Message-ID: <20150328075139.GA16356@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sat, 28 Mar 2015 08:51:39 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: arj: free on invalid pointer due to to buffer overflow
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Jakub Wilk reported arj crashing on a ARJ file in [1]. Guillem Jover
pointed out that the nvalid pointer is due to a buffer overflow write
access initiated by a value which is under user control, see [2]. He
prepared as well a patch for this issue[3]. Could assing a CVE for
this issue?

 [1] https://bugs.debian.org/774015
 [2] https://bugs.debian.org/774015#11
 [3] http://git.hadrons.org/gitweb/?p=debian/pkgs/arj.git;a=blob_plain;f=debian/patches/security-afl.patch

Regards,
Salvatore
