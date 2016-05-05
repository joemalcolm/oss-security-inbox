X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Thursday" "5" "May" "2016" "13:34:05" "+0300" "Solar Designer" "solar@openwall.com" "<20160505103405.GA25044@openwall.com>" "16" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050510:34:05" "[oss-security] broken RSA keys" (number mark "        solar@openwa May  5   16/660   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15467 invoked by uid 550); 5 May 2016 10:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15446 invoked from network); 5 May 2016 10:34:07 -0000
Message-ID: <20160505103405.GA25044@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com> <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 5 May 2016 13:34:05 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On Wed, May 04, 2016 at 09:18:26PM -0400, Stanislav Datskovskiy wrote:
> older versions of GPG
> will regard the bottom 32 bits of a modulus as the 'fingerprint',
> rather than performing a hash.

Are you sure?  Got an example?

I think the fingerprint was always a hash, with key id being last 32+
bits from it.  I think it is compatible with PGP 2.x's from 1990s.

Did I possibly miss some very early versions of GPG where this was not
true, transitioning from PGP 2.x to later GPG (which I did) and thus not
noticing this aspect?  (Just trying to see how your statement could
possibly be correct and consistent with my experience using PGP/GPG.)

Alexander
