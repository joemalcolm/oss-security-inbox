X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1232" "Wednesday" "12" "August" "2015" "19:11:03" "+0300" "Solar Designer" "solar@openwall.com" "<20150812161103.GA11200@openwall.com>" "31" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081216:11:03" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        solar@openwa Aug 12   31/1232  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<55CA41A6.600@bluefrostsecurity.de>" ("<55CA41A6.600@bluefrostsecurity.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3429 invoked by uid 550); 12 Aug 2015 16:11:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3403 invoked from network); 12 Aug 2015 16:11:08 -0000
Message-ID: <20150812161103.GA11200@openwall.com>
References: <55CA41A6.600@bluefrostsecurity.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55CA41A6.600@bluefrostsecurity.de>
User-Agent: Mutt/1.4.2.3i
Cc: Moritz Jodeit <moritz@bluefrostsecurity.de>
Date: Wed, 12 Aug 2015 19:11:03 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities
To: oss-security@lists.openwall.com

Damien, Moritz -

On Tue, Aug 11, 2015 at 08:40:38PM +0200, Moritz Jodeit wrote:
> could you please assign two CVE IDs for the following two security
> issues fixed in OpenSSH 7.0 (directly taken from the release notes [1]):
> 
>  * sshd(8): Portable OpenSSH only: Fixed a privilege separation
>    weakness related to PAM support. Attackers who could successfully
>    compromise the pre-authentication process for remote code
>    execution and who had valid credentials on the host could
>    impersonate other users.  Reported by Moritz Jodeit.
> 
>  * sshd(8): Portable OpenSSH only: Fixed a use-after-free bug
>    related to PAM support that was reachable by attackers who could
>    compromise the pre-authentication process for remote code
>    execution. Also reported by Moritz Jodeit.
> 
> [1] http://www.openssh.com/txt/release-7.0

Far more important than having CVEs would be to know when (in what
version) these bugs were introduced, with what commits, and what commits
fix them.  For checking derived versions, and for backports.

Would you share this info, please?

(I guess I could find it myself, but I think it's preferable to have it
posted to oss-security anyway, so I prefer to ask you.)

Thanks,

Alexander
