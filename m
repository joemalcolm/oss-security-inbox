X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["909" "Thursday" "22" "March" "2018" "13:09:29" "+0100" "zugtprgfwprz@spornkuller.de" "zugtprgfwprz@spornkuller.de" "<ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>" "23" "Re: [oss-security] OpenSSL: bug in modular exponentiation" "^Date:" nil nil "3" "2018032212:09:29" "[oss-security] OpenSSL: bug in modular exponentiation" (number mark "        zugtprgfwprz Mar 22   23/909   " thread-indent "\"Re: [oss-security] OpenSSL: bug in modular exponentiation\"\n") "<CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>" ("<CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25840 invoked by uid 550); 22 Mar 2018 12:17:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15998 invoked from network); 22 Mar 2018 12:09:41 -0000
References: <CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>
Message-ID: <ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-LU
Content-Transfer-Encoding: 7bit
Date: Thu, 22 Mar 2018 13:09:29 +0100
From: zugtprgfwprz@spornkuller.de
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL: bug in modular exponentiation
To: oss-security@lists.openwall.com

Hi Guido,

On 20.03.2018 22:34, Guido Vranken wrote:
> My bignum fuzzer (https://github.com/guidovranken/bignum-fuzzer)
> running on Google's oss-fuzz recently found a bug in affecting
> constant-time modular exponentiation.

Interesting -- could you confirm that the effect of this bug is a
miscalculation? Or is it breaking the constant-time assertion?

> OpenSSL does not treat this as a security vulnerability. This is a
> heads-up to developers who rely on the affected code so they can
> review the impact on their applications on a case-by-case basis.

Do you have a pointer as to where this was discussed? Do you consider it
a security vulnerability? Can you give advice to developers of how to
mitigate this kind of issue?

Is it regarded a WONTFIX by OpenSSL or is it going to be fixed (just not
treated as security-criticial)? If so, do you know the fix version?

Cheers and best regards,
Johannes
