X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1104" "Tuesday" "5" "May" "2015" "14:52:33" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5548BD11.4010405@redhat.com>" "30" "[oss-security] Silent security fixes in virtuoso-opensource" nil nil nil "5" "2015050512:52:33" "[oss-security] Silent security fixes in virtuoso-opensource" (number mark "        fweimer@redh May  5   30/1104  " thread-indent "\"[oss-security] Silent security fixes in virtuoso-opensource\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32708 invoked by uid 550); 5 May 2015 12:52:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32685 invoked from network); 5 May 2015 12:52:48 -0000
Message-ID: <5548BD11.4010405@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 05 May 2015 14:52:33 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Silent security fixes in virtuoso-opensource
To: oss-security@lists.openwall.com

virtuoso-opensource is a database used by the KDE desktop search:

  <http://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main>

A long time ago, we looked at the low-level data marshaling code in the
database server, and found quite a few memory safety issues.  We also
encountered server crashes and problems which looked like race
conditions, affecting server stability.

KDE uses a private UNIX domain socket to communicate with a
user-specific database server, but the database server can be accessed
over TCP as well.

Upstream did not release a security advisory, but alluded to the fixes
in release announcement:

<http://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VOSNews#Client%20RPC>

And in commit messages:

<https://github.com/openlink/virtuoso-opensource/commits/develop/6/libsrc/Dk>

We have not assigned CVE identifiers because the number of different
crashes we saw was fairly large, and we could not completely understand
how the RPC implementation is pieced together.

I'm sorry that this message is not particularly helpful.

-- 
Florian Weimer / Red Hat Product Security
