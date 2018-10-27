X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1848" "Saturday" "27" "October" "2018" "16:54:46" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20181027145446.xmvhpq6ttyvcme3m@jwilk.net>" "48" "[oss-security] Re: Travis CI MITM RCE" nil nil nil "10" "2018102714:54:46" "[oss-security] Re: Travis CI MITM RCE" (number mark "U       jwilk@jwilk. Oct 27   48/1848  " thread-indent "\"[oss-security] Re: Travis CI MITM RCE\"\n") "<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27730 invoked by uid 550); 27 Oct 2018 14:55:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27698 invoked from network); 27 Oct 2018 14:55:12 -0000
Date: Sat, 27 Oct 2018 16:54:46 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20181027145446.xmvhpq6ttyvcme3m@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 8954281961565444006
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedrheeggdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: [oss-security] Re: Travis CI MITM RCE

Response from Travis CI:
https://blog.travis-ci.com/2018-08-29-addressing-reported-mitm-rce

Some clarifications:

* Jakub Wilk <jwilk@jwilk.net>, 2018-08-25, 23:49:
>On 2018-07-05, --force-yes was replaced with --allow-downgrades 
>--allow-remove-essential --allow-change-held-packages: 
>https://github.com/travis-ci/travis-build/pull/1422
>
>I'm not sure how could this change possibly work, because APT in the 
>Ubuntu versions Travis CI supports (precise, trusty) doesn't have 
>these options…

It did work, because Travis CI folks installed backported APT 1.2.X, 
with support for these options...

>So a few days later --force-yes was added back: 
>https://github.com/travis-ci/travis-build/pull/1433

...but this fix had an off-by-one bug in version check, which made APT 
1.2.X still use --force-yes. The bug was fixed soon after my advisory:
https://github.com/travis-ci/travis-build/commit/1ee43f25e45cad99c283b8fe53145617fd115dbb

>2) On 2017-10-12, code was added to refresh an expired signing key: 
>https://github.com/travis-ci/travis-build/pull/1192
>
>The code used 32-bit key ID to retrieve the key from the keyserver. I 
>reported this on 2017-12-06: 
>https://github.com/travis-ci/travis-build/pull/1269

My proposed fix was to use "gpg --recv-key" with full fingerprint. But I 
now discovered that even this is not resistant against MitM attacks:

https://dev.gnupg.org/T3398

"[...] modern gpg automatically applies an import screener that only 
accepts OpenPGP certificates that have the given fingerprint [...]

However, it's possible for someone else to make a new OpenPGP 
certificate that includes the key in question without knowledge of the 
secret key (e.g. as a non-cross-signed subkey).

As a result, an attacker can bypass the import screener and inject new 
primary keys into the keyring. [...]"

-- 
Jakub Wilk
