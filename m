X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["363" "Thursday" "13" "July" "2017" "23:22:36" "+0700" "Maxim Solodovnik" "solomax666@gmail.com" "<CAJmbs8jRHuRRiZFh1r0ygbVKdiZMd_gHbxp7X8Gq-Op-D-_aaw@mail.gmail.com>" "18" "[oss-security] CVE-2017-7664 - Apache OpenMeetings - Missing XML Validation" nil nil nil "7" "2017071316:22:36" "[oss-security] CVE-2017-7664 - Apache OpenMeetings - Missing XML Validation" (number mark "U       solomax666@g Jul 13   18/363   " thread-indent "\"[oss-security] CVE-2017-7664 - Apache OpenMeetings - Missing XML Validation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5905 invoked by uid 550); 13 Jul 2017 17:06:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29975 invoked from network); 13 Jul 2017 16:22:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=n9ed/m6gFTOiswN/M3Ar3AQe6wwS0cW/UiHCPOxxJZ4=;
        b=F/kJ4qcc7Ln9YfT8BppnM4wUMFuUghpGyfSWIQBOVkX25BPKQ4OTOB6BvNEPtUIaxy
         LrztYDPJc8qVVqSwscvET8RieEk7fHyeIdd7HL3hnJzFl2rmAWvRLnfmLDDrMksCWe4X
         71kD8Zy2eoR6wz6fbcSCmju5xx+BMy5ngZptB/nWivsmuZ2jdBT66pkgTA8pRs1Y2VxY
         qfUBTLXzdWT1a+ck/0AghnA2q22ChUtLmmn3LFetSTC/Vo974sYTw74pe3r/pNMfywjp
         WtZc+LD516pDW4Qshm6aF48hkpILrmlLF96tW+B1O2erCy+E8bedyiZErPG6S6oszn+B
         eKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=n9ed/m6gFTOiswN/M3Ar3AQe6wwS0cW/UiHCPOxxJZ4=;
        b=ME5/UW0G91Mw+ZYAUYnvspOjWdjB5WNXG3lw89QNpthPvQ0Cgwg4uqc3hGi/i2EZZO
         XSNujMHgf9gxnbBrwBSxOIdnRimy4Nc6jcicUeoeZEDltwdC3eMO0ys1rx0U2Cw7pYoj
         rmvgsEuLwQC0xItjkCUKLaGQy+uj6+FUPIYJoQCpLEu5Z0qsx+YGPSP2sT42wdmgNOsB
         /5dIJeZIbjolrR8Zy9qcWKzvN7cuSMC+5dVH3i8/6p0tI8Q4RK4gzMzw1qNr5KS/yqey
         dTv3eyOguAuLg9f8CYpsUKPV6BPegnkLzjnmTP91R5wyuUbNsvuC2vnSQvh1Xbja2Lco
         P5EA==
X-Gm-Message-State: AIVw112+Hb6Zz8pRwvKvMpvPpdG8jvE+HENo7+DwrFsoR0rq9LJ4e76u
	9QKPwzpyyR/BL1beh0NPDcg9yZr1eo+heHI=
X-Received: by 10.84.224.70 with SMTP id a6mr10851540plt.6.1499962956568; Thu,
 13 Jul 2017 09:22:36 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Solodovnik <solomax666@gmail.com>
Date: Thu, 13 Jul 2017 23:22:36 +0700
Message-ID: <CAJmbs8jRHuRRiZFh1r0ygbVKdiZMd_gHbxp7X8Gq-Op-D-_aaw@mail.gmail.com>
To: Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	security@openmeetings.apache.org, 
	Joe Basirico <jbasirico@securityinnovation.com>, 
	Sharath Unni <sunni@securityinnovation.com>, 
	Dinesh Shetty <dshetty@securityinnovation.com>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-7664 - Apache OpenMeetings - Missing XML Validation

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings 3.1.0

Description: Uploaded XML documents were not correctly validated
CVE-2017-7664

The issue was fixed in 3.3.0
All users are recommended to upgrade to Apache OpenMeetings 3.3.0

Credit: This issue was identified by Security Innovation


-- 
WBR
Maxim aka solomax
