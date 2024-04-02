Received: (qmail 19745 invoked by uid 550); 2 Apr 2024 17:48:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9380 invoked from network); 2 Apr 2024 17:42:05 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Tue, 2 Apr 2024 17:41:47 -0000 (UTC)
Message-ID: <uuhg0r$3dd$1@ciao.gmane.io>
References: <r57psoo4-64q4-4nnr-qp6s-q4n32584698o@vanv.qr>
 <3561b05d-5ad0-41be-b50f-687e13d614e0@ipsumj.de>
 <uufob6$13tl$1@ciao.gmane.io>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: finding similar compromises (was Re: From xz to ibus: more
 questionable tarballs)

On 2024-04-02, Tavis Ormandy wrote:
> On 2024-04-01, HW42 wrote:
>> Hi Jan,
>>
>> great that you are looking for further problems. (Just to be clear, I'm
>> not associated with ibus in any way.)
>>
>
> Yes, agreed. In the interests of discussing things in the open after
> just complaining about embargoes... :)
>
> It occurred to me that I could grep around in an SKS dump for any keys
> that had similar options that Jia Tan used -- algorithm preferences and
> so on -- and see if any jumped out as suspicious.
>

FYI, of the 22,885,940 signature packets in my SKS dump, 1186 had the
same options as Jia's (algo, keylen, expiry, prefs).

Around 26 were made +/- a month of Jias, I checked them all manually.

Around ~11 had github accounts that matched the user id -- no obvious
malice. A few were package signing keys, but browsing the releases they
seem okay to me.

There was a cluster from Warwick students, I'm thinking they use the
same distribution as Jia? e.g, these all look similar:

    E1FE439D3D8EE51B
    5DB5A25F19EE1E29
    70A3969D7067B537
    9471FAF63F9D494D

Note: You can fetch them with something like gpg --recv-key xxx

In summary, nothing suspicious jumps out, I'm just documenting it here
to save anyone else the effort.

If I extend the search for keys generated at any time (not just close to
when Jia's key was generated), there are 1,186 matches. That's probably
too much to check manually, but I'll check the user\d+@free-email
ones this afternoon....

$ grep -cP '<\w+\d+@.*\>' matches.txt
58

I guess it's alo possible Jia just entered "5y" manually at the
--full-generate-key prompt, or doesn't use that expiration consistently.
If so, there are 26,871 matching keys to check :(

Anyway, I feel like my eyeballs did their part :)

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

