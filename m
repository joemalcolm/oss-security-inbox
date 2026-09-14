X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/30
Message-ID: <37180c21-c447-4118-b8a7-dc2c222bd6db@dwheeler.com>
Date: Mon, 14 Sep 2026 14:50:21 -0400
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: oss-security@...ts.openwall.com
Subject: Re: rosbridge_library Protocol.incoming() quadratic CPU cost in JSON fallback
Content-Type: text/plain; charset=utf-8


On 9/14/26 14:00, Evgenios Gkritsis wrote:
> Hello,
>
> I am reporting an algorithmic-complexity defect in
> rosbridge_library.protocol.Protocol.incoming() in rosbridge_suite. It is
> present in the current code on the ros2 branch and was not removed by PR
> #1199.
> ...
> I plan to reference this in a research paper on algorithmic-complexity
> vulnerabilities in protocol parsers. I will not disclose publicly until a
> fix is published or 90 days have passed.

Hi, you just disclosed that information publicly. As clearly explained 
by the oss-security mailing list charter < 
https://oss-security.openwall.org/wiki/mailing-lists/oss-security >:

"The purpose of the Open Source Security (oss-security) group is to 
encourage public discussion of security flaws, concepts, and practices 
in the Open Source community... A read-only archive of the discussions 
contained on the list is available to the general public.... Any 
security issues that you post to oss-security should be either already 
public or to be made public by your posting..."

--- David A. Wheeler


