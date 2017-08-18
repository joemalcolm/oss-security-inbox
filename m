X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2846" "Friday" "18" "August" "2017" "12:13:23" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170818101323.GD1841@suse.de>" "104" "[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" nil nil nil "8" "2017081810:13:23" "[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" (number mark "U       meissner@sus Aug 18  104/2846  " thread-indent "\"[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs\"\n") "<20170814223948.w4j6rsznsgixhc43@jwilk.net>" ("<20170814223948.w4j6rsznsgixhc43@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11934 invoked by uid 550); 18 Aug 2017 10:13:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11913 invoked from network); 18 Aug 2017 10:13:35 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 18 Aug 2017 12:13:23 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170818101323.GD1841@suse.de>
References: <20170814223948.w4j6rsznsgixhc43@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170814223948.w4j6rsznsgixhc43@jwilk.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal +
 memory safety bugs

Hi,

I filed a generic CVE request at the Mitre CVE Webform for this E-Mail.

Ciao, Marcus
On Tue, Aug 15, 2017 at 12:39:48AM +0200, Jakub Wilk wrote:
> (I'm not sure UnRAR bugs are on-topic here. UnRAR is not free software, even
> though the source is available. But the last time UnRAR was discussed nobody
> objected, so hey, let me try too.)
> 
> I found directory traversal and a few memory safety bugs in UnRAR 5.5.6.
> These bugs have been fixed in UnRAR 5.5.7.
> 
> The memory safety bugs were found using American Fuzzy Lop.
> 
> Here are details of the bugs:
> 
> * Directory traversal
> 
> The PoC (traversal.rar) contains two symlinks and a regular file:
> 
>   cur -> .
>   cur/par -> ..
>   par/moo
> 
> This setup defeats UnRAR's directory traversal protections:
> 
>   $ ls ../moo
>   /bin/ls: cannot access '../moo': No such file or directory
> 
>   $ unrar x traversal.rar
>   ...
>   Extracting  cur                                                       OK
>   Extracting  cur/par                                                   OK
>   Extracting  par/moo                                                   OK
>   All OK
> 
>   $ ls ../moo
>   ../moo
> 
> The code that was used to generate the PoC is available here:
> https://github.com/jwilk/path-traversal-samples
> 
> 
> * Out-of-bounds read in Archive::ReadHeader15 / EncodeFileName::Decode
> 
> The Archive::ReadHeader15 method contains the following code (with boring
> parts omitted):
> 
>   size_t NameSize=Raw.Get2();
>   // ...
>   char FileName[NM*4];
>   size_t ReadNameSize=Min(NameSize,ASIZE(FileName)-1);
>   Raw.GetB((byte *)FileName,ReadNameSize);
>   FileName[ReadNameSize]=0;
> 
>   if (FileBlock)
>   {
>     if ((hd->Flags & LHD_UNICODE)!=0)
>     {
>       EncodeFileName NameCoder;
>       size_t Length=strlen(FileName);
>       Length++;
>       NameCoder.Decode(FileName,(byte *)FileName+Length,
>                        NameSize-Length,hd->FileName,
>                        ASIZE(hd->FileName));
>   // ...
> 
> If NameSize is bigger than NM*4, this can make EncodeFileName::Decode read
> past the bounds of the FileName array.
> 
> PoC: oob-archive-readheader15.rar
> 
> 
> * Out-of-bounds reads in Unpack::Unpack20
> 
> This method contains:
> 
>     int DistNumber=DecodeNumber(Inp,&BlockTables.DD);
>     unsigned int Distance=DDecode[DistNumber]+1;
> 
> The array size is 48; but for the PoC (oob-unpack-unpack20.rar), DistNumber
> is 58.
> 
> 
> * Buffer overflow in Unpack::LongLZ
> 
> This method contains:
> 
>   ChSetB[DistancePlace]=ChSetB[NewDistancePlace];
> 
> The array size is 256; but for the PoC (oob-unpack-longlz.rar),
> DistancePlace is 256.
> 
> -- 
> Jakub Wilk






-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
