X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1636" "Thursday" "13" "August" "2015" "00:20:04" "+0200" "Moritz Jodeit" "moritz@bluefrostsecurity.de" "<55CBC694.7070706@bluefrostsecurity.de>" "35" "Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" nil nil nil "8" "2015081222:20:04" "[oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities" (number mark "        moritz@bluef Aug 13   35/1636  " thread-indent "\"Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation vulnerabilities\"\n") "<20150812204805.GA12880@openwall.com>" ("<55CA41A6.600@bluefrostsecurity.de>" "<20150812161103.GA11200@openwall.com>" "<55CBA372.6080102@bluefrostsecurity.de>" "<20150812204805.GA12880@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12079 invoked by uid 550); 12 Aug 2015 22:20:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12040 invoked from network); 12 Aug 2015 22:20:18 -0000
X-Sender-Id: moritz@bluefrostsecurity.de
References: <55CA41A6.600@bluefrostsecurity.de>
 <20150812161103.GA11200@openwall.com> <55CBA372.6080102@bluefrostsecurity.de>
 <20150812204805.GA12880@openwall.com>
Message-ID: <55CBC694.7070706@bluefrostsecurity.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150812204805.GA12880@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Aug 2015 00:20:04 +0200
From: Moritz Jodeit <moritz@bluefrostsecurity.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - OpenSSH 6.9 PAM privilege separation
 vulnerabilities
To: Solar Designer <solar@openwall.com>

On 12.08.2015 22:48, Solar Designer wrote:
> On Wed, Aug 12, 2015 at 09:50:10PM +0200, Moritz Jodeit wrote:
>> The vulnerable code for the two privsep issues was introduced with the merge of the
>> FreeBSD PAM code in 2003:
>>
>> https://github.com/openssh/openssh-portable/commit/4f9f42a9bb6a6aa8f6100d873dc6344f2f9994de
>>
>> The user impersonation issue was fixed by the following commit:
>>
>> https://github.com/openssh/openssh-portable/commit/d4697fe9a28dab7255c60433e4dd23cf7fce8a8b
>>
>> While the use-after-free is fixed by this commit:
>>
>> https://github.com/openssh/openssh-portable/commit/5e75f5198769056089fb06c4d738ab0e5abc66f7
> 
> Thank you!
> 
> Are systems with "keyboard interactive" and "challenge-response"
> authentication disabled (all of PAMAuthenticationViaKbdInt,
> KbdInteractiveAuthentication, and ChallengeResponseAuthentication, as
> applicable to a given sshd version, set to no) affected by these issues
> as well?  The code appears to be specific to this mode, but it isn't
> immediately clear whether or not these configuration settings prevent
> the vulnerable code from being reached in the privsep monitor even when
> the privsep child is compromised.  If the settings do not currently
> prevent the code from being reached (I hope they do), then this should
> be corrected as a hardening measure.

As long as UsePAM is enabled in the configuration, all the PAM-related
monitor requests can be send to the monitor. This at least allows
triggering the use-after-free even if all the settings you mentioned
are set to "no". Not sure if a full authentication is possible in this
case though.

Moritz
