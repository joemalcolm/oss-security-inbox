X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["766" "Tuesday" "11" "August" "2015" "20:40:38" "+0200" "Moritz Jodeit" "moritz@bluefrostsecurity.de" "<55CA41A6.600@bluefrostsecurity.de>" "20" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081118:40:38" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        moritz@bluef Aug 11   20/766   " thread-indent "\"[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21718 invoked by uid 550); 11 Aug 2015 18:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20463 invoked from network); 11 Aug 2015 18:40:51 -0000
X-Sender-Id: moritz@bluefrostsecurity.de
X-Enigmail-Draft-Status: N1110
Message-ID: <55CA41A6.600@bluefrostsecurity.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 11 Aug 2015 20:40:38 +0200
From: Moritz Jodeit <moritz@bluefrostsecurity.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities
To: oss-security@lists.openwall.com

Hello list,

could you please assign two CVE IDs for the following two security
issues fixed in OpenSSH 7.0 (directly taken from the release notes [1]):

 * sshd(8): Portable OpenSSH only: Fixed a privilege separation
   weakness related to PAM support. Attackers who could successfully
   compromise the pre-authentication process for remote code
   execution and who had valid credentials on the host could
   impersonate other users.  Reported by Moritz Jodeit.

 * sshd(8): Portable OpenSSH only: Fixed a use-after-free bug
   related to PAM support that was reachable by attackers who could
   compromise the pre-authentication process for remote code
   execution. Also reported by Moritz Jodeit.

[1] http://www.openssh.com/txt/release-7.0

Thank you,
Moritz
