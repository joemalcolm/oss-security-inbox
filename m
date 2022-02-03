X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["409" "Thursday" "3" "February" "2022" "10:07:26" "-0800" "Abhishek Tiwari" "abti@apache.org" nil "16" "[oss-security] CVE-2021-36152: Apache Gobblin: Insecure TrustManager used in LDAP connections" nil nil nil "2" nil nil (number mark "U       abti@apache. Feb  3   16/409   " thread-indent "\"[oss-security] CVE-2021-36152: Apache Gobblin: Insecure TrustManager used in LDAP connections\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36152: Apache Gobblin: Insecure TrustManager used in LDAP connections" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1357 invoked by uid 550); 3 Feb 2022 18:13:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31859 invoked from network); 3 Feb 2022 18:07:51 -0000
X-Gm-Message-State: AOAM5333V89wSfr9/MMlNGHgB3Wb28wF6lvhdnX7N0ofR/h2bs11Fmj8
	Fy9qL9WUfJ9Z8fMDT5SUBoAUUaLERyLA2+FSWu0=
X-Google-Smtp-Source: ABdhPJzuZ3ePY+490+nHVju4Maf5EX+3DnC/KNMowIKtl9dNo4G4tIscCrcy4ilhNsqIa5nDUVn87MJi1vR+FUzbsx8=
X-Received: by 2002:a05:6214:240e:: with SMTP id fv14mr32230245qvb.130.1643911657540;
 Thu, 03 Feb 2022 10:07:37 -0800 (PST)
MIME-Version: 1.0
From: Abhishek Tiwari <abti@apache.org>
Date: Thu, 3 Feb 2022 10:07:26 -0800
X-Gmail-Original-Message-ID: <CAD+38UDCM==oLPK0E6pjt18GPkoyYMN9U+_hZ=1DTyQvN0JQ1g@mail.gmail.com>
Message-ID: <CAD+38UDCM==oLPK0E6pjt18GPkoyYMN9U+_hZ=1DTyQvN0JQ1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: user@gobblin.apache.org
Content-Type: multipart/alternative; boundary="00000000000063d09305d72102ba"
Subject: [oss-security] CVE-2021-36152: Apache Gobblin: Insecure TrustManager used in LDAP connections

--00000000000063d09305d72102ba
Content-Type: text/plain; charset="UTF-8"

Severity: low

Description:

Apache Gobblin trusts all certificates used for LDAP connections in
Gobblin-as-a-Service. This affects versions <= 0.15.0. Users should
update to version 0.16.0 which addresses this issue.

Credit:

Apache Gobblin would like to thank Simon Gerst for reporting this issue.

--00000000000063d09305d72102ba--
