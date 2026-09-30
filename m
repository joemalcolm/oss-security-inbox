X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/3
Message-ID: <ab4813ac-530d-4e20-8b1c-4a2e04c93417@tuwien.ac.at>
Date: Wed, 30 Sep 2026 10:41:39 +0200
From: Daniel Ziegenberg <daniel.ziegenberg@...ien.ac.at>
To: <oss-security@...ts.openwall.com>
Subject: Re: Moodle LMS 3.9.2: authenticated file-upload validation bypass (CWE-434) leading to RCE under misconfiguration
Content-Type: text/plain; charset=utf-8

Hi!

The oldest supported security release in the 4.x line is Moodle LTS 4.5 
(see https://moodledev.io/general/releases), and there are three other 
newer releases in the 5.x line. The next Moodle LTS, 5.4, will be 
released this coming week. If it's not reproducible in either of those 
two LTS versions, there will be no fix, as there are plenty of options 
for updating.

Bug fixes for security issues in 3.9.x ended on 11th December 2023. So 
this very release was already out of support by the time the bug was 
reported in 2025.

greetings,
Daniel


On 29/09/2026 09:42, Michael Straßberger wrote:
> Hello,
>
> 3.9.2 is a very old version. The latest in that minor release is from 8
> Dec 2023 (3.9.25). According to
> https://download.moodle.org/releases/security/ it does not even have
> Security Support any more.
>
> Is this Behaviour reproducible in at least Moodle 4.1.22? If not I
> don't think a CVE should be issued here, since it would only increase
> the Noise. The Influx of CVE's and advisory is high as is and I don't
> think it's beneficial to issue even more for software version that are
> way beyond EOL.
>
> On Mon, 2026-09-28 at 22:34 +0500, Muhammad Arslan Official wrote:
>> Hello,
>>
>> I am disclosing a vulnerability in Moodle LMS and requesting a CVE
>> ID, as the vendor (a registered CNA) has not assigned one after
>> coordinated disclosure, and a MITRE CNA-LR request (CAN-2026-2032565)
>> has been under review for ~3 months without response.
>>
>> Product: Moodle LMS
>> Confirmed version: 3.9.2 (other versions not yet verified)
>> Class: CWE-434 / CWE-20 - Unrestricted file upload / improper input
>> validation
>> Privilege required: authenticated, Student-level account
>> Vendor status: reported via Bugcrowd 2025-08-31, triaged P3 (2025-09-
>> 06);
>> vendor acknowledged the behaviour but has not assigned a CVE or
>> committed to a code fix.
> Kind Regards
>
> Michael
