X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["958" "Monday" "31" "October" "2016" "15:35:41" "-0700" "dormando" "dormando@rydia.net" "<alpine.DEB.2.20.1610311531190.20334@di7>" "27" "[oss-security] Memcached 1.4.32 and earlier buffer overflow." nil nil nil "10" "2016103122:35:41" "[oss-security] Memcached 1.4.32 and earlier buffer overflow." (number mark "U       dormando@ryd Oct 31   27/958   " thread-indent "\"[oss-security] Memcached 1.4.32 and earlier buffer overflow.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1833 invoked by uid 550); 1 Nov 2016 03:38:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28522 invoked from network); 31 Oct 2016 22:35:53 -0000
Date: Mon, 31 Oct 2016 15:35:41 -0700 (PDT)
From: dormando <dormando@rydia.net>
X-X-Sender: dormando@di7
To: oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1610311531190.20334@di7>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Memcached 1.4.32 and earlier buffer overflow.

Release notes with tarball here:
https://github.com/memcached/memcached/wiki/ReleaseNotes1433

Copy/paste from the relase notes:
Serious remote code execution bugs are fixed in this release.

The bugs are related to the binary protocol as well as SASL authentication
of the binary protocol.

If you do not use the binary protocol at all, a workaround is to start
memcached with -B ascii - otherwise you will need the patch in this
release.

The diff may apply cleanly to older versions as the affected code has not
changed in a long time.

Full details of the issues may be found here:
http://blog.talosintel.com/2016/10/memcached-vulnerabilities.html

In summary: two binary protocol parsing errors, and a SASL authentication
parsing error allows buffer overflows of keys into arbitrary memory
space. With enough work undesireable effects are possible.

CVE's were requested and assigned by the reporter. I unfortunately don't
have them handy :(

-Dormando
