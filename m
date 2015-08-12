X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1638" "Wednesday" "12" "August" "2015" "21:50:10" "+0200" "Moritz Jodeit" "moritz@bluefrostsecurity.de" "<55CBA372.6080102@bluefrostsecurity.de>" "39" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081219:50:10" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        moritz@bluef Aug 12   39/1638  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<20150812161103.GA11200@openwall.com>" ("<55CA41A6.600@bluefrostsecurity.de>" "<20150812161103.GA11200@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9277 invoked by uid 550); 12 Aug 2015 20:48:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25785 invoked from network); 12 Aug 2015 19:50:23 -0000
X-Sender-Id: moritz@bluefrostsecurity.de
References: <55CA41A6.600@bluefrostsecurity.de>
 <20150812161103.GA11200@openwall.com>
Message-ID: <55CBA372.6080102@bluefrostsecurity.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150812161103.GA11200@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Wed, 12 Aug 2015 21:50:10 +0200
From: Moritz Jodeit <moritz@bluefrostsecurity.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation
 vulnerabilities
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com

On 12.08.2015 18:11, Solar Designer wrote:
> Damien, Moritz -
> 
> On Tue, Aug 11, 2015 at 08:40:38PM +0200, Moritz Jodeit wrote:
>> could you please assign two CVE IDs for the following two security
>> issues fixed in OpenSSH 7.0 (directly taken from the release notes [1]):
>>
>>  * sshd(8): Portable OpenSSH only: Fixed a privilege separation
>>    weakness related to PAM support. Attackers who could successfully
>>    compromise the pre-authentication process for remote code
>>    execution and who had valid credentials on the host could
>>    impersonate other users.  Reported by Moritz Jodeit.
>>
>>  * sshd(8): Portable OpenSSH only: Fixed a use-after-free bug
>>    related to PAM support that was reachable by attackers who could
>>    compromise the pre-authentication process for remote code
>>    execution. Also reported by Moritz Jodeit.
>>
>> [1] http://www.openssh.com/txt/release-7.0
> 
> Far more important than having CVEs would be to know when (in what
> version) these bugs were introduced, with what commits, and what commits
> fix them.  For checking derived versions, and for backports.

The vulnerable code for the two privsep issues was introduced with the merge of the
FreeBSD PAM code in 2003:

https://github.com/openssh/openssh-portable/commit/4f9f42a9bb6a6aa8f6100d873dc6344f2f9994de

The user impersonation issue was fixed by the following commit:

https://github.com/openssh/openssh-portable/commit/d4697fe9a28dab7255c60433e4dd23cf7fce8a8b

While the use-after-free is fixed by this commit:

https://github.com/openssh/openssh-portable/commit/5e75f5198769056089fb06c4d738ab0e5abc66f7

Cheers,
Moritz
