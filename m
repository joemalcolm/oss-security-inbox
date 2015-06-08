X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["832" "Monday" "8" "June" "2015" "14:47:52" "+0200" "Tobias Brunner" "tobias@strongswan.org" "<55758EF8.4090708@strongswan.org>" "21" "[oss-security] Re: StrongSwan VPN client for Android leaks username to rouge server" nil nil nil "6" "2015060812:47:52" "[oss-security] Re: StrongSwan VPN client for Android leaks username to rouge server" (number mark "        tobias@stron Jun  8   21/832   " thread-indent "\"[oss-security] Re: StrongSwan VPN client for Android leaks username to rouge server\"\n") "<5568A654.7020703@gmail.com>" ("<md5:fMhkBS7qmAbL0iMu8xkv5g==>" "<5568A654.7020703@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32628 invoked by uid 550); 8 Jun 2015 12:54:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28039 invoked from network); 8 Jun 2015 12:48:04 -0000
Message-ID: <55758EF8.4090708@strongswan.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <md5:fMhkBS7qmAbL0iMu8xkv5g==> <5568A654.7020703@gmail.com>
In-Reply-To: <5568A654.7020703@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
CC: oss-security@lists.openwall.com
Date: Mon, 08 Jun 2015 14:47:52 +0200
From: Tobias Brunner <tobias@strongswan.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: StrongSwan VPN client for Android leaks username to rouge server
To: "Alexander E. Patrakov" <patrakov@gmail.com>

Hi Alexander,

> I found that, in the event of DNS spoofing, StrongSwan VPN client for 
> Android can leak the username and the MSCHAPv2 authentication value to a 
> rogue server if it has any valid X.509 certificate. Unless I 
> misunderstand something about X.509 certificates and their use for 
> confirming IKEv2 identities, and unless this is already known, this 
> might use a CVE ID.

Thanks for bringing this to our attention.  We've just released a fix
for this vulnerability [1], which has been registered as CVE-2015-4171.

An updated version of the Android app and strongSwan 5.3.2 that both
include the fix were also released [2].

Regards,
Tobias

[1] http://www.strongswan.org/blog/2015/06/08/strongswan-vulnerability-(cve-2015-4171).html
[2] http://www.strongswan.org/blog/2015/06/08/strongswan-5.3.2-released.html

