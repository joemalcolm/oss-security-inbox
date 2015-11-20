X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["228" "Friday" "20" "November" "2015" "18:00:43" "+0100" "Florian Weimer" "fweimer@redhat.com" "<564F51BB.7040801@redhat.com>" "6" "[oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS" nil nil nil "11" "2015112017:00:43" "[oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS" (number mark "U       fweimer@redh Nov 20    6/228   " thread-indent "\"[oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19842 invoked by uid 550); 20 Nov 2015 17:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19824 invoked from network); 20 Nov 2015 17:00:58 -0000
To: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <564F51BB.7040801@redhat.com>
Date: Fri, 20 Nov 2015 18:00:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS

Is there a way on current Linux kernels to install a seccomp filter
which is reset on execve and therefore does not require
PR_SET_NO_NEW_PRIVS for security reasons?  (The filter could restrict to
execve if necessary.)

Florian
