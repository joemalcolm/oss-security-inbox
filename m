X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["761" "Wednesday" "7" "March" "2018" "17:48:56" "-0800" "dormando" "dormando@rydia.net" "<alpine.DEB.2.20.1803071743230.20789@di7>" "18" "[oss-security] Memcached remote DoS in older versions" nil nil nil "3" "2018030801:48:56" "[oss-security] Memcached remote DoS in older versions" (number mark "U       dormando@ryd Mar  7   18/761   " thread-indent "\"[oss-security] Memcached remote DoS in older versions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24464 invoked by uid 550); 8 Mar 2018 01:49:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24417 invoked from network); 8 Mar 2018 01:49:09 -0000
Date: Wed, 7 Mar 2018 17:48:56 -0800 (PST)
From: dormando <dormando@rydia.net>
X-X-Sender: dormando@di7
To: oss-security@lists.openwall.com
Message-ID: <alpine.DEB.2.20.1803071743230.20789@di7>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Memcached remote DoS in older versions

Hello,

There are a number of hang/crash bugs fixed in older versions of
memcached. All are noted in the release notes of the versions containing
the respective fixes, and most are years old.

I'm writing this in case pointing this out can help drive users to close
their instances from the internet; aside from participating in DDoS
attacks and remote users being able to read any data stored in the
instances, they can also be crashed or deadlocked.

I have a working POC deadlock for versions 1.4.20ish to 1.4.37. Older ones
should still be vulernable as well. I can supply the POC if there's
interest, or adjust it for even older versions. The POC only takes a few
seconds and kilobytes over a TCP connection and causes a mutex deadlock.

Thanks,
-Dormando
