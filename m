X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["822" "Wednesday" "31" "October" "2018" "15:29:15" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20181031141705.qqvfb6t4huufu4e7@jwilk.net>" "20" "Re: [oss-security] Re: Travis CI MITM RCE" nil nil nil "10" "2018103114:29:15" "[oss-security] Re: Travis CI MITM RCE" (number mark "U       jwilk@jwilk. Oct 31   20/822   " thread-indent "\"Re: [oss-security] Re: Travis CI MITM RCE\"\n") "<87efc8kj92.fsf@fifthhorseman.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20181027145446.xmvhpq6ttyvcme3m@jwilk.net>" "<87efc8kj92.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3988 invoked by uid 550); 31 Oct 2018 14:29:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3550 invoked from network); 31 Oct 2018 14:29:31 -0000
Date: Wed, 31 Oct 2018 15:29:15 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20181031141705.qqvfb6t4huufu4e7@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20181027145446.xmvhpq6ttyvcme3m@jwilk.net>
 <87efc8kj92.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87efc8kj92.fsf@fifthhorseman.net>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 13564279131094570918
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedriedvgdeigecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: [oss-security] Re: Travis CI MITM RCE

* Daniel Kahn Gillmor <dkg@fifthhorseman.net>, 2018-10-29, 08:52:
>>My proposed fix was to use "gpg --recv-key" with full fingerprint. But 
>>I now discovered that even this is not resistant against MitM attacks:
>>
>>https://dev.gnupg.org/T3398
>>
>>"[...] modern gpg automatically applies an import screener that only 
>>accepts OpenPGP certificates that have the given fingerprint [...]
>
>It may be even worse than this, because the version of gpg used by 
>default in travis is not "modern gpg", it's either gnupg2 
>2.0.22-3ubuntu1.4 or gnupg 1.4.16-1ubuntu2.6.  I don't think either of 
>these has the baseline "import screener" functionality

Ubuntu Precise and later releases have the import screener backported to 
gnupg(2) packages:
https://bugs.launchpad.net/ubuntu/+source/gnupg2/+bug/1409117

-- 
Jakub Wilk
