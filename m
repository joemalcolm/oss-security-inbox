X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/12/5
Message-ID: <CAA7hUgFVptaAH5bSPu0JRrD9V2NV5TSmfJ8guioFoEQFYOWvdw@mail.gmail.com>
Date: Wed, 12 Mar 2014 11:59:14 +0100
From: Raphael Geissert <geissert@...ian.org>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com
Subject: Re: Two stack-based issues in freetype [NOT a request]
Content-Type: text/plain; charset=utf-8

Hi,

On 12 March 2014 11:49,  <cve-assign@...re.org> wrote:
>> If I understood things correctly, CVE-2014-2240 is:
>> https://savannah.nongnu.org/bugs/?41697#comment0
>> http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=0eae6eb0645264c98812f0095e0f5df4541830e6
>>
>> While CVE-2014-2241 is:
>> https://savannah.nongnu.org/bugs/?41697#comment2
>> http://git.savannah.gnu.org/cgit/freetype/freetype2.git/commit/?id=135c3faebb96f8f550bd4f318716f2e1e095a969
>
> Yes, those are the correct references for those two CVEs. We are not
> sure why "Two stack-based issues" was in the Subject line.
> CVE-2014-2241 is a reachable assertion (CWE-617) not a stack-based
> buffer overflow (CWE-121).

Mistake from my side, I later corrected it when filing the Debian bug report:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=741299

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
