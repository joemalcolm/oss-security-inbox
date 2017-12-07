X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3053" "Thursday" "7" "December" "2017" "23:53:32" "+0100" "Solar Designer" "solar@openwall.com" "<20171207225332.GA9059@openwall.com>" "70" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017120722:53:32" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        solar@openwa Dec  7   70/3053  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171207210134.GA7079@openwall.com>" ("<20171207210134.GA7079@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27918 invoked by uid 550); 7 Dec 2017 22:53:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27762 invoked from network); 7 Dec 2017 22:53:37 -0000
Message-ID: <20171207225332.GA9059@openwall.com>
References: <20171207210134.GA7079@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171207210134.GA7079@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 7 Dec 2017 23:53:32 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On Thu, Dec 07, 2017 at 10:01:34PM +0100, Solar Designer wrote:
> On Thu, Dec 07, 2017 at 06:32:11AM +0000, halfdog wrote:
> > Thus the Debian switch from gpg1 to gpg2 just introduced efforts
> > fiddling with functionality I do not need and cannot disable,
> > provides a keymanagement that cannot be configured easily to
> > protect against the threats it should mitigate (theft of key material)
> > and creating additional attack surface without any recognizable
> > benefit.
> 
> I think the benefit is being on a version upstream intends to maintain
> to a greater extent and for a longer time.  For example, when yet
> another side-channel leak was reported against GnuPG 1 & 2 recently,
> upstream officially patched it for GnuPG 2 only and said that GnuPG 1
> probably contains many other side-channel leaks anyway:
> 
> http://openwall.com/lists/oss-security/2017/07/06/8

Turns out upstream shortly released GnuPG 1.4.22 fixing this.  It's good
news, which I had missed.

Noteworthy changes in version 1.4.22 (2017-07-19)
-------------------------------------------------

 * Mitigate a flush+reload side-channel attack on RSA secret keys
   dubbed "Sliding right into disaster".  For details see
   <https://eprint.iacr.org/2017/627>.  [CVE-2017-7526]

 * Fix some minor bugs.

> Are you saying "--s2k-count" option to "gpg2" is ignored, and moreover
> that this is documented?  gnupg-2.1.23/doc/gpg.texi says (formatted):
> 
> `--s2k-count `n''
>      Specify how many times the passphrase mangling is repeated.  This
>      value may range between 1024 and 65011712 inclusive.  The default
>      is inquired from gpg-agent.  Note that not all values in the
>      1024-65011712 range are legal and if an illegal value is selected,
>      GnuPG will round up to the nearest legal value.  This option is
>      only meaningful if `--s2k-mode' is 3.

I should have looked at GnuPG 2.2.3, but its description of the above
option is the same, and it describes the corresponding option to
gpg-agent as follows:

'--s2k-count N'
     Specify the iteration count used to protect the passphrase.  This
     option can be used to override the auto-calibration done by
     default.  The auto-calibration computes a count which requires
     100ms to mangle a given passphrase.

     To view the actually used iteration count and the milliseconds
     required for an S2K operation use:

          gpg-connect-agent 'GETINFO s2k_count' /bye
          gpg-connect-agent 'GETINFO s2k_time' /bye

     To view the auto-calibrated count use:

          gpg-connect-agent 'GETINFO s2k_count_cal' /bye

Looks sane to me, and this might also answer your question:

> > PS: I do not know, how much the gpg-agent calibration under
> > increased system load reduced the KDF complexity, as I failed
> > to extract the KDF rounds value from the gpg data structures,
> > but the value seems to be at least below 70ms due to total time
> > measurements for gpg-agent (math, interprocess communication,
> > filesystem) to unlock a key on an idle system.

Alexander
