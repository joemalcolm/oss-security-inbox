X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/19/3
Message-ID: <15a64f1f-91db-4b15-9394-a61b7a88132b@inliniac.net>
Date: Sat, 19 Sep 2026 08:18:45 +0200
From: Victor Julien <lists@...iniac.net>
To: oss-security@...ts.openwall.com
Subject: Re: Suricata 8.0.7 released with 67 vulnerabilities fixed
Content-Type: text/plain; charset=utf-8

Thanks for sharing this. I'm leading the Suricata project and I'm a long 
time list lurker here. Happy to post these announcements to the list 
myself if this would be appreciated.

Cheers,
Victor

On 9/19/26 02:58, Alan Coopersmith wrote:
> https://forum.suricata.io/t/suricata-8-0-7-released/6467 states:
>> We are pleased to announce the release of Suricata 8.0.7.
>>
>> This is a security release, fixing a number of important issues. This 
>> is the
>> release with the highest number of vulnerability reports we’ve had so 
>> far,
>> as a result of the rise of AI(-assisted) analysis, resulting in a much
>> higher-than-usual number of issues.
>>
>> Get the release here:
>>     https://www.openinfosecfoundation.org/download/suricata-8.0.7.tar.gz
>>
>> Notable Changes
>> ---------------
>>
>> Various security, performance, accuracy, and stability issues have 
>> been fixed.
>>
>> All tickets for 8.0.7: https://redmine.openinfosecfoundation.org/ 
>> versions/236
>>
>> (note that private Suricata tickets will be opened to the public 2 
>> weeks after the release)
>>
>> CVE IDs Addressed:
>> ------------------
>> CVE             Severity (OISF) Severity (CVSS 3.1)     Tickets
>> Pending         MODERATE        MODERATE                9013
>> Pending         HIGH            HIGH                    9009
>> Pending         LOW             LOW                     9005
>> Pending         CRITICAL        CRITICAL                9004
>> Pending         HIGH            MODERATE                9002
>> Pending         HIGH            HIGH                    9000
>> Pending         HIGH            HIGH                    8998
>> Pending         LOW             LOW                     8989
>> Pending         MODERATE        MODERATE                8988
>> Pending         LOW             LOW                     8987
>> Pending         LOW             LOW                     8986
>> Pending         LOW             LOW                     8985
>> Pending         LOW             MODERATE                8984
>> Pending         MODERATE        MODERATE                8983
>> Pending         LOW             LOW                     8982
>> Pending         LOW             LOW                     8981
>> Pending         LOW             MODERATE                8977
>> Pending         CRITICAL        CRITICAL                8974
>> Pending         MODERATE        MODERATE                8972
>> Pending         MODERATE        LOW                     8971
>> Pending         LOW             LOW                     8965
>> Pending         LOW             LOW                     8963
>> Pending         HIGH            HIGH                    8957
>> Pending         LOW             LOW                     8950
>> Pending         MODERATE        MODERATE                8947
>> Pending         MODERATE        MODERATE                8946
>> Pending         HIGH            HIGH                    8945
>> Pending         HIGH            MODERATE                8941
>> Pending         LOW             MODERATE                8938
>> Pending         MODERATE        MODERATE                8937
>> Pending         HIGH            LOW                     8933
>> Pending         LOW             MODERATE                8932
>> Pending         HIGH            MODERATE                8931
>> Pending         HIGH            LOW                     8930
>> Pending         LOW             MODERATE                8927
>> Pending         HIGH            LOW                     8925
>> Pending         LOW             LOW                     8924
>> Pending         MODERATE        MODERATE                8922
>> Pending         MODERATE        MODERATE                8921
>> Pending         MODERATE        MODERATE                8920
>> Pending         MODERATE        MODERATE                8913
>> Pending         LOW             MODERATE                8910
>> Pending         MODERATE        MODERATE                8909
>> Pending         HIGH            LOW                     8906
>> Pending         HIGH            MODERATE                8898
>> Pending         LOW             LOW                     8883
>> Pending         MODERATE        LOW                     8881
>> Pending         HIGH            MODERATE                8877
>> Pending         MODERATE        MODERATE                8875
>> Pending         LOW             MODERATE                8872
>> Pending         HIGH            MODERATE                8871
>> Pending         HIGH            MODERATE                8870
>> Pending         MODERATE        MODERATE                8810
>> Pending         HIGH            MODERATE                8808
>> Pending         HIGH            LOW                     8806
>> Pending         HIGH            HIGH                    8801
>> Pending         HIGH            HIGH                    8794
>> Pending         MODERATE        HIGH                    8792
>> Pending         MODERATE        HIGH                    8790
>> Pending         MODERATE        MODERATE                8788
>> Pending         LOW             MODERATE                8769
>> Pending         MODERATE        HIGH                    8758
>> Pending         HIGH            HIGH                    8756
>> Pending         LOW             LOW                     8751
>> Pending         HIGH            HIGH                    8746
>> Pending         LOW             LOW                     8732
>> Pending         HIGH            MODERATE                8677
>>
>> Severity scores defined by OISF and CVSS may vary due to how we assess 
>> and
>> evaluate impact. While CVSS has a more generic view on vulnerabilities 
>> and
>> will penalize any network-related issues, for instance, OISF considers
>> Suricata context as the baseline (thus, as example, affecting the network
>> isn’t taken into account).
>>
>> Suricata Security Policies: https://github.com/OISF/suricata/security/ 
>> policy
>>
>> Suricata Security Advisories: https://github.com/OISF/suricata/ 
>> security/advisories
>>
>> Security Issues
>> ---------------
>>
>> Note that we have refined our severities sometime back. CRITICAL 
>> severity is
>> reserved for issues affecting Tier 1 features enabled by default, 
>> involving
>> remotely triggerable traffic-based code execution. HIGH severity also 
>> covers
>> Tier 1 features enabled by default, where there’s possible loss of 
>> visibility
>> or availability.
>>
>> If you think you’ve encountered a security vulnerability, please see
>> https://github.com/OISF/suricata/security/policy#reporting-issues
>>
>> Suricata 7 is End of Life
>> -------------------------
>>
>> Suricata 7 has reached EOL with the last Suricata 7.0.17. Please upgrade
>> your setups to the latest supported version in the Suricata 8 branch.
>>
>> With Suricata 7 EOL, the LibHTP project is also end-of-life now, and the
>> repository has been archived: https://github.com/OISF/libhtp? 
>> tab=readme-ov-file
>>
>> Special Thanks
>> --------------
>>
>> For contributing patches, reporting vulnerabilities and bugs, or 
>> otherwise
>> helping keep Suricata code secure, we appreciate:
>>
>> Aaron Chen, Ada Logics in collaboration with Anthropic Research,
>> Adam Kiripolsky, Alexander Stadnikov, Luukas Larinkoski,
>> Nozomi Networks Labs Advisory, Antoine Abou Faysal, Andreas Dolp, 
>> aramosf,
>> Arthur Chan, Binbin Xu of Tencent YUNDING LAB CodeBuddy Security,
>> Bin Luo (University of Electronic Science and Technology of China 
>> (UESTC)),
>> Communications Security Establishment Canada (CSE), Denis Balashov, 
>> z00xcv,
>> Feng Xue,
>> Kevin Valerio and Quan Nguyen from Trail of Bits in collaboration with 
>> OpenAI,
>> Lucas Ariel Sotomayor, Maksim Hayder, Kuniyoshi Noguchi (野口晋義), 
>> Riyan Dhiman,
>> Stephen Donnelly, Urval Kheni, Yash Datre, Yazan Balawneh, OSS-Fuzz, 
>> Coverity.
>>
>> About Suricata
>>
>> Suricata is a high-performance Network Threat Detection, IDS, IPS, and 
>> Network
>> Security Monitoring engine. Open-source and owned by a community-run 
>> non-profit
>> foundation, the Open Information Security Foundation (OISF). Suricata is
>> developed by OISF, its supporting vendors, and the community.


-- 
----------------------------------------------
Victor Julien
https://www.inliniac.net/
PGP: https://www.inliniac.net/victorjulien.asc
----------------------------------------------

