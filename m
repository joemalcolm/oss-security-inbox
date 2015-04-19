X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["515" "Sunday" "19" "April" "2015" "09:45:56" "+0300" "Henri Salo" "henri@nerv.fi" "<20150419064556.GA4657@kludge.henri.nerv.fi>" "23" "[oss-security] Wolf CMS 0.8.2 Arbitrary File Upload Vulnerability" nil nil nil "4" "2015041906:45:56" "[oss-security] Wolf CMS 0.8.2 Arbitrary File Upload Vulnerability" (number mark "        henri@nerv.f Apr 19   23/515   " thread-indent "\"[oss-security] Wolf CMS 0.8.2 Arbitrary File Upload Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5899 invoked by uid 550); 19 Apr 2015 06:46:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5839 invoked from network); 19 Apr 2015 06:46:55 -0000
Message-ID: <20150419064556.GA4657@kludge.henri.nerv.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sun, 19 Apr 2015 09:45:56 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Wolf CMS 0.8.2 Arbitrary File Upload Vulnerability
To: oss-security@lists.openwall.com

http://seclists.org/bugtraq/2015/Apr/112

Vendor response:

"""
This is I believe works as designed. There is currently no limit on what a
user can upload.

As this is only possible for authenticated users, we are currently not
considering this a security issue.

If you feel differently, please elaborate why you consider this a security
issue. I guess we could add a strict upload mode.

Cheers, Martijn
"""

Prathan Phongthiproek has requested CVE identifier for this issue.

Comments? Opinions?

-- 
Henri Salo
