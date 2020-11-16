X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/11/16/1
Message-ID: <20201116114318.GA335292@eldamar.lan>
Date: Mon, 16 Nov 2020 12:43:18 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Buffer Overflow in raptor widely unfixed in Linux distros
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, Nov 13, 2020 at 01:33:31PM +0100, Hanno Böck wrote:
[...]
> FWIW I recently tried to fuzz raptor again with the fix applied. I
> quickly found another OOB issue
> https://bugs.librdf.org/mantis/view.php?id=650
> 
> From the bug report:
> 
> A malformed input file can lead to a segfault due to an out of bounds
> array access in raptor_xml_writer_start_element_common.
> 
> Bug happens in line 230 of raptor_xml_writer.c (current git):
> https://github.com/dajobe/raptor/blob/master/src/raptor_xml_writer.c#L230
> 
> From looking at that code it seems to me it always expects
> nspace_declarations_count to be lower than element->attribute_count,
> however this input seems to create a different situation. I made an
> attempt at a patch that throws an error in this situation (but please
> review it, I am not familiar with what this code does and should do -
> though the patch doesn't seem to introduce test failures).
> 
> (proposed patch, example file and stacktrace can be found attached to
> the bugreport)

CVE-2020-25713 was assigned for this issue.

Regards,
Salvatore
