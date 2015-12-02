X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1692" "Wednesday" "2" "December" "2015" "11:29:21" "+0100" "Andrea Barisani" "andrea@inversepath.com" "<20151202102921.GQ2610@core.inversepath.com>" "42" "[oss-security] shellinabox - DNS rebinding attack due to HTTP fallback" "^Date:" nil nil "12" "2015120210:29:21" "[oss-security] shellinabox - DNS rebinding attack due to HTTP fallback" (number mark "        andrea@inver Dec  2   42/1692  " thread-indent "\"[oss-security] shellinabox - DNS rebinding attack due to HTTP fallback\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13974 invoked by uid 550); 2 Dec 2015 10:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13926 invoked from network); 2 Dec 2015 10:29:33 -0000
Message-ID: <20151202102921.GQ2610@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x864C9B9E
X-GPG-Fingerprint: 0A76 074A 02CD E989 CE7F  AC3F DA47 578E 864C 9B9E
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 2 Dec 2015 11:29:21 +0100
From: Andrea Barisani <andrea@inversepath.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] shellinabox - DNS rebinding attack due to HTTP fallback
To: oss-security@lists.openwall.com


Hello,

Stephen Roettger from the Google Security Team reported to us that the
shellinabox package allows HTTP fallback, even when configured for HTTPS, via
the "/plain" URL.

This fallback is quite easy to be overlooked and it gives the opportunity for
a DNS rebinding attacks against systems that use the service and have default
credentials for a certain time window.

I've opened an issue on what appears to be the only maintained fork of
shellinabox at this time:

https://github.com/shellinabox/shellinabox/issues/355

Also we removed the package from the Debian image that we publish for the USB
armory project (http://dev.inversepath.com/download/usbarmory/), here's the
relevant CHANGELOG entry:

* security fix: removed shellinabox package

  The shellinabox web server was originally added to ease connection on hosts
  that do not have an SSH client. The server, while using the HTTPS protocol,
  allows HTTP fallback through the "/plain" URL. This exposes the opportunity
  for a potential DNS rebinding attack, by malicious JavaScript loaded in the
  context of the user browser, that would allow connection to shellinabox in
  the time window between server startup and user reconfiguration of default
  credentials.

  While the opportunity for a successful attack is quite limited, it is
  nonetheless present. For this reason the shellinabox package is removed.

Cheers

-- 
Andrea Barisani                             Inverse Path Srl
Chief Security Engineer                     -----> <--------

<andrea@inversepath.com>          http://www.inversepath.com
0x864C9B9E 0A76 074A 02CD E989 CE7F AC3F DA47 578E 864C 9B9E
       "Pluralitas non est ponenda sine necessitate"
