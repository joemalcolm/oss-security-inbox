X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["996" "Thursday" "30" "August" "2018" "18:13:34" "+0200" "zugtprgfwprz@spornkuller.de" "zugtprgfwprz@spornkuller.de" "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>" "27" "Re: [oss-security] Travis CI MITM RCE" nil nil nil "8" "2018083016:13:34" "[oss-security] Travis CI MITM RCE" (number mark "U       zugtprgfwprz Aug 30   27/996   " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<87sh2y5tnf.fsf@fifthhorseman.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "<87sh2y5tnf.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1910 invoked by uid 550); 30 Aug 2018 17:51:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28020 invoked from network); 30 Aug 2018 16:13:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=spornkuller.de;
	s=dkim201808; t=1535645614;
	bh=Z/ga/W/E2tu5kLvnYj2pHHZ9MtqV/LSQXhzglMdAd4U=;
	h=Subject:To:From:Date:From;
	b=K8k9GRFoZ9Rw1MA+GL47N391yLlgNJ7uggsK89zQ/A2lERAFIT5tdRZ3WcDvsyDEG
	 a5ecUvl86MA8F6A372cgp8ARealdQOA5JLNrjme41OdVZJ3SIlEj/J9/6McheyAXkW
	 EJjB8PY5l62UMLy3jmFZeRuPl/Ad430KsZPLGrZ/GmEtH1FQdhot8jOS3wA/6XqKX5
	 wmhL9OGYG85L+80YsPzmK7hrPjSCuEyaH50LJf+lNt/BMI2+Iw6meOcknwi0ZNs9F2
	 +WkcWaGpOuNmfabTxUFgLyuUEUaLYKSHMFcV5I+YanQqa74bpuakp5FFBjI5VaSAac
	 mXpi8xBMC/Nqw==
To: oss-security@lists.openwall.com
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20180826005658.GA5795@osmium.pennocktech.home.arpa>
 <87sh2y5tnf.fsf@fifthhorseman.net>
From: zugtprgfwprz@spornkuller.de
Message-ID: <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
Date: Thu, 30 Aug 2018 18:13:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87sh2y5tnf.fsf@fifthhorseman.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Travis CI MITM RCE

Hi Daniel,

On 28.08.2018 18:43, Daniel Kahn Gillmor wrote:

> In some ways, the keyserver network has done the OpenPGP community a
> disservice, by encouraging OpenPGP users to refer to keys by
> fingerprints (or even worse, by key IDs).  While this is a useful
> shorthand in some contexts, it's really a security/reliability
> anti-pattern when it comes to secure programming.

I agree about the "key ID" part, but not about the "fingerprint" part.
Pinning a cryptographic hash over a public key isn't a security
antipattern by any strech of the imagination. Sure, you could argue that
the SHA-1 used by GPG isn't state-of-the-art anymore, but we're not
talking about collision attacks, but second preimage attacks. Far worse
for the attacker.

The way you phrased it, however, all applications of fingerprints/hashes
would be broken (SSH fingerprints, HPKP, etc.), regardless of the hash
function they use.

Cheers,
Joe
t

-- 
"A PC without Windows is like a chocolate cake without mustard."
