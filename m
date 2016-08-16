X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1423" "Tuesday" "16" "August" "2016" "15:34:54" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>" "35" "[oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field" nil nil nil "8" "2016081610:04:54" "[oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field" (number mark "U       huzaifas@red Aug 16   35/1423  " thread-indent "\"[oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5346 invoked by uid 550); 16 Aug 2016 10:05:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5328 invoked from network); 16 Aug 2016 10:05:07 -0000
Message-ID: <8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 16 Aug 2016 10:04:56 +0000 (UTC)
Date: Tue, 16 Aug 2016 15:34:54 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field
To: oss-security@lists.openwall.com

Hi All,

A security flaw was reported to us by CSG Labs, details as follows:

A stack-based overflow was found in the way cracklib, a library used to
stop users from choosing easy to guess passwords, handled large GECOS
field in the /etc/passwd file. When an application compiled against the
cracklib libary, such as "passwd" is used to parse the GECOS field, it
could cause the application to crash or execute arbitary code with the
permissions of the user running such an application.

To trigger the flaw, you need a specially-crafted "long" GECOS field,
which can be done by a local user on the system. The attacker then needs
to run some utility which uses cracklib to process this long GECOS field
on the system. (such as "passwd" application which runs suid root)

All versions of the cracklib library shipped with Red Hat Enterprise
Linux are compiled with FORTIFY_SOURCE, which detects the
buffer-overflow and aborts the application safely.

Therefore the maximum impact of this flaw is application crash.

However, there may be other applications, distributions which dont
compile cracklib with FORTIFY_SOURCE, and this can lead to easy code
exec or even privsec.

A proposed patch is available at:
https://bugzilla.redhat.com/attachment.cgi?id=1188599

This flaw was assigned CVE-2016-6318 and it was previously disclosed via
linux-distros mailing list.


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
