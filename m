X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2460" "Saturday" "13" "February" "2016" "08:02:59" "+0000" "halfdog" "me@halfdog.net" "<eea2203a-128e-cbfd-9647-5eeb3479fd82@halfdog.net>" "61" "Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" "^Date:" nil nil "2" "2016021308:02:59" "[oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" (number mark "        me@halfdog.n Feb 13   61/2460  " thread-indent "\"Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software\"\n") "<56BED1B0.30900@eng.utah.edu>" ("<9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>" "<56BED1B0.30900@eng.utah.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13826 invoked by uid 550); 13 Feb 2016 08:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13808 invoked from network); 13 Feb 2016 08:09:44 -0000
References: <9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>
 <56BED1B0.30900@eng.utah.edu>
Message-ID: <eea2203a-128e-cbfd-9647-5eeb3479fd82@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <56BED1B0.30900@eng.utah.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Sat, 13 Feb 2016 08:02:59 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thoughts about security of Linux distributor
 collaboration platforms, bugtrackers for opensource software
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Scotty Bauer wrote:
> I assume most severe linux bugs are going through the distros list 
> which does exactly as you describe in your mail...
> 
> http://oss-security.openwall.org/wiki/mailing-lists/distros

That is true, so the distros list can be proud to have adopted a
secure procedure already. But at least some of the issues going to be
communicated on distros list were handled in various bug tracking and
collaboration platforms up to the point, that severe security impact
is confirmed. I would guess that quite a number of issues stays in
that state for about 2-6 month before making it to distros list and
beginning of the maximum 2 weeks final embargo time.

Data communicated in the final 2 weeks is secured but I am worried
about the 6 month centralized, structured and unencrypted
communication before that, which might be not so hard to tap into.

> On 02/12/2016 10:52 PM, halfdog wrote:
>> Hello List,
>> 
>> As just written in a mail to another list, this might also be 
>> interesting for discussion here.:
>> 
>> As it would be the most natural thing for e.g. NSA, China, ... 
>> (those with capabilities to monitor large amount of network 
>> traffic) to just record all mails from large-scale Linux 
>> distribution collaboration and issue tracking systems containing 
>> the keyword "security", and as this is very cheap way to get to 
>> near-zero day material, I would assume, that this is already
>> done. This is like serving them zero days on a golden plate.
>> 
>> Hence really critical security material perhaps should not go to 
>> such platforms, e.g. Ubuntu Launchpad, or the platform should be 
>> modified to send security issues only in encrypted mails without 
>> talkative title, members without mail public key registered
>> should get only message "Bug [Number]: Info changed" including
>> the HTTPS link to the issue in the platform.
>> 
>> What do you think?
>> 
>> Does someone have a link to anyone having access to the selector 
>> lists leaked by Snowden to ask them, which of the distros are 
>> already in scope or otherwise to discard this e-mail as pure 
>> paranoia?
>> 
>> Kind regards, hd

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAla+4ysACgkQxFmThv7tq+7OMQCdGl91twyyWt1jQ/Ta5v71UMQh
37AAnRLRa8nOpBVaP6R4g6r7A7BtcSYE
=QM3G
-----END PGP SIGNATURE-----
