X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1149" "Saturday" "16" "July" "2016" "12:05:39" "+0200" "David Faure" "faure@kde.org" "<86413253.kTlB1PI1Wh@asterixp50>" "29" "[oss-security] CVE Request for KNewStuff/KArchive issue" nil nil nil "7" "2016071610:05:39" "[oss-security] CVE Request for KNewStuff/KArchive issue" (number mark "U       faure@kde.or Jul 16   29/1149  " thread-indent "\"[oss-security] CVE Request for KNewStuff/KArchive issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27852 invoked by uid 550); 16 Jul 2016 10:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27834 invoked from network); 16 Jul 2016 10:05:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=kde.org; s=default;
	t=1468663540; bh=yQaYpQfMtjBfhjCiL9OIJY5uVFqW4/3jO4jg/Cd8P1k=;
	h=From:To:Cc:Subject:Date:From;
	b=glgU5PnoKpuJLSfeawKHm33QfQBv7jS069k3JquPN5LqudHKZtcmC1pswPqbMZDCH
	 tAIiVuaiZLXbPZHSMn0RY8nIley+EZXEtoJx+ynyi2BVQyOmQK+5WaRmWGoSAj9baN
	 Fzx6l6371E9PFhV2FuGuD9YkA76bkM1jwYAqLp74=
From: David Faure <faure@kde.org>
To: oss-security@lists.openwall.com
Cc: kde-security@kde.org
Date: Sat, 16 Jul 2016 12:05:39 +0200
Message-ID: <86413253.kTlB1PI1Wh@asterixp50>
Organization: KDE
User-Agent: KMail/5.2.90 (Linux/4.5.4-1-default; KDE/5.25.0; x86_64; git-18fdbfd; 2016-07-13)
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] CVE Request for KNewStuff/KArchive issue

Hello,

Could I get a CVE number for the issue below?

When using KNewStuff, one of the KDE Frameworks, to download and install files 
from the internet (e.g. a wallpaper, a plasma applet, etc.), it was possible 
to download a maliciously crafted archive file (e.g. tar.gz or zip) containing 
relative paths leading to outside the extraction directory (say 
"../../../.bashrc" for instance).

The fix has already been reviewed and submitted:
   https://git.reviewboard.kde.org/r/128185/
This fix is one layer below KNewStuff, in the framework called KArchive, which 
handles extraction of .tar.gz / .zip archives. KArchive now prevents files from 
being written outside of the extraction directory, in all cases.

Versions up to KArchive 5.23.0 are affected, the fix is in KArchive 5.24.0, 
which I released a week ago.

To my knowledge, no CVE has been requested for this yet, but to make sure, you 
could check if someone else from kde-security emailed you in the past month 
already (issue known since June 14, 2016, sorry for the delay on my part).

Thanks.

-- 
David Faure, faure@kde.org, http://www.davidfaure.fr
Working on KDE Frameworks 5

