Received: (qmail 18265 invoked by uid 550); 3 Nov 2022 16:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23796 invoked from network); 3 Nov 2022 15:37:10 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Thu, 3 Nov 2022 15:36:51 -0000 (UTC)
Message-ID: <tk0n6j$10pr$1@ciao.gmane.io>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer> <Y2K1yOB7748iGI2P@wopr>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer Overflow
 (CVE-2022-3602), X.509 Email Address Variable Length Buffer Overflow
 (CVE-2022-3786)

On 2022-11-02, Kurt H Maier wrote:
> On Wed, Nov 02, 2022 at 03:09:21PM +0100, Hanno Böck wrote:
>> FWIW it only takes a basically trivial fuzz target on the affected
>> function to find this bug with libfuzzer.
>
> I'm not sure what the value is of all this Monday-morning
> quarterbacking.

Hanno and I have contributed months of programmer time on openssl
research and produced a ton of CRITICAL/HIGH issues over the years, not
to mention nss, gnutls, etc. What you're looking at isn't Monday-morning
quarterbacking on an unrelated list - this is active prolific opensource
security researchers discussing their opensource security work on the
opensource security mailing list :)

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

