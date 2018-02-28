X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2745" "Wednesday" "28" "February" "2018" "21:24:10" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20180228202410.GA822@inutil.org>" "68" "[oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?" "^Date:" nil nil "2" "2018022820:24:10" "[oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?" (number mark "        jmm@debian.o Feb 28   68/2745  " thread-indent "\"[oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs assigned by Apple?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20005 invoked by uid 550); 28 Feb 2018 22:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19967 invoked from network); 28 Feb 2018 22:00:36 -0000
Message-ID: <20180228202410.GA822@inutil.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Date: Wed, 28 Feb 2018 21:24:10 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Information on file, sqlite, libarchive, pcre issues for CVE IDs
 assigned by Apple?
To: oss-security@lists.openwall.com

Hi,
Apple has assigned a few CVE IDs for open source components not engineered at Apple:

https://support.apple.com/en-us/HT208144 refers to

file
  Available for: OS X Mountain Lion 10.8 and later
  Impact: Multiple issues in file
  Description: Multiple issues were addressed by updating to version 5.30.
  CVE-2017-7121: found by OSS-Fuzz
  CVE-2017-7122: found by OSS-Fuzz
  CVE-2017-7123: found by OSS-Fuzz
  CVE-2017-7124: found by OSS-Fuzz
  CVE-2017-7125: found by OSS-Fuzz
  CVE-2017-7126: found by OSS-Fuzz

SQLite
  Available for: iPhone 5s and later, iPad Air and later, and iPod touch 6th generation
  Impact: Multiple issues in SQLite
  Description: Multiple issues were addressed by updating to version 3.19.3.
  CVE-2017-10989: found by OSS-Fuzz
  CVE-2017-7128: found by OSS-Fuzz
  CVE-2017-7129: found by OSS-Fuzz
  CVE-2017-7130: found by OSS-Fuzz

SQLite
  Available for: iPhone 5s and later, iPad Air and later, and iPod touch 6th generation
  Impact: An application may be able to execute arbitrary code with system privileges
  Description: A memory corruption issue was addressed with improved memory handling.
  CVE-2017-7127: an anonymous researcher

https://support.apple.com/en-us/HT208221 refers to:

libarchive
  Available for: macOS Sierra 10.12.6, OS X El Capitan 10.11.6
  Impact: Unpacking a maliciously crafted archive may lead to arbitrary code execution
  Description: Multiple memory corruption issues existed in libarchive. These issues were addressed through improved input validation.
  CVE-2017-13812: found by OSS-Fuzz

libarchive
  Available for: macOS Sierra 10.12.6, OS X El Capitan 10.11.6
  Impact: Unpacking a maliciously crafted archive may lead to arbitrary code execution
  Description: A buffer overflow issue was addressed through improved memory handling.
  CVE-2017-13813: found by OSS-Fuzz
  CVE-2017-13816: found by OSS-Fuzz

file
  Available for: macOS Sierra 10.12.6, OS X El Capitan 10.11.6
  Impact: Multiple issues in file
  Description: Multiple issues were addressed by updating to version 5.31.
  CVE-2017-13815

PCRE
  Available for: macOS Sierra 10.12.6, OS X El Capitan 10.11.6
  Impact: Multiple issues in pcre
  Description: Multiple issues were addressed by updating to version 8.40.
  CVE-2017-13846

Of the IDs mentioned above, only CVE-2017-10989 refers to specific, identifiable information.
Does anyone on the list have additional information on any of these bugs; allowing to map them
to upstream bug reports/patches?

Why does the Apple CNA have a mandate to assign CVE IDs to generic FLOSS components not
written by Apple to begin with? Especially if they're not participating in standard open source
security information sharing practices.

Cheers,
        Moritz
