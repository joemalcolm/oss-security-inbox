X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["762" "Monday" "23" "March" "2015" "19:13:27" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20150323181327.GA3943@pisco.westfalen.local>" "27" "[oss-security] CVE request: Two vulnerabilities in Tor" nil nil nil "3" "2015032318:13:27" "[oss-security] CVE request: Two vulnerabilities in Tor" (number mark "        jmm@debian.o Mar 23   27/762   " thread-indent "\"[oss-security] CVE request: Two vulnerabilities in Tor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7392 invoked by uid 550); 23 Mar 2015 18:13:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7374 invoked from network); 23 Mar 2015 18:13:40 -0000
Message-ID: <20150323181327.GA3943@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 95.33.112.236
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com, weasel@debian.org
Date: Mon, 23 Mar 2015 19:13:27 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Two vulnerabilities in Tor
To: cve-assign@mitre.org

Hi,
please assign two CVE IDs for tor:

The upstream announcement is here:
https://lists.torproject.org/pipermail/tor-talk/2015-March/037281.html

1.
| Fix a remote denial-of-service opportunity caused by a bug in
| OSX's _strlcat_chk() function. Fixes bug 15205; bug first
| appeared in OSX 10.9.

https://trac.torproject.org/projects/tor/ticket/15205

2.
| A relay could crash with an assertion error if a buffer of
| exactly the wrong layout was passed to buf_pullup() at exactly the
| wrong  time.

https://trac.torproject.org/projects/tor/ticket/15083

The second issue has been addressed in DSA 3203:
https://lists.debian.org/debian-security-announce/2015/msg00088.html
(the first obviously not, since it's MacOS-specific)

Cheers,
        Moritz
        
