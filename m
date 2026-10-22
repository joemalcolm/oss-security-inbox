X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/17
Message-ID: <9e66b63e-aac0-4bb4-a77d-971e9c40fad9@u-bordeaux.fr>
Date: Thu, 22 Oct 2026 10:49:23 +0200
From: Emmanuel Fleury <emmanuel.fleury@...ordeaux.fr>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-109619: PHP 8.2–8.5 RCE via stale global state
Content-Type: text/plain; charset=utf-8



On 10/21/26 17:41, Yves-Alexis Perez wrote:
> On Wed, 2026-10-21 at 10:24 -0500, Aaron Rainbolt wrote:
>> While not yet fully confirmed, the Fediverse is reporting that the fix
>> to at least PHP 8.5.12 may be incomplete:
>> https://fedi.katze.sh/@elise/117479383739450605
> 
> @elise also sayd it seems like a *different* vulnerability:
> 
> https://fedi.katze.sh/@elise/117478655339557825

Yes, CVE-2026-109618 and CVE-2026-109619 have been found together but seems to 
be two different vulnerabilities (even if they are sharing a lot).

Here is a technical description of the bugs and the finding process:

https://calif.io/php2shell/

Regards
-- 
Emmanuel Fleury

Univ. de Bordeaux, LaBRI,   | Associate Professor,
351, Cours de la Libération | Email: emmanuel.fleury@...ordeaux.fr
33405 Talence Cedex, France | Web: http://www.labri.fr/~fleury

