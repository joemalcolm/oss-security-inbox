X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["911" "Thursday" "19" "October" "2017" "16:17:57" "-0400" "Rich Felker" "dalias@libc.org" "<20171019201757.GA31838@brightrain.aerifal.cx>" "21" "[oss-security] CVE request: musl libc 1.1.16 and earlier dns buffer overflow" nil nil nil "10" "2017101920:17:57" "[oss-security] CVE request: musl libc 1.1.16 and earlier dns buffer overflow" (number mark "U       dalias@libc. Oct 19   21/911   " thread-indent "\"[oss-security] CVE request: musl libc 1.1.16 and earlier dns buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3803 invoked by uid 550); 19 Oct 2017 20:19:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1820 invoked from network); 19 Oct 2017 20:18:09 -0000
Date: Thu, 19 Oct 2017 16:17:57 -0400
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Cc: Felix Wilhelm <fwilhelm@google.com>, musl@lists.openwall.com
Message-ID: <20171019201757.GA31838@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] CVE request: musl libc 1.1.16 and earlier dns buffer overflow

Felix Wilhelm has discovered a flaw in the dns response parsing for
musl libc 1.1.16 that leads to overflow of a stack-based buffer.
Earlier versions are also affected.

When an application makes a request via getaddrinfo for both IPv4 and
IPv6 results (AF_UNSPEC), an attacker who controls or can spoof the
nameservers configured in resolv.conf can reply to both the A and AAAA
queries with A results. Since A records are smaller than AAAA records,
it's possible to fit more addresses than the precomputed bound, and a
buffer overflow occurs.

Users are advised to upgrade to 1.1.17 or patch; the patch is simple
and should apply cleanly to all recent versions:

https://git.musl-libc.org/cgit/musl/patch/?id=45ca5d3fcb6f874bf5ba55d0e9651cef68515395

Users who cannot patch or upgrade immediately can mitigate the issue
by running a caching nameserver on localhost and pointing resolv.conf
to 127.0.0.1.

Rich
