X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["809" "Tuesday" "20" "December" "2016" "21:49:10" "+0000" "Simon McVittie" "smcv@debian.org" "<20161220214910.zdn7bixh2i5jjwjb@perpetual.pseudorandom.co.uk>" "19" "[oss-security] CVE request: ikiwiki: authorization bypass when reverting changes" nil nil nil "12" "2016122021:49:10" "[oss-security] CVE request: ikiwiki: authorization bypass when reverting changes" (number mark "U       smcv@debian. Dec 20   19/809   " thread-indent "\"[oss-security] CVE request: ikiwiki: authorization bypass when reverting changes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12147 invoked by uid 550); 20 Dec 2016 21:49:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12124 invoked from network); 20 Dec 2016 21:49:22 -0000
Date: Tue, 20 Dec 2016 21:49:10 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161220214910.zdn7bixh2i5jjwjb@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE request: ikiwiki: authorization bypass when reverting changes

Reference: http://ikiwiki.info/bugs/rcs_revert_can_bypass_authorization_if_affected_files_were_renamed/
Vulnerable versions: < 3.20161219
Fixed versions: >= 3.20161219
Fix: http://source.ikiwiki.branchable.com/?p=source.git;a=commitdiff;h=9cada49ed6ad24556dbe9861ad5b0a9f526167f9

ikiwiki is a static site generator with some dynamic features,
used for wikis, blogs and other websites.

intrigeri discovered that on sites with the git and recentchanges
plugins and the CGI interface enabled, the revert links on the
RecentChanges page could revert changes on a page the logged-in user
cannot legitimately edit, if the change being reverted was made before
the page was renamed from a location that the logged-in user *could*
legitimately edit.

Please allocate a CVE ID for this vulnerability.

Thanks,
    S
