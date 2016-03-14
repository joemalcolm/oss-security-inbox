X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1560" "Monday" "14" "March" "2016" "08:37:23" "+0100" "Marcus Meissner" "meissner@suse.de" "<20160314073723.GB8335@suse.de>" "48" "Re: [oss-security] CVE request" "^Date:" nil nil "3" "2016031407:37:23" "[oss-security] CVE request" (number mark "        meissner@sus Mar 14   48/1560  " thread-indent "\"Re: [oss-security] CVE request\"\n") "<CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>" ("<CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31975 invoked by uid 550); 14 Mar 2016 07:37:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31957 invoked from network); 14 Mar 2016 07:37:35 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160314073723.GB8335@suse.de>
References: <CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwRWuPyzunFn_oB+Azu+dh+TPxZap-UJL41aniG4to_neA@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 14 Mar 2016 08:37:23 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request
To: oss-security@lists.openwall.com

On Mon, Mar 14, 2016 at 11:19:29AM +0400, Loganaden Velvindron wrote:
> Hi guys,
> 
> Is there a CVE assigned to this yet ?
> 
> https://guidovranken.wordpress.com/2016/03/01/public-disclosure-malformed-private-keys-lead-to-heap-corruption-in-b2i_pvk_bio/

I brought this to the openssl team and they claim it is not a security issue.

https://www.mail-archive.com/openssl-dev@openssl.org/msg43102.html
https://www.mail-archive.com/openssl-dev@openssl.org/msg43119.html

This has been fixed in commit 5f57abe2b15 (master version, similar
commits in other branches):

commit 5f57abe2b150139b8b057313d52b1fe8f126c952
Author:     Dr. Stephen Henson <st...@openssl.org>
AuthorDate: Thu Mar 3 23:37:36 2016 +0000
Commit:     Dr. Stephen Henson <st...@openssl.org>
CommitDate: Fri Mar 4 01:20:04 2016 +0000

    Sanity check PVK file fields.

    PVK files with abnormally large length or salt fields can cause an
    integer overflow which can result in an OOB read and heap corruption.
    However this is an rarely used format and private key files do not
    normally come from untrusted sources the security implications not
    significant.

    Fix by limiting PVK length field to 100K and salt to 10K: these
should be
    more than enough to cover any files encountered in practice.

    Issue reported by Guido Vranken.

    Reviewed-by: Rich Salz <rs...@openssl.org>


As per the notes in the commit we do not see the security implications
as significant and therefore we are treating this as a bug and will not
be issuing a CVE.

Matt
-- 



Ciao, Marcus
