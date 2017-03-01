X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1575" "Wednesday" "1" "March" "2017" "11:01:30" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20170301003129.GB4851@sin.redhat.com>" "48" "[oss-security] three issues in xorg (CVE-2016-2624, CVE-2016-2625, CVE-2016-2626)" nil nil nil "3" "2017030100:31:30" "[oss-security] three issues in xorg (CVE-2016-2624, CVE-2016-2625, CVE-2016-2626)" (number mark "U       dmoppert@red Mar  1   48/1575  " thread-indent "\"[oss-security] three issues in xorg (CVE-2016-2624, CVE-2016-2625, CVE-2016-2626)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30373 invoked by uid 550); 1 Mar 2017 00:31:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30355 invoked from network); 1 Mar 2017 00:31:46 -0000
Date: Wed, 1 Mar 2017 11:01:30 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20170301003129.GB4851@sin.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Wed, 01 Mar 2017 00:31:36 +0000 (UTC)
Subject: [oss-security] three issues in xorg (CVE-2016-2624, CVE-2016-2625, CVE-2016-2626)

Vulnerabilities in xorg (server, libXdmcp, libICE) were recently
reported by Eric Sesterhenn of X41, and assigned CVEs by Red Hat.


> CVE-2017-2624 xorg-x11-server: timing attack against MIT Cookie

mitauth.c uses memcmp() to check the validity of MIT cookies, exposing a
possible timing attack on some platforms.

https://bugzilla.redhat.com/show_bug.cgi?id=1424984
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=856398
https://bugzilla.novell.com/show_bug.cgi?id=1025029


> CVE-2017-2625 libXdmcp: weak entropy usage for session keys

In the absence of arc4random(), xdmcp session keys are generated based
on getpid() and time(), which may allow a local attacker to brute-force
the key.

https://bugzilla.redhat.com/show_bug.cgi?id=1424987
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=856399
https://bugzilla.novell.com/show_bug.cgi?id=1025046


> CVE-2017-2626 libICE: weak entropy usage in session keys

In the absence of arc4random(), the Inter-Client Exchange session keys
are generated based on gettimeofday(), which may allow a local attacker
to brute-force the key.

https://bugzilla.redhat.com/show_bug.cgi?id=1424992
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=856400
https://bugzilla.novell.com/show_bug.cgi?id=1025068


The first issue is mitigated with recent glibc's memcmp, particularly
with -D_FORTIFY_SOURCE=2, and the other two by providing an
implementation of arc4random at compile time, such as libbsd.

I expect these to be announced shortly at
<https://www.x.org/wiki/Development/Security/>.



-- 
Doran Moppert
Red Hat Product Security
