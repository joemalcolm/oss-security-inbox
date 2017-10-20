X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["959" "Friday" "20" "October" "2017" "10:33:46" "+0700" "Tellier Benoit" "btellier@apache.org" "<1db0dc47-b5d8-bcfa-62c9-319a0b7d5249@apache.org>" "28" "[oss-security] Announce: Apache James 3.0.1 security release" nil nil nil "10" "2017102003:33:46" "[oss-security] Announce: Apache James 3.0.1 security release" (number mark "U       btellier@apa Oct 20   28/959   " thread-indent "\"[oss-security] Announce: Apache James 3.0.1 security release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3728 invoked by uid 550); 20 Oct 2017 03:41:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31946 invoked from network); 20 Oct 2017 03:34:04 -0000
To: oss-security@lists.openwall.com
From: Tellier Benoit <btellier@apache.org>
Organization: Apache Foundation - James Project
Message-ID: <1db0dc47-b5d8-bcfa-62c9-319a0b7d5249@apache.org>
Date: Fri, 20 Oct 2017 10:33:46 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: [oss-security] Announce: Apache James 3.0.1 security release

I, in the name of Apache James PMCs, am glad to announce you the release
version 3.0.1 of Apache James server.

It fixes vulnerability described in CVE-2017-12628. The JMX server, also
used by the command line client is exposed to a java de-serialization
issue, and thus can be used to execute arbitrary commands. As James
exposes JMX socket by default only on local-host, this vulnerability can
only be used for privilege escalation.

Release 3.0.1 upgrades the incriminated library.

Note that you can take additional defensive steps in order to mitigate
this vulnerability:

 - Ensure that you restrict the access to JMX only on local-host

 - Ensure that you are using a recent Java Run-time Environment. For
instance OpenJDK 8 u111 is vulnerable but OpenJDK 8 u 141 is not.

 - You can additionally run James in a container to limit damages of
potential exploits

 - And of course upgrade to the newest 3.0.1 version.

Best regards,

Benoit Tellier

