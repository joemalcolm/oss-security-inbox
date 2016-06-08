X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["541" "Wednesday" "8" "June" "2016" "22:10:03" "+0200" "Roman Drahtmueller" "draht@schaltsekun.de" "<7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>" "16" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060820:10:03" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        draht@schalt Jun  8   16/541   " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "<20160608153856.GH3711@suse.de>" "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21891 invoked by uid 550); 8 Jun 2016 20:10:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21871 invoked from network); 8 Jun 2016 20:10:26 -0000
In-Reply-To: <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com> <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com> <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com> <20160608153856.GH3711@suse.de> <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
Message-ID: <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>
Date: Wed, 08 Jun 2016 22:10:03 +0200
From: Roman Drahtmueller <draht@schaltsekun.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations
To: oss-security@lists.openwall.com,Marcus Meissner <meissner@suse.de>


> Are we sure that a "low" rating is justified?
> DSA is basically dead, until the constant time switch is flicked. The
> only countermeasure so far is turning it off. 

Maybe I should be a little more verbose on this:
1) attacker recovers the DSA host key. 
2) attacker mitm-attacks client connections to the server and recovers the user's private key by exploiting the vulnerable openssl on the client side 
3) ...

The same principles apply when the computational burden is reversed for client auth, aren't they?

R.

-- 
schaltsekun.de
