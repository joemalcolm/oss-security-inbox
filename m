X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["991" "Thursday" "12" "January" "2017" "00:51:53" "+0000" "Simon McVittie" "smcv@debian.org" "<20170112005153.hxfvrwwyywq2szvq@perpetual.pseudorandom.co.uk>" "26" "[oss-security] ikiwiki: CVE-2017-0356: Authentication bypass via repeated parameters" nil nil nil "1" "2017011200:51:53" "[oss-security] ikiwiki: CVE-2017-0356: Authentication bypass via repeated parameters" (number mark "U       smcv@debian. Jan 12   26/991   " thread-indent "\"[oss-security] ikiwiki: CVE-2017-0356: Authentication bypass via repeated parameters\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11614 invoked by uid 550); 12 Jan 2017 00:52:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11596 invoked from network); 12 Jan 2017 00:52:09 -0000
Date: Thu, 12 Jan 2017 00:51:53 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170112005153.hxfvrwwyywq2szvq@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] ikiwiki: CVE-2017-0356: Authentication bypass via repeated parameters

Reference: https://ikiwiki.info/security/#cve-2017-0356
Affected versions: >= 2.11
Fixed versions: >= 3.20170111
Fixed versions (3.20141016.x branch): >= 3.20141016.4

ikiwiki is a static site generator with some dynamic features,
used for wikis, blogs and other websites.

The ikiwiki maintainers discovered two related flaws in the
passwordauth plugin's use of CGI::FormBuilder, involving API design
issues similar to those that led to CVE-2014-1572. Impact:

* An attacker who can log in to a site with a password can log in
  as a different and potentially more privileged user.
* An attacker who can create a new account can set arbitrary fields
  in the user database for that account.

Sites that enable the CGI script (cgi_wrapper) and do not disable the
simple password authentication plugin (passwordauth, enabled by default)
are affected.

For current releases, this is fixed in ikiwiki >= 3.20170111.
For the Debian 8 branch, it is fixed in ikiwiki 3.20141016.4.

Regards,
    S
