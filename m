X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/26/6
Message-ID: <20160126170245.GA2314@eldamar.local>
Date: Tue, 26 Jan 2016 18:02:45 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function
Content-Type: text/plain; charset=utf-8

Hi,

On Mon, Jan 25, 2016 at 08:01:08AM +0000, limingxing wrote:
> 
> 
> Hello,
> We find a vulnerability in the way libxml2's htmlParseNameComplex() function parsed certain xml file.
> I was successful in reproducing this issuel in the latest version of libxml2(git clone git://git.gnome.org/libxml2).
> HTMLparser.c line:2517 :
> 
>        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> 
> "ctxt->input->cur - len"  cause Out-of-bounds Read.

While checking upstream bugzilla to see if that was reported I noticed

https://bugzilla.gnome.org/show_bug.cgi?id=749115

Does this have the same root cause?

Regards,
Salvatore
