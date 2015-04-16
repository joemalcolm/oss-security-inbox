X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["285" "Thursday" "16" "April" "2015" "14:42:55" "+0200" "Florian Weimer" "fweimer@redhat.com" "<552FAE4F.6070300@redhat.com>" "10" "[oss-security] kernel: fs.suid_dumpable=2 privilege escalation" nil nil nil "4" "2015041612:42:55" "[oss-security] kernel: fs.suid_dumpable=2 privilege escalation" (number mark "        fweimer@redh Apr 16   10/285   " thread-indent "\"[oss-security] kernel: fs.suid_dumpable=2 privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3300 invoked by uid 550); 16 Apr 2015 12:43:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3275 invoked from network); 16 Apr 2015 12:43:10 -0000
Message-ID: <552FAE4F.6070300@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
CC: Kees Cook <keescook@chromium.org>
Date: Thu, 16 Apr 2015 14:42:55 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] kernel: fs.suid_dumpable=2 privilege escalation
To: oss-security@lists.openwall.com

Should this be treated as a security vulnerability?

“fs: make dumpable=2 require fully qualified path”
<http://lwn.net/Articles/503682/>

Some widely-used cronie versions still do not have hardening and parse
commands in core dumps.

-- 
Florian Weimer / Red Hat Product Security
