X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Thursday" "17" "December" "2015" "14:39:58" "-0800" "John Johansen" "john.johansen@canonical.com" "<567339BE.3090404@canonical.com>" "15" "[oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" "^Date:" nil nil "12" "2015121722:39:58" "[oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        john.johanse Dec 17   15/493   " thread-indent "\"[oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11586 invoked by uid 550); 17 Dec 2015 22:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11556 invoked from network); 17 Dec 2015 22:40:11 -0000
Organization: Canonical
Message-ID: <567339BE.3090404@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 17 Dec 2015 14:39:58 -0800
From: John Johansen <john.johansen@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces
To: oss-security@lists.openwall.com

Hi,

I haven't seen CVE request for this one yet so,

Jann Horn reported a privilege escalation in user namespaces to the
lkml mailing list

https://lkml.org/lkml/2015/12/12/259

if a root-owned process wants to enter a user
namespace for some reason without knowing who owns it and
therefore can't change to the namespace owner's uid and gid
before entering, as soon as it has entered the namespace,
the namespace owner can attach to it via ptrace and thereby
gain access to its uid and gid.
