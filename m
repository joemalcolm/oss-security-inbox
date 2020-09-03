X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Thursday" "3" "September" "2020" "20:13:34" "+0530" "Pramod Rana" "varchashva@gmail.com" "<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "43" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Date:" nil nil "9" "2020090314:43:34" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "        varchashva@g Sep  3   43/1627  " thread-indent "\"[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3756 invoked by uid 550); 3 Sep 2020 14:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1809 invoked from network); 3 Sep 2020 14:43:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=IqqeKqeFxmWBr9D17/8nErSKAi3Ng1dhXc95zQ9jzOU=;
        b=TqzcaW/+WwUFAYeN+3Jq/Aqvc2Jm32GY59a1dErZqqc93s9oiYFXdVpZkZ6e5orMnK
         XitOK6FKmeHG5ZN/k+KuA/RvPPqtu6Avobdf/DsIHZxqNT9BmUGxfnBi8h3Op9xgUUy0
         xNfN03g44n5PnlEXtXQJCXLiifanITCeHNlLof78Kr1AJgOsy3PUIvu1ph3PhMJWbGVe
         Z5C9MULKqkKYRIz2CbOVOEN21ObsBhN/r343LgxaU0iUU10aF90Su1T8A0GV3UgiyLTe
         rmTO1vFqLH49WYvfBEDFrBfEpGPLErg8MwcgzVRrGUVFO9DidN0xjE9x3xtAl2zUaNBL
         fDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IqqeKqeFxmWBr9D17/8nErSKAi3Ng1dhXc95zQ9jzOU=;
        b=iK9w+YMQMIF9AVHriVaRrrEkJ8Q4maHdECIynK4YZVTBFSUADRjoUc21Mlu1usf/tm
         pZ44YbEskqw6sOYjg4FK3ayaslR5Y368nAk+jWRthG/GkDxHmqc9/fAqwEAaUz7LgZH6
         rzS1U54kMAoMfa06BgK4lAmKzyLYuzkq2ls4sfph9bavpFv38kLuoqgUn0wLmaztadcp
         NAJgA4zKU8ROgeDpIavRTdQQ97HvGEEjwRGiQuMIVFrvKXTnfZ+v8RQrSF8oA73GbWdD
         aqhRfDc4I9Q6peWV1O+BtNDEnw7o9NgEqfB7MQxSNxEeQbFjeN1Eb29YydbDrOQmS3Vm
         zmiA==
X-Gm-Message-State: AOAM533tYHrXmZaH8BMmwMyJXynIC6E4u2e30dz42Mu8pUtz3fwVxhsa
	XeY4llpAjJgebeDRFQcli3aaKWiZfZqITCdMYaOpcSMxJA==
X-Google-Smtp-Source: ABdhPJyrSr+SBQcaQAiESgWnqeH4WcFWp7MvF2ZVrAba263COm44J7xLsky0VbsLWYCRt7P5D/PyKR/TDYO1yk45NLg=
X-Received: by 2002:a63:2d83:: with SMTP id t125mr3227414pgt.441.1599144225265;
 Thu, 03 Sep 2020 07:43:45 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007ddb7b05ae69c7dd"
Date: Thu, 3 Sep 2020 20:13:34 +0530
From: Pramod Rana <varchashva@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework
To: oss-security@lists.openwall.com

--0000000000007ddb7b05ae69c7dd
Content-Type: text/plain; charset="UTF-8"

It is no secret that today we have more vulnerabilities than we can assess
and remediate, timely and comprehensively. Risk prioritization is a key
component for any vulnerability management program. Implementing a good
risk prioritization framework is easier said than done because of the
variable nature of risk.

I am glad to introduce vPrioritizer, a small step towards effective risk
prioritization. vPrioritizer enables us to understand the contextualized
risk (vPRisk) on asset-vulnerability relationship level across the
organization, for teams to make more informed decision about what
(vulnerability/ties) they should remediate (or can afford not to) and on
which (asset/s).


To overcome above challenges, vPrioritizer is designed with primary
objectives as below:

   -

   *Centralized* - must serve as single-pane-of-glass for vulnerability
   management
   -

   *Automated* - any and every task which can be automated, must be
   automated
   -

   *Community Analytics *- utilization of community analytics to mature the
   prioritization algorithm over the period of time




*References: 1. GitHub: https://github.com/varchashva/vPrioritizer
<https://github.com/varchashva/vPrioritizer> 2. For more details:
https://medium.com/@rana.miet/learn-to-say-no-to-almost-every-vulnerability-intro-to-vprioritizer-9b2aa15369a1
<https://medium.com/@rana.miet/learn-to-say-no-to-almost-every-vulnerability-intro-to-vprioritizer-9b2aa15369a1>3.
Demo: https://youtu.be/P9IDpfJDoxI <https://youtu.be/P9IDpfJDoxI>*

--0000000000007ddb7b05ae69c7dd--
