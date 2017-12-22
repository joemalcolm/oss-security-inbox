X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3706" "Friday" "22" "December" "2017" "20:52:52" "+0100" "Solar Designer" "solar@openwall.com" "<20171222195252.GA6497@openwall.com>" "72" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017122219:52:52" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        solar@openwa Dec 22   72/3706  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<2172-1513501568.968862@pLoG.Le7g.f3CQ>" ("<20171207210134.GA7079@openwall.com>" "<2172-1513501568.968862@pLoG.Le7g.f3CQ>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13866 invoked by uid 550); 22 Dec 2017 19:53:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13711 invoked from network); 22 Dec 2017 19:52:57 -0000
Message-ID: <20171222195252.GA6497@openwall.com>
References: <20171207210134.GA7079@openwall.com> <2172-1513501568.968862@pLoG.Le7g.f3CQ>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2172-1513501568.968862@pLoG.Le7g.f3CQ>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 22 Dec 2017 20:52:52 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On Sun, Dec 17, 2017 at 09:06:08AM +0000, halfdog wrote:
> Solar Designer writes:
> > Are you saying "--s2k-count" option to "gpg2" is ignored, and moreover
> > that this is documented?  gnupg-2.1.23/doc/gpg.texi says (formatted):
> > 
> > `--s2k-count `n''
> >      Specify how many times the passphrase mangling is repeated.  This
> >      value may range between 1024 and 65011712 inclusive.  The default
> >      is inquired from gpg-agent.  Note that not all values in the
> >      1024-65011712 range are legal and if an illegal value is selected,
> >      GnuPG will round up to the nearest legal value.  This option is
> >      only meaningful if `--s2k-mode' is 3.
> 
> Here is the gpgv2 documentation:
> 
> "     --s2k-count n
>               Specify how many times the passphrases  mangling  for  symmetric
>               encryption  is  repeated.  This value may range between 1024 and
>               65011712 inclusive.  The default  is  inquired  from  gpg-agent.
>               Note  that  not  all values in the 1024-65011712 range are legal
>               and if an illegal value is selected, GnuPG will round up to  the
>               nearest  legal  value.  This option is only meaningful if --s2k-
>               mode is set to the default of 3."

It's actually the same documentation - just a different place in it,
which I didn't notice until you pointed it out.  So this option is
documented differently in different places in the documentation.  Some
of those refer to different ones of the tools, but others might be just
repeats of what's supposed to be the same info yet is not?  Confusing.

> You noticed the additional "symmetric" word? According to GPG
> developer that means, that with gpgv2 this setting is only applied
> with symmetric schemes, e.g. the "--symmetric" mode of GPG. For
> assymetric mode the parameter is just ignored.

Weird.  Was this discussion with "GPG developer" anywhere public?

Did you test this yourself?  You don't need to determine the exact
s2k-count to see if the option has effect or not - you can instead set
the value to the highest supported and measure whether this increases
the delay compared to the default.

I think this description is ambiguous: "symmetric" might refer only to
cases when GnuPG as a whole is invoked for symmetric encryption, or it
might also include cases when GnuPG symmetrically en/decrypts its keys.

> > You may process the private key file with gpg2john, then try to crack it
> > with john.  This will output the actual value, as well as show you the
> > speed at which passphrases can be tested against that key on your system
> > and with that version of JtR.  To use a GPU, add "--format=gpg-opencl".
> > Please use latest bleeding-jumbo off GitHub for all of this.
> 
> Done that, but still fighting how to use "gpg2john" with the new
> gpgv2 "private-keys-v1.d" key format. Exporting the private keys
> using gpgv2 does not help as that requires the passphrase already,
> thus removing the gpgv2-encryption, we want to test.

I tried asking a JtR jumbo contributor to look into this, but
unfortunately I got no response yet, and I had no time to look into it
myself.  This is something we ought to have an answer to, but I
currently don't.

> Just FYI: your releases on Openwall are still signed with the old
> openwall-key, according to http://www.openwall.com/signatures/ the
> key is "Old Openwall offline signing key (no longer used)".

Sure.  Releases made prior to the switch to the new key are signed with
the old key.  The "no longer used" comment applies to new signatures.
Maybe we need to clarify that or/and re-sign some releases from prior to
the key switch with the new key.

Alexander
