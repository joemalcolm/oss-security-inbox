X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2012" "Tuesday" "23" "February" "2016" "22:51:20" "+0100" "Daniel Stenberg" "daniel@haxx.se" "<alpine.DEB.2.20.1602232249280.6588@tvnag.unkk.fr>" "79" "[oss-security] libssh2 Truncated Difffie-Hellman secret length" "^Date:" nil nil "2" "2016022321:51:20" "[oss-security] libssh2 Truncated Difffie-Hellman secret length" (number mark "        daniel@haxx. Feb 23   79/2012  " thread-indent "\"[oss-security] libssh2 Truncated Difffie-Hellman secret length\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20001 invoked by uid 550); 23 Feb 2016 21:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19965 invoked from network); 23 Feb 2016 21:51:33 -0000
X-Authentication-Warning: giant.haxx.se: dast owned process doing -bs
X-X-Sender: dast@giant.haxx.se
Message-ID: <alpine.DEB.2.20.1602232249280.6588@tvnag.unkk.fr>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
Date: Tue, 23 Feb 2016 22:51:20 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libssh2 Truncated Difffie-Hellman secret length
To: oss-security@lists.openwall.com

Hey all,

This advisory was posted earlier today to the libssh2 project's mailing list. 
There's still an ongoing discussion about a possibly amended patch.


Truncated Difffie-Hellman secret length
=======================================

Project libssh2 Security Advisory, February 23rd 2016 -
[Permalink](https://www.libssh2.org/adv_20160223.html)

VULNERABILITY
-------------

During the SSHv2 handshake when libssh2 is to get a suitable value for 'group
order' in the Diffle Hellman negotiation, it would pass in number of *bytes*
to a function that expected number of *bits*. This would result in the library
generating numbers using only an 8th the number of random bits than what were
intended: 128 or 256 bits instead of 1023 or 2047

Using such drastically reduced amount of random bits for Diffie Hellman
weakended the handshake security significantly.

There are no known exploits of this flaw at this time.

INFO
----

The Common Vulnerabilities and Exposures (CVE) project has assigned the name
CVE-2016-0787 to this issue.

AFFECTED VERSIONS
-----------------

- Affected versions: all versions to and including 1.6.0
- Not affected versions: libssh2 >= 1.7.0

libssh2 is used by many applications, but not always advertised as such!

THE SOLUTION
------------

libssh2 1.7.0 makes sure that there's a convertion done from number of bytes
to number of bits when the internal `_libssh2_bn_rand` function is called.

A patch for this problem is available at:

     https://www.libssh2.org/CVE-2016-0787.patch

RECOMMENDATIONS
---------------

We suggest you take one of the following actions immediately, in order of
preference:

A - Upgrade to libssh2 1.7.0

B - Apply the patch and rebuild libssh2

TIME LINE
---------

It was first reported to the libssh2 project on February 7 2016 by Andreas
Schneider.

libssh2 1.7.0 was released on February 23rd 2016, coordinated with the
publication of this advisory.

CREDITS
-------

Reported by Andreas Schneider.

Thanks a lot!

-- 

  / daniel.haxx.se
