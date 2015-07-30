X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["586" "Thursday" "30" "July" "2015" "00:30:44" "+0000" "Sam Pizzey" "sam@pizzey.me" "<20150730003044.GB5181@pizzey.me>" "18" "[oss-security] [CVE Request] WP Slimstat < 4.1.6 - Referer Header XSS" nil nil nil "7" "2015073000:30:44" "[oss-security] [CVE Request] WP Slimstat < 4.1.6 - Referer Header XSS" (number mark "        sam@pizzey.m Jul 30   18/586   " thread-indent "\"[oss-security] [CVE Request] WP Slimstat < 4.1.6 - Referer Header XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30543 invoked by uid 550); 30 Jul 2015 01:09:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14305 invoked from network); 30 Jul 2015 00:30:56 -0000
Message-ID: <20150730003044.GB5181@pizzey.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 30 Jul 2015 00:30:44 +0000
From: Sam Pizzey <sam@pizzey.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE Request] WP Slimstat < 4.1.6 - Referer Header XSS
To: oss-security@lists.openwall.com

Hi,

Wordpress plugin 'Slimstat' versions < 4.1.6 fail to neutralize untrusted
input from both the Referer header and the endpoint used by their Javascript
tracking code to report the referrer, if enabled. Since this output is
displayed by default on the front page of the Wordpress admin panel,
the XSS here leads to very easy administrator account compromise.

Reported privately via vendor and fixed in current release.

==
Vendor: http://www.wp-slimstat.com
Reported: 22/7/2015
Patched:  22/7/2015 as per https://plugins.trac.wordpress.org/changeset/1204104
==

Regards,
Sam Pizzey
