Received: (qmail 29796 invoked by uid 550); 14 Feb 2023 16:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31810 invoked from network); 14 Feb 2023 04:47:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V8JcywRKyG6LRz/xi9T0fIJK5atLzSo9drYw5lgaiSw=;
        b=SPI+NqP9MW2M+O/EaiezTNNvVVCN1LYX8XzcDc/c3mFm3dsvDeJaaL5WWOFLP+kKCd
         u4r022yAu+hteCGTI2FgqGkGgONCYtPceXxKbItnqLJmHPl/gIZ95v/C7FhZw1W5RMXV
         aewhVMdgLJ4oEL4XNH2HsQSwFMJBBk1KUbca3MHaZqOB7haJrj/htEAT2Xk+2oYJxBey
         gdu3WV2zbA1cTWV6mRBfve5m583UDmAitW+KHZcD3mS1wi4LhxEO0q0ursz8nWd2UBOV
         z8LiHmo1e75/J0CPmwomYkIdpwFTvl7czMA5ZLA4ebxoLAPrKOl+wPEM7iu4H4QVTePU
         DJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V8JcywRKyG6LRz/xi9T0fIJK5atLzSo9drYw5lgaiSw=;
        b=NStco9pfi6yadws3utLosGS+fCimeVlWX/NAX71fZPImH+dwBofgo1zfzxAfGv2VTZ
         EgwO7cVzwB7P4ShcoxdfYvsbw/xwWZwGL6ZNBfh7Jg93lEmcATRxE1c4uNjDtSQsPX6H
         MHe5iojpeJwRR/sdH8IiMmbCdbnAXYLhJhXa+Gd/bNKdQp4BhLqCM6tBOmg1/1LoAU0M
         5UOaf1hoDvFArlnph3PW/mGTLgc/6aYE9KoLrFXH0Hq3WnWwpx/xNG/yfflrHhiA5iiY
         hc/VpZYm2bHX6fAosvL1xBV8p8uVmM3l+06LSU52KhTRG3ui54mS69bhIw5z+538P25G
         Bxug==
X-Gm-Message-State: AO0yUKWNGGtS3BpNMFWuHxV4wv0ZIra3X2oq21UmcTsor97b2BIsZHH6
	GdpzPZzS2s/9MkgDJ4Y3d3HLY5d4FdM=
X-Google-Smtp-Source: AK7set9TX9TBY+vT9r717B/5SgJRUoJcds5ocSQF5dTL6t2g86gU89wgCI39e0RIqSplhL0Mt4yGTQ==
X-Received: by 2002:a05:6214:da7:b0:56c:2348:549c with SMTP id h7-20020a0562140da700b0056c2348549cmr3280336qvh.29.1676350059642;
        Mon, 13 Feb 2023 20:47:39 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------0EftPHsRthdomklaJFQrWjta"
Message-ID: <8820f35d-5786-d799-b6c0-8800f148829b@gmail.com>
Date: Mon, 13 Feb 2023 23:47:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.7.2
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Dave Wallace <dwallacelf@gmail.com>
Subject: [oss-security] CVE-2022-46397: FD.io VPP (Vector Packet Processor) IPSec generates a
 predictable IV with AES-CBC mode

--------------0EftPHsRthdomklaJFQrWjta
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Folks,

A vulnerability in the VPP IPSec plugin was identified by Benoit Ganne 
who has also provided a fix that has been committed to master and 
cherry-picked to all affected VPP Release branches.


Here is the Security Advisory report for CVE-2022-46397 [0]:

Description:
FP.io VPP (Vector Packet Processor) 22.10, 22.06, 22.02, 21.10, 21.06, 
21.01, 20.09, 20.05, 20.01, 19.08, and 19.04 Generates a Predictable IV 
with CBC Mode.

Vulnerability Type Other:
CWE-329: Generation of Predictable IV with CBC Mode

Severity:
Moderate

Vendor of Product:
https://fd.io

Affected Product Code Base:
vpp - v22.10, v22.06, v22.02, v21.10, v21.06, v21.01, v20.09, v20.05, 
v20.01, v19.08, v19.04

Credit:
This issue was reported by Benoit Ganne of Cisco Systems, Inc per the 
FD.io Security Policy [1].

Resolution:
The fix for the vulnerability was committed to the VPP repository's main 
development branch and cherry-picked to all affected release branches on 
2023-02-07. See FD.io VPP Jira ticket VPP-2037 [2] for details.

Maintenance releases were performed on 2023-02-10 for the currently 
supported releases (VPP 22.06, VPP 22.10) and release artifacts for VPP 
22.06.1 and VPP 22.10.1 uploaded to the FD.io packagecloud.io release 
repository [3].  All release branches prior to 2206 are UNSUPPORTED and 
will NOT undergo maintenance releases.  Packages for each VPP release 
version prior to VPP-22.06.1 SHOULD NOT BE INSTALLED from 
https://packagecloud.io/fdio/release, but should be built from the 
latest source code in the release branch.

Reference:
[0] https://www.cve.org/CVERecord?id=CVE-2022-46397
[1] https://wiki.fd.io/view/TSC:Vulnerability_Management
[2] https://jira.fd.io/browse/VPP-2037
[3] https://packagecloud.io/fdio/release


Thanks,
FD.io Security Response Team
--------------0EftPHsRthdomklaJFQrWjta--
