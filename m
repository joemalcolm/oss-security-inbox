X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["801" "Thursday" "10" "March" "2016" "10:42:28" "+0100" "Marcus Meissner" "meissner@suse.de" "<20160310094228.GD4470@suse.de>" "21" "[oss-security] CVE Request: PHP last release security issues" "^Date:" nil nil "3" "2016031009:42:28" "[oss-security] CVE Request: PHP last release security issues" (number mark "        meissner@sus Mar 10   21/801   " thread-indent "\"[oss-security] CVE Request: PHP last release security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9780 invoked by uid 550); 10 Mar 2016 09:42:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9759 invoked from network); 10 Mar 2016 09:42:40 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160310094228.GD4470@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 10 Mar 2016 10:42:28 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP last release security issues
To: OSS Security List <oss-security@lists.openwall.com>, security@php.net,
	cve-assign@mitre.org

Hi,

PHP released a round of security updates, but no CVEs have apparently been assigned.

from http://php.net/ChangeLog-7.php#7.0.4

	https://bugs.php.net/bug.php?id=71610	Type Confusion Vulnerability - SOAP / make_http_soap_request()

from http://php.net/ChangeLog-5.php#5.6.19
and http://php.net/ChangeLog-5.php#5.5.33

	https://bugs.php.net/bug.php?id=71498	Out-of-Bound Read in phar_parse_zipfile()
	https://bugs.php.net/bug.php?id=71587	Use-After-Free / Double-Free in WDDX Deserialize

There are more bugs in the release announcements with trigger words like
integer overflow or use-after-free, but several if not all of those need
specific PHP code, so basically self-exploitation.

Perhaps the PHP security team can fill in if I missed some or one of the above is not an issue.

Ciao, Marcus
