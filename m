X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["381" "Sunday" "25" "October" "2015" "18:03:52" "+0900" "Mamoru TASAKA" "mtasaka@fedoraproject.org" "<562C9AF8.50501@fedoraproject.org>" "9" "[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" nil nil nil "10" "2015102509:03:52" "[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password" (number mark "        mtasaka@fedo Oct 25    9/381   " thread-indent "\"[oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor cable when asking password\"\n") "<562B9FE6.605@fedoraproject.org>" ("<562B9FE6.605@fedoraproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17419 invoked by uid 550); 25 Oct 2015 09:04:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16377 invoked from network); 25 Oct 2015 09:04:08 -0000
References: <562B9FE6.605@fedoraproject.org>
Message-ID: <562C9AF8.50501@fedoraproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <562B9FE6.605@fedoraproject.org>
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
Cc: secalert@redhat.com
Date: Sun, 25 Oct 2015 18:03:52 +0900
From: Mamoru TASAKA <mtasaka@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: xscreensaver aborts when unpluging second monitor
 cable when asking password
To: oss-security@lists.openwall.com

The upstream released 5.34, which should address this issue.
Patch against 5.33 is
http://pkgs.fedoraproject.org/cgit/xscreensaver.git/diff/xscreensaver-5.33-0002-Modify-sigchld_hander-in_signal_hander_p-mechanism.patch?id=b57f59f3482fedf70ce7a3541094e2512290139f

If some detailed explanation is needed, please let me know it.

Regards,
Mamoru TASAKA <mtasaka@fedoraproject.org>

