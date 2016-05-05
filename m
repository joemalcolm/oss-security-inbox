X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1293" "Thursday" "5" "May" "2016" "14:21:14" "+0300" "Solar Designer" "solar@openwall.com" "<20160505112114.GA25313@openwall.com>" "33" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050511:21:14" "[oss-security] broken RSA keys" (number mark "        solar@openwa May  5   33/1293  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505130336.7557b73b@pc1>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com>" "<20160505103405.GA25044@openwall.com>" "<20160505130336.7557b73b@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11935 invoked by uid 550); 5 May 2016 11:21:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11915 invoked from network); 5 May 2016 11:21:16 -0000
Message-ID: <20160505112114.GA25313@openwall.com>
References: <20160504124248.GA15148@openwall.com> <20160504172803.GA19393@openwall.com> <CAP9m6YeT=Vo1WQ4Jqn1QV-Cp6mBQ3EwWQ5p_=Rm4P3Na3aGcGw@mail.gmail.com> <20160505103405.GA25044@openwall.com> <20160505130336.7557b73b@pc1>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160505130336.7557b73b@pc1>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 5 May 2016 14:21:14 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On Thu, May 05, 2016 at 01:03:36PM +0200, Hanno B??ck wrote:
> On Thu, 5 May 2016 13:34:05 +0300 Solar Designer <solar@openwall.com> wrote:
> > On Wed, May 04, 2016 at 09:18:26PM -0400, Stanislav Datskovskiy wrote:
> > > older versions of GPG
> > > will regard the bottom 32 bits of a modulus as the 'fingerprint',
> > > rather than performing a hash.
> > 
> > Are you sure?
> 
> https://tools.ietf.org/html/rfc4880
> 
> "V3 keys are deprecated.  They contain three weaknesses.  First, it is
> relatively easy to construct a V3 key that has the same Key ID as any
> other key because the Key ID is simply the low 64 bits of the public
> modulus."

Thanks.  I guess when I imported a PGP 2.6 key to GPG, I just did not
notice this detail, and GPG continued to use the V3 format key for me.

Also from the RFC above:

"  For a V3 key, the eight-octet Key ID consists of the low 64 bits of
   the public modulus of the RSA key.

   The fingerprint of a V3 key is formed by hashing the body (but not
   the two-octet length) of the MPIs that form the key material (public
   modulus n, followed by exponent e) with MD5.  Note that both V3 keys
   and MD5 are deprecated."

So key id was not part of the fingerprint.  That's not how I remember
it, but I'll trust the RFC over my memory.

Alexander
