X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["549" "Wednesday" "8" "June" "2016" "21:52:51" "+0200" "Roman Drahtmueller" "draht@schaltsekun.de" "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>" "22" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060819:52:51" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        draht@schalt Jun  8   22/549   " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<20160608153856.GH3711@suse.de>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "<20160608153856.GH3711@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3862 invoked by uid 550); 8 Jun 2016 19:53:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3837 invoked from network); 8 Jun 2016 19:53:14 -0000
In-Reply-To: <20160608153856.GH3711@suse.de>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com> <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com> <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com> <20160608153856.GH3711@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
Message-ID: <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
Date: Wed, 08 Jun 2016 21:52:51 +0200
From: Roman Drahtmueller <draht@schaltsekun.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations
To: oss-security@lists.openwall.com,Marcus Meissner <meissner@suse.de>

Hi Marcus,

> Hi,
> 
> the openssl team usually announces those LOW issues together with the
> other
> issues during their semi regular advisories.
> 
> (And usually as soon as these LOW CVE issues are getting added to git,
> a
> new advisory is not far away.)
> 

The only low part here appears to be the number of samples needed for a full recovery. 
Are we sure that a "low" rating is justified?
DSA is basically dead, until the constant time switch is flicked. The only countermeasure so far is turning it off. 

Thx,
Roman.

-- 
schaltsekun.de
