X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["810" "Wednesday" "16" "March" "2016" "21:50:50" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20160316205050.GB2990@pisco.westfalen.local>" "25" "[oss-security] Three CVE requests for PHP" "^Cc:" nil nil "3" "2016031620:50:50" "[oss-security] Three CVE requests for PHP" (number mark "        jmm@debian.o Mar 16   25/810   " thread-indent "\"[oss-security] Three CVE requests for PHP\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17948 invoked by uid 550); 16 Mar 2016 20:51:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17930 invoked from network); 16 Mar 2016 20:51:04 -0000
Message-ID: <20160316205050.GB2990@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: 95.33.109.226
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: cve-assign@mitre.org
Date: Wed, 16 Mar 2016 21:50:50 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Three CVE requests for PHP
To: oss-security@lists.openwall.com

Hi,
please assign CVE IDs (these need to be CVE-2015-XXXX) for these
vulnerabilities fixed in the PHP implementations by php.net and HHVM.
These are all fixed in PHP 5.6.13, PHP 5.5.29, PHP 5.4.45 and HHVM 3.12.1.

1. Buffer over-read in exif_read_data with TIFF IFD tag byte value of 32 bytes
https://bugs.php.net/bug.php?id=70385
https://github.com/facebook/hhvm/commit/06f3fc8091d8da793552db0e4d9a0d4add9c0bcc

2 ZipArchive::extractTo allows for directory traversal when creating directories
https://bugs.php.net/bug.php?id=70350
https://github.com/facebook/hhvm/commit/65c95a01541dd2fbc9c978ac53bed235b5376686

3. HAVAL gives wrong hashes in specific cases
https://bugs.php.net/bug.php?id=70312
https://github.com/facebook/hhvm/commit/918b174fa1e9924a9ecaecb08efcfdcab3db6151

Cheers,
        Moritz






