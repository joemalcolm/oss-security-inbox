X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["495" "Wednesday" "1" "March" "2017" "17:57:23" "+0100" "Florian Weimer" "fweimer@redhat.com" "<58d40b9e-35ab-6576-d190-774c869c2a58@redhat.com>" "14" "[oss-security] CVE-2016-10228: glibc iconv program can hang when invoked with the -c option" nil nil nil "3" "2017030116:57:23" "[oss-security] CVE-2016-10228: glibc iconv program can hang when invoked with the -c option" (number mark "U       fweimer@redh Mar  1   14/495   " thread-indent "\"[oss-security] CVE-2016-10228: glibc iconv program can hang when invoked with the -c option\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12086 invoked by uid 550); 1 Mar 2017 16:57:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12055 invoked from network); 1 Mar 2017 16:57:35 -0000
From: Florian Weimer <fweimer@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <58d40b9e-35ab-6576-d190-774c869c2a58@redhat.com>
Date: Wed, 1 Mar 2017 17:57:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 01 Mar 2017 16:57:25 +0000 (UTC)
Subject: [oss-security] CVE-2016-10228: glibc iconv program can hang when invoked with the -c
 option

The iconv program (not the iconv function) provided by glibc can hang 
(enter an infinite loop) when invoked with the -c option and an invalid 
multi-byte sequence is encountered in the input:

   https://sourceware.org/bugzilla/show_bug.cgi?id=19519

We have received an independent report of this issue, so we are treating 
this as a (minor) security bug now on the glibc upstream side.

(Note to Red Hat Product Security: We already have a couple of product 
bugs for this.)

Thanks,
Florian
