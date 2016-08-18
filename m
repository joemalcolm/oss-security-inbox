X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["722" "Thursday" "18" "August" "2016" "11:51:02" "+0200" "Florian Weimer" "fweimer@redhat.com" "<8eff73fa-3688-7ae2-06d3-e45d22d3691c@redhat.com>" "19" "[oss-security] CVE-2016-6323: Missing unwind information on ARM EABI (32-bit) causes backtrace generation to hang" nil nil nil "8" "2016081809:51:02" "[oss-security] CVE-2016-6323: Missing unwind information on ARM EABI (32-bit) causes backtrace generation to hang" (number mark "U       fweimer@redh Aug 18   19/722   " thread-indent "\"[oss-security] CVE-2016-6323: Missing unwind information on ARM EABI (32-bit) causes backtrace generation to hang\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11276 invoked by uid 550); 18 Aug 2016 09:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10231 invoked from network); 18 Aug 2016 09:51:15 -0000
To: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <8eff73fa-3688-7ae2-06d3-e45d22d3691c@redhat.com>
Date: Thu, 18 Aug 2016 11:51:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Thu, 18 Aug 2016 09:51:04 +0000 (UTC)
Subject: [oss-security] CVE-2016-6323: Missing unwind information on ARM EABI (32-bit) causes
 backtrace generation to hang

Andreas Schwab of SuSE reported and fixed a glibc bug where the 
makecontext function would create an execution context which is 
incompatible with the unwinder, causing it to hang when the generation 
of a backtrace is attempted:

   https://sourceware.org/bugzilla/show_bug.cgi?id=20435
 
https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=9e2ff6c9cc54c0b4402b8d49e4abe7000fde7617

This is a minor denial-of-service vulnerability.

The bug is specific to ARM EABI (32-bit) and does not affect other 
architectures.  So far, only certain applications compiled using gccgo 
(not the main golang.org toolchain) are known to be affected.

Red Hat Product Security has assigned CVE-2016-6323 to this issue.

Thanks,
Florian
