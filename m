X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1069" "Thursday" "13" "August" "2015" "20:25:38" "+0300" "Solar Designer" "solar@openwall.com" "<20150813172537.GA19417@openwall.com>" "29" "Re: [oss-security] CVE request for saltstack" nil nil nil "8" "2015081317:25:38" "[oss-security] CVE request for saltstack" (number mark "        solar@openwa Aug 13   29/1069  " thread-indent "\"Re: [oss-security] CVE request for saltstack\"\n") "<CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>" ("<CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7908 invoked by uid 550); 13 Aug 2015 17:25:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7889 invoked from network); 13 Aug 2015 17:25:42 -0000
Message-ID: <20150813172537.GA19417@openwall.com>
References: <CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty1icpVKK4T-QLNe9ym1zeJRhvkRHvZFpVd7Vb1vM1tV2A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: security@saltstack.com
Date: Thu, 13 Aug 2015 20:25:38 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for saltstack
To: oss-security@lists.openwall.com

On Thu, Aug 13, 2015 at 11:06:10AM -0600, Kurt Seifried wrote:
> So someone pointed this out to me:
> 
> https://github.com/saltstack/salt/commit/e8ce66cf688b43aeb3e716e78b1af3a08e9940e3
> 
>      priv = '{0}.pem'.format(base)
>      pub = '{0}.pub'.format(base)
> 
> -    gen = RSA.gen_key(keysize, 1, callback=lambda x, y, z: None)
> +    gen = RSA.gen_key(keysize, 65537, callback=lambda x, y, z: None)
>      cumask = os.umask(191)
>      gen.save_key(priv, None)
>      os.umask(cumask)
> 
> This is using the M2Crypto.RSA.
> 
> TL;DR: doing RSA crypto with a public exponent value of "1" makes crypto
> very fast. Fast is not always good.
> 
> Can we get a CVE for this please?

Duplicate CVE request, with wrong rationale this time (hilarious, though)?

http://www.openwall.com/lists/oss-security/2013/07/01/1
https://github.com/saltstack/salt/commit/5dd304276ba5745ec21fc1e6686a0b28da29e6fc
http://stackoverflow.com/questions/17490282/why-is-this-commit-that-sets-the-rsa-public-exponent-to-1-problematic
https://news.ycombinator.com/item?id=5993959

Alexander
