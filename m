X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1051" "Wednesday" "19" "July" "2017" "13:44:50" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>" "20" "[oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47" "^Date:" nil nil "7" "2017071920:44:50" "[oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47" (number mark "        alan.coopers Jul 19   20/1051  " thread-indent "\"[oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3320 invoked by uid 550); 19 Jul 2017 20:45:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3298 invoked from network); 19 Jul 2017 20:45:10 -0000
Message-ID: <6dd6b52f-c4cb-4dcf-118e-f5f9510a2d84@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Source-IP: aserv0021.oracle.com [141.146.126.233]
Date: Wed, 19 Jul 2017 13:44:50 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Devil's Ivy (CVE-2017-9765) in gSOAP 2.7 up to 2.8.47
To: oss-security@lists.openwall.com

I noticed some press coverage of this but haven't seen mail here yet:

http://blog.senr.io/blog/devils-ivy-flaw-in-widely-used-third-party-code-impacts-millions
https://www.genivia.com/advisory.html#Security_advisory:_CVE-2017-9765_bug_in_certain_versions_of_gSOAP_2.7_up_to_2.8.47_(June_21,_2017)
https://www.genivia.com/changelog.html#Version_2.8.48_upd_(06/21/2017)

"a potential vulnerability to a large and specific XML message over 2GB in size
  (greater than 2147483711 bytes to trigger the software bug). A buffer overflow
  can cause an open unsecured server to crash or malfunction after 2GB is
  received."

Unfortunately, the subversion repo on sourceforge for gSOAP only has
full releases, not individual changes, in each commit, so the fix
appears to be somewhere mixed in [r119] on
https://sourceforge.net/p/gsoap2/code/commit_browser
making it a challenge for distros who want to patch instead of upgrade.

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
