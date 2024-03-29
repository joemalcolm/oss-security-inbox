Received: (qmail 1479 invoked by uid 550); 29 Mar 2024 19:58:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31828 invoked from network); 29 Mar 2024 19:56:06 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Fri, 29 Mar 2024 19:55:48 -0000 (UTC)
Message-ID: <uu76c4$u7g$1@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-29, Andres Freund wrote:
> Hi,
>
> After observing a few odd symptoms around liblzma (part of the xz package) on
> Debian sid installations over the last weeks (logins with ssh taking a lot of
> CPU, valgrind errors) I figured out the answer:
>

Thanks Andres, amazing work!

I have a minor procedural question for Solar though, shouldn't this
have been redirected to oss-security immediately from distros? What's
the rationale for an embargo here?

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

