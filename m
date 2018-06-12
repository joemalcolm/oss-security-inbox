X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Tuesday" "12" "June" "2018" "14:11:34" "-0700" "Anthony Baker" "abaker@pivotal.io" "<CAEwge-EDm10LZzjbz0wqWEHzOO03L_VMY7uEc66eRHj3TNTvFA@mail.gmail.com>" "24" "[oss-security] [SECURITY] CVE-2017-15695 Apache Geode remote code execution vulnerability" nil nil nil "6" "2018061221:11:34" "[oss-security] [SECURITY] CVE-2017-15695 Apache Geode remote code execution vulnerability" (number mark "U       abaker@pivot Jun 12   24/841   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-15695 Apache Geode remote code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11812 invoked by uid 550); 13 Jun 2018 04:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7831 invoked from network); 12 Jun 2018 21:11:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=r8eRwpAQdc6pSVsYmIIe+Gt24I1d8TCmdQgHAXNuxWY=;
        b=suIqqvSph+7GHSRFqHsVEZavJvS0o0TPl2fevvd/1wf/UiHyhjM9bjSM3an+iZTvDa
         6eR7t9XKT4lYXYjFzwV0MQQvNCWzivOEFRPA+d5R6x0Gsh6jaom1VRNRn4npaWteVFtE
         cVzoXA0qIn1cFST2xpDL8H10XJm+ScYBKkcr648RDvKmftCXPPsyJ508Qnsj8z0ZwbCx
         ommDbQXTwOMwEmxF+dTLWHfDsP1s9iSAbHv6gkLFLyj5o19Xv8Ds7iQubc+oED8UUjrB
         /7pz79NfaXbXmoozbx8qLgqavxGeYxPso/t3ssOCO0d/U6d6CUq6uu31Ukto/yVUHjVD
         ky4g==
X-Gm-Message-State: APt69E0/XsPIqm9L3LS28JQ4tFhTYnfpdxztx3g/SGVZijTLfeVx1H4z
	2EHtRlPqZnYTBLebwW8IRA4P/A5kvcFbpTDbx4gA4ZYtyIxvVVj6fnEUbduZjOQC1gLZlsvYuK+
	hH052G/vUk/MCQn8wd8jVFSQimYE4tRD4Tm85B+DU3YVTl91f7ELw+aB09FBXJF2J23Bxvg==
X-Received: by 2002:a1f:8a09:: with SMTP id m9-v6mr1390168vkd.9.1528837895795;
        Tue, 12 Jun 2018 14:11:35 -0700 (PDT)
X-Google-Smtp-Source: ADUXVKI4NcyvyCwy/BDicjeIHygoQjQrYjMd6X+NC1k5e9Fs6fVw2gknIjkvXyicyjJdKZq2x8GF6NnQJYUWSy8U8Rw=
X-Received: by 2002:a1f:8a09:: with SMTP id m9-v6mr1390160vkd.9.1528837895532;
 Tue, 12 Jun 2018 14:11:35 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Baker <abaker@pivotal.io>
Date: Tue, 12 Jun 2018 14:11:34 -0700
Message-ID: <CAEwge-EDm10LZzjbz0wqWEHzOO03L_VMY7uEc66eRHj3TNTvFA@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org,
        asf-security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2018-06-12_13:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1805220000
 definitions=main-1806120234
Subject: [oss-security] [SECURITY] CVE-2017-15695 Apache Geode remote code execution vulnerability

CVE-2017-15695 Apache Geode remote code execution vulnerability

Severity:  Important

Vendor: The Apache Software Foundation

Versions Affected:  Apache Geode 1.0.0 through 1.4.0

Description:
When a Geode server is configured with a security manager, a user with
DATA:WRITE privileges is allowed to deploy code by invoking an
internal Geode function.  This allows remote code execution.  Code
deployment should be restricted to users with DATA:MANAGE privilege.

Mitigation:
Users of the affected versions should upgrade to Apache Geode 1.5.0 or later.

Credit:
This issue was reported responsibly to the Apache Geode Security Team
by Dan Smith from Pivotal Software.

References:
[1] https://issues.apache.org/jira/browse/GEODE-3974
[2] https://cwiki.apache.org/confluence/display/GEODE/Release+Notes#ReleaseNotes-SecurityVulnerabilities
