Received: (qmail 24369 invoked by uid 550); 6 Jul 2022 09:43:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12193 invoked from network); 6 Jul 2022 06:10:51 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 6 Jul 2022 06:10:32 -0000 (UTC)
Message-ID: <ta390o$qi2$1@ciao.gmane.io>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil> <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security] Denial of service
 in  GnuPG

On 2022-07-04, Jakub Wilk wrote:
> As a data point, if Mutt has pgp_auto_decode=yes ("automatically attempt 
> to decrypt traditional PGP messages") in the config, it will trigger the 
> DoS when you view the message.

Hmm - I think you don't even need auto_decode, because x-action parameters
can trigger automatic decryption in mutt.

There's an example message here: https://gitlab.com/muttmua/mutt/-/issues/405

> (And it seems that if you lose patience waiting for the message to show 
> up and press ctrl+backslash in attempt to make it quit, it will actually 
> hang forever.)
>

I think you need at least something like max-output 104857600 in
gnupg.conf if you don't want trivial DoS pranks to be possible :)

Tavis.


-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

