X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["392" "Thursday" "18" "October" "2018" "17:10:38" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20181018151038.yocny6uyklflclka@jwilk.net>" "10" "Re: [oss-security] Travis CI MITM RCE" "^Date:" nil nil "10" "2018101815:10:38" "[oss-security] Travis CI MITM RCE" (number mark "        jwilk@jwilk. Oct 18   10/392   " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "<87sh2y5tnf.fsf@fifthhorseman.net>" "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>" "<20180831121802.4mq7cag23e4fkzoz@raspberrypi>" "<a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17797 invoked by uid 550); 18 Oct 2018 15:10:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17776 invoked from network); 18 Oct 2018 15:10:52 -0000
Message-ID: <20181018151038.yocny6uyklflclka@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20180826005658.GA5795@osmium.pennocktech.home.arpa>
 <87sh2y5tnf.fsf@fifthhorseman.net>
 <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
 <20180831121802.4mq7cag23e4fkzoz@raspberrypi>
 <a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 11704855433277200294
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedrfeeggdekhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Date: Thu, 18 Oct 2018 17:10:38 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Travis CI MITM RCE
To: oss-security@lists.openwall.com

* zugtprgfwprz@spornkuller.de, 2018-08-31, 22:25:
>I.e., my point was that for a given key that's uploaded with a fixed 
>fingerprint, we're not talking about 2^(b/2) collision complexity, but 
>2^(b-1) second preimage complexity.

Nitpicking, but for an ideal n-bit hash function, on avergage you need 
2ⁿ (not 2ⁿ⁻¹) evalutations of the function to find the preimage.

-- 
Jakub Wilk
