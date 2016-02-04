X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["458" "Thursday" "4" "February" "2016" "12:30:17" "-0800" "Zach W." "kestrel@trylinux.us" "<56B3B4D9.3000806@trylinux.us>" "15" "[oss-security] CVE Request: Open Source Media Center insecure default config" "^Date:" nil nil "2" "2016020420:30:17" "[oss-security] CVE Request: Open Source Media Center insecure default config" (number mark "U       kestrel@tryl Feb  4   15/458   " thread-indent "\"[oss-security] CVE Request: Open Source Media Center insecure default config\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13529 invoked by uid 550); 4 Feb 2016 20:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13508 invoked from network); 4 Feb 2016 20:30:29 -0000
Message-ID: <56B3B4D9.3000806@trylinux.us>
User-Agent: Mozilla/5.0 (Windows NT 6.2; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 4 Feb 2016 12:30:17 -0800
From: "Zach W." <kestrel@trylinux.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Open Source Media Center insecure default config
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Hey all,

Using several other CVEs as an example (such as
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6850), I am
requesting a CVE for "OSMC: Open Source Media Center" default config.

1) Default user is osmc/osmc
2) SSH, and FTP are enabled by default, which osmc has access to
3) The interface does not require or request a password change for the
default user
4) osmc has full sudoers access and can gain root access via sudo

Thanks!

Zach W.
