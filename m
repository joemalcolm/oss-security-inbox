X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1290" "Sunday" "21" "October" "2018" "02:04:50" "+0100" "Ken Moffat" "zarniwhoop@ntlworld.com" "<20181021010450.GB4751@milliways.localdomain>" "34" "Re: [oss-security] Attempting to patch ghostscript-9.25" "^Date:" nil nil "10" "2018102101:04:50" "[oss-security] Attempting to patch ghostscript-9.25" (number mark "        zarniwhoop@n Oct 21   34/1290  " thread-indent "\"Re: [oss-security] Attempting to patch ghostscript-9.25\"\n") "<OgcnF5Js29vkskb2jEXrUQDCCyFPkPS44JdOSJ-scVB2WymKAmNWpE3qxCcY4u32snE5_lcl5VTQQQ0dyIfA-yN2N-ZGcXubRunexuQgxNQ=@protonmail.ch>" ("<20181020014701.GB3366@milliways.localdomain>" "<OgcnF5Js29vkskb2jEXrUQDCCyFPkPS44JdOSJ-scVB2WymKAmNWpE3qxCcY4u32snE5_lcl5VTQQQ0dyIfA-yN2N-ZGcXubRunexuQgxNQ=@protonmail.ch>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9412 invoked by uid 550); 21 Oct 2018 06:52:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28477 invoked from network); 21 Oct 2018 01:05:02 -0000
Message-ID: <20181021010450.GB4751@milliways.localdomain>
References: <20181020014701.GB3366@milliways.localdomain>
 <OgcnF5Js29vkskb2jEXrUQDCCyFPkPS44JdOSJ-scVB2WymKAmNWpE3qxCcY4u32snE5_lcl5VTQQQ0dyIfA-yN2N-ZGcXubRunexuQgxNQ=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
Content-Transfer-Encoding: 8bit
In-Reply-To: <OgcnF5Js29vkskb2jEXrUQDCCyFPkPS44JdOSJ-scVB2WymKAmNWpE3qxCcY4u32snE5_lcl5VTQQQ0dyIfA-yN2N-ZGcXubRunexuQgxNQ=@protonmail.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Sun, 21 Oct 2018 02:04:50 +0100
From: Ken Moffat <zarniwhoop@ntlworld.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Attempting to patch ghostscript-9.25
To: oss-security@lists.openwall.com

On Sat, Oct 20, 2018 at 11:42:20AM +0000, Jordan Glover wrote:
> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
> On Saturday, October 20, 2018 3:47 AM, Ken Moffat <zarniwhoop@ntlworld.com> wrote:
> 
> >
> > The patch is a bit big, so I've uploaded it to
> > http://www.linuxfromscratch.org/~ken/provisional/ as
> > ghostscript-9.25-security_fixes-2.patch
> >
> > 'provisional' until I find out if it protects adequately. If there
> > turn out ot be problems, I suppose I'll need to renumber later
> > versions.
> >
I've now been given an exploit, in a PDF (I was not subscribed here
until Friday, missed some of the earleir stuff).  That -2 patch fixes
it.

Tested with evince (which now loops trying to rended an empty page,
same as with the .ps exploit), so I've committed it in BLFS.  Will
take down the 'provisional' copy in a few days.

> I think the easiest way is to build on upstream git snapshot.
> All of its contents will be included in future release anyway.
> 
> Jordan

If upstream are like anywhere else, some changes get backed out or
modified so they might not be there when 9.26 is released.  OTOH,
one of the changes I ignored might stop evince looping on a
'damaged' PDF.  Swings and roundabouts.

ĸen
-- 
                        Is it about a bicycle ?
