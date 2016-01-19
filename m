X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["980" "Tuesday" "19" "January" "2016" "06:58:38" "-0500" "Wade Mealing" "wmealing@redhat.com" "<1889645664.9659032.1453204718551.JavaMail.zimbra@redhat.com>" "15" "[oss-security] Linux kernel: use after free in keyring facility." nil nil nil "1" "2016011911:58:38" "[oss-security] Linux kernel: use after free in keyring facility." (number mark "U       wmealing@red Jan 19   15/980   " thread-indent "\"[oss-security] Linux kernel: use after free in keyring facility.\"\n") "<1790868646.9621743.1453193927553.JavaMail.zimbra@redhat.com>" ("<1790868646.9621743.1453193927553.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27766 invoked by uid 550); 19 Jan 2016 11:58:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27742 invoked from network); 19 Jan 2016 11:58:50 -0000
Date: Tue, 19 Jan 2016 06:58:38 -0500 (EST)
From: Wade Mealing <wmealing@redhat.com>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <1889645664.9659032.1453204718551.JavaMail.zimbra@redhat.com>
In-Reply-To: <1790868646.9621743.1453193927553.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.50.196]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC47 (Mac)/8.0.6_GA_5922)
Thread-Topic: Linux kernel: use after free in keyring facility.
Thread-Index: vxCODnRmJwjeuBRXCUICL2YE4MWMDA==
Subject: [oss-security] Linux kernel: use after free in keyring facility.

Gday,

It was reported that possible use-after-free vulnerability in keyring facility, possibly leading to local privilege escalation was found. The function join_session_keyring in security/keys/process_keys.c holds a reference to the requested keyring, but if that keyring is the same as the one being currently used by the process, the kernel wouldn't decrease keyring->usage before returning to userspace. The usage field can be overflowed causing use-after-free on the keyring object.

This was introduced in commit 3a50597de8635cd05133bd12c95681c82fe7b878.

Perception point reported this vulnerability to Red Hat and it has been assigned CVE-2016_0728.  

Red Hat Bugzilla flaw:
 https://bugzilla.redhat.com/show_bug.cgi?id=1297475

Investigation:
 http://perception-point.io/2016/01/14/analysis-and-exploitation-of-a-linux-kernel-vulnerability-cve-2016-0728/

Patches will be available shortly with the upstream fix and are also explained in the investigation link above.
