X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1435" "Thursday" "20" "August" "2015" "15:01:39" "+0200" "Andrea Barisani" "lcars@ocert.org" "<20150820130138.GA17576@core.inversepath.com>" "48" "[oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference" nil nil nil "8" "2015082013:01:39" "[oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference" (number mark "        lcars@ocert. Aug 20   48/1435  " thread-indent "\"[oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3393 invoked by uid 550); 20 Aug 2015 13:01:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3361 invoked from network); 20 Aug 2015 13:01:51 -0000
Message-ID: <20150820130138.GA17576@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x864C9B9E
X-GPG-Fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
User-Agent: Mutt/1.5.20 (2009-06-14)
Date: Thu, 20 Aug 2015 15:01:39 +0200
From: Andrea Barisani <lcars@ocert.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [oCERT-2015-009] VLC arbitrary pointer dereference
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com


#2015-009 VLC arbitrary pointer dereference

Description:

The VLC media player is an open source media player and streaming media
server.

The stable VLC version suffers from an arbitrary pointer dereference
vulnerability.

The vulnerability affects the 3GP file format parser, insufficient
restrictions on a writable buffer can be exploited to execute arbitrary code
via the heap memory. A specific 3GP file can be crafted to trigger the
vulnerability.

Affected version:
  VLC <= 2.2.1

Fixed version:
  VLC, N/A (see References for patch committed to 2.2.2 branch)

Credit: vulnerability reported by Loren Maggiore of Trail of Bits.

CVE: CVE-2015-5949

Timeline:

2015-07-28: vulnerability report received
2015-07-29: contacted VLC security maintainer
2015-08-03: maintainer commits fix to stable branch
2015-08-06: assigned CVE
2015-08-17: contacted affected vendors
2015-08-20: advisory release

References:
https://git.videolan.org/?p=vlc/vlc-2.2.git;a=commitdiff;h=ce91452460a75d7424b165c4dc8db98114c3cbd9;hp=9e12195d3e4316278af1fa4bcb6a705ff27456fd

Permalink:
http://www.ocert.org/advisories/ocert-2015-009.html

-- 
Andrea Barisani |                Founder & Project Coordinator
          oCERT | OSS Computer Security Incident Response Team

<lcars@ocert.org>                         http://www.ocert.org
 0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
        "Pluralitas non est ponenda sine necessitate"
