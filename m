X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1776" "Monday" "11" "May" "2015" "15:59:55" "+0200" "Andrea Barisani" "lcars@ocert.org" "<20150511135955.GJ6507@core.inversepath.com>" "65" "[oss-security] [oCERT-2015-006] dcraw input sanitization errors" nil nil nil "5" "2015051113:59:55" "[oss-security] [oCERT-2015-006] dcraw input sanitization errors" (number mark "        lcars@ocert. May 11   65/1776  " thread-indent "\"[oss-security] [oCERT-2015-006] dcraw input sanitization errors\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11356 invoked by uid 550); 11 May 2015 14:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11303 invoked from network); 11 May 2015 14:00:06 -0000
Message-ID: <20150511135955.GJ6507@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x864C9B9E
X-GPG-Fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
User-Agent: Mutt/1.5.20 (2009-06-14)
Date: Mon, 11 May 2015 15:59:55 +0200
From: Andrea Barisani <lcars@ocert.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [oCERT-2015-006] dcraw input sanitization errors
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com


#2015-006 dcraw input sanitization errors

Description:

The dcraw photo decoder is an open source project for raw image parsing.

The dcraw tool, as well as several other projects re-using its code, suffers
from an integer overflow condition which lead to a buffer overflow. The
vulnerability concerns the 'len' variable, parsed without validation from
opened images, used in the ljpeg_start() function.

A maliciously crafted raw image file can be used to trigger the vulnerability,
causing a Denial of Service condition.

Affected version:

   dcraw >= 7.00
   UFRaw >= 0.5
   LibRaw <= 0.16.0, 0.17-Alpha2
   RawTherapee >= 3.0
   CxImage >= 6.00
   Rawstudio >= 0.1
   Kodi >= 10.0
   ExactImage >= 0.1.0

Fixed version:

   dcraw, N/A
   UFRaw, N/A
   LibRaw >= 0.16.1, 0.17-Alpha3
   RawTherapee, N/A
   CxImage, N/A
   Rawstudio, N/A
   Kodi, N/A
   ExactImage, N/A

Credit: vulnerability report from Eduardo Castellanos <guayin [at] gmail [dot]
com>.

CVE: N/A

Timeline:

2015-04-24: vulnerability report received
2015-04-27: contacted dcraw maintainer
2015-04-30: patch provided by maintainer
2015-05-04: reporter confirms patch
2015-05-11: contacted additional affected vendors
2015-05-11: advisory release

References:
https://github.com/LibRaw/LibRaw/commit/4606c28f494a750892c5c1ac7903e62dd1c6fdb5
https://github.com/rawstudio/rawstudio/commit/983bda1f0fa5fa86884381208274198a620f006e

Permalink:
http://www.ocert.org/advisories/ocert-2015-006.html

-- 
Andrea Barisani |                Founder & Project Coordinator
          oCERT | OSS Computer Security Incident Response Team

<lcars@ocert.org>                         http://www.ocert.org
 0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
        "Pluralitas non est ponenda sine necessitate"
