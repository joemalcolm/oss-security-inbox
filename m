X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["795" "Monday" "14" "December" "2015" "16:03:42" "+0100" "Florian Weimer" "fweimer@redhat.com" "<566EDA4E.2010507@redhat.com>" "20" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121415:03:42" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        fweimer@redh Dec 14   20/795   " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<566E0678.1080808@halfdog.net>" ("<565F679F.9050600@halfdog.net>" "<566E0678.1080808@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1715 invoked by uid 550); 14 Dec 2015 15:03:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1697 invoked from network); 14 Dec 2015 15:03:57 -0000
References: <565F679F.9050600@halfdog.net> <566E0678.1080808@halfdog.net>
Message-ID: <566EDA4E.2010507@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <566E0678.1080808@halfdog.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Mon, 14 Dec 2015 16:03:42 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid
 Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

On 12/14/2015 12:59 AM, halfdog wrote:

> Here they are. I have got feedback, that at least Suse is not affected
> by that. As the affected configuration seems to not so common and also
> impact is not really high - usually no user-controllable services are
> run as user "man" - this should not be a great deal. It is just
> something to fix sometime, which should be possible now for more
> people as information now publicly available.
> 
> [1]
> http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
> 
> [2]
> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/

I think systemd-tmpfiles can also have this issue, depending on system
configuration.  It's been assigned CVE-2013-4392, and has not been fixed
anywhere, as far as I know.

Florian
