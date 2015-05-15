X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Friday" "15" "May" "2015" "01:39:27" "+0100" "=?UTF-8?B?UMOhZHJhaWcgQnJhZHk=?=" "P@draigBrady.com" "<5555403F.3060502@draigBrady.com>" "20" "[oss-security] coreutils sort heap overflow" nil nil nil "5" "2015051500:39:27" "[oss-security] coreutils sort heap overflow" (number mark "        P@draigBrady May 15   20/712   " thread-indent "\"[oss-security] coreutils sort heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9824 invoked by uid 550); 15 May 2015 00:45:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5937 invoked from network); 15 May 2015 00:39:41 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApcKAPg/VVVtTLyB/2dsb2JhbABcgw9UXoE7gRVOwzOFLIIJTAEBAQEBAYELQQWEBg8Bbg0CBRYLAgsDAgECAT8ZCAEBiCwBCKE0j1eFap8JBIEhjzuCUoFFBZcIjkaOfSOBRwyCJT0xAYJFAQEB
Message-ID: <5555403F.3060502@draigBrady.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Fri, 15 May 2015 01:39:27 +0100
From: =?UTF-8?B?UMOhZHJhaWcgQnJhZHk=?= <P@draigBrady.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] coreutils sort heap overflow
To: oss-security@lists.openwall.com

FYI on distros with the coreutils i18n patch applied
(Suse/RHEL/Fedora/...) a heap overflow can be triggered in sort(1) as per:
https://bugzilla.suse.com/show_bug.cgi?id=928749

The following should be the simplest way to trigger this on affected distros:
(note the error is not generated 100% of the time):

  printf '%s\n' a ɑ | MALLOC_CHECK_=1 LC_ALL=en_US.utf8 sort -f

Note in UTF8 only a few chars are converted to longer sequences,
so the values that can be written are restricted.

There is also a theoretical buffer overflow with data around SIZE_MAX/2.

Both issues are fixed at:
  https://github.com/pixelb/coreutils/commit/bea5e36c
The fix is public as the bug is already public.

thanks,
Pádraig.
