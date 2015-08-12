X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1678" "Wednesday" "12" "August" "2015" "10:39:00" "+0200" "Adam Maris" "amaris@redhat.com" "<55CB0624.2080003@redhat.com>" "44" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081208:39:00" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        amaris@redha Aug 12   44/1678  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<55CA41A6.600@bluefrostsecurity.de>" ("<55CA41A6.600@bluefrostsecurity.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24345 invoked by uid 550); 12 Aug 2015 08:39:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24327 invoked from network); 12 Aug 2015 08:39:14 -0000
References: <55CA41A6.600@bluefrostsecurity.de>
Message-ID: <55CB0624.2080003@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55CA41A6.600@bluefrostsecurity.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Wed, 12 Aug 2015 10:39:00 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation
 vulnerabilities
To: oss-security@lists.openwall.com


On 11/08/15 20:40, Moritz Jodeit wrote:
> Hello list,
>
> could you please assign two CVE IDs for the following two security
> issues fixed in OpenSSH 7.0 (directly taken from the release notes [1]):
>
>   * sshd(8): Portable OpenSSH only: Fixed a privilege separation
>     weakness related to PAM support. Attackers who could successfully
>     compromise the pre-authentication process for remote code
>     execution and who had valid credentials on the host could
>     impersonate other users.  Reported by Moritz Jodeit.
>
>   * sshd(8): Portable OpenSSH only: Fixed a use-after-free bug
>     related to PAM support that was reachable by attackers who could
>     compromise the pre-authentication process for remote code
>     execution. Also reported by Moritz Jodeit.
>
> [1] http://www.openssh.com/txt/release-7.0
>
> Thank you,
> Moritz
Could you assign CVEs for the other two issues as well?

  * sshd(8): fix circumvention of MaxAuthTries using keyboard-
    interactive authentication. By specifying a long, repeating
    keyboard-interactive "devices" string, an attacker could request
    the same authentication method be tried thousands of times in
    a single pass. The LoginGraceTime timeout in sshd(8) and any
    authentication failure delays implemented by the authentication
    mechanism itself were still applied. Found by Kingcope.

  * sshd(8): OpenSSH 6.8 and 6.9 incorrectly set TTYs to be world-
    writable. Local attackers may be able to write arbitrary messages
    to logged-in users, including terminal escape sequences.
    Reported by Nikolay Edigaryev.

Or have they CVEs already?

Thanks.

-- 
Adam Maris / Red Hat Product Security

