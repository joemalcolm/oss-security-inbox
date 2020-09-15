X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1031" "Tuesday" "15" "September" "2020" "09:37:34" "-0700" "William Barrett" "will@preset.io" "<6a34e3be-2417-4f99-a36f-fbfaaef07458@Spark>" "24" "[oss-security] [CVE-2020-13948] Apache Superset Remote Code Execution Vulnerability" nil nil nil "9" "2020091516:37:34" "[oss-security] [CVE-2020-13948] Apache Superset Remote Code Execution Vulnerability" (number mark "U       will@preset. Sep 15   24/1031  " thread-indent "\"[oss-security] [CVE-2020-13948] Apache Superset Remote Code Execution Vulnerability\"\n") "<2a1a85d6-910e-43aa-93d5-68152a6a02bf@Spark>" ("<2a1a85d6-910e-43aa-93d5-68152a6a02bf@Spark>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13948] Apache Superset Remote Code Execution Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19583 invoked by uid 550); 15 Sep 2020 18:25:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11373 invoked from network); 15 Sep 2020 16:37:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=preset-io.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:references:subject:mime-version;
        bh=5xFQZDCvEAPfgPxogY6Y2Vh0i6FJ3f+jmzKHpuVhtNQ=;
        b=KR0++KyT1WzzJ7eXhGLKhR+jaVCYfwyzefjNWnaOyLwtqCGhVVmzXcE5j2w4Dx/hB8
         4KN/S9WkWS6NCmuK0GAzO3bVij7lSowBzRLCPWqIf3Xla5pk88i06g8+l5NGyY5THWTE
         ZtZuWW58ITqd1VWH6WAielMSmKLC399z0GIDmcM1yC5B0Kqg57/M9KyAguAOZVeDrxmZ
         bV/898m8eB4wA+9VDsj8yvejZ0L2xjnLMtIgOcVifSIc+FCduAVbCUV//yGu2h4PSgQR
         eZUiw9gPtIRFjsGfsv0vCf/l/BtrdMFQU0kVyRgJOAhq7ZrLr5s0hESPNRzKAy0KJLfd
         wqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:references:subject
         :mime-version;
        bh=5xFQZDCvEAPfgPxogY6Y2Vh0i6FJ3f+jmzKHpuVhtNQ=;
        b=BEEpFr700Q9Finvjdn6ZTsHsMjvJKJ7j5y2BL4lyzyP+oRGmBoBTW81YeyIgJPIT5v
         MmW82tlA3W3Ml7dXANVpRXDb3fhb49ytpyl+XKQSZaGyzEvMn57Mup3Buot0/gHmVe5E
         2QPPYFbgjh3mhT7IQL9RGLUiSuQxLdwYT+mr6LCCq1IMxKtm2S4oiQCIIItlgWeoWrf7
         1K68M7Xom/cg5AwBoG2xZM0agrBN7zzGTqg5+nbxvfl885ZRXsnS9bos8NsNJxUYbg4z
         gBhDIdRkVmPMMI149Xois30wnielFNGwWH8aJ444Xvyt34Iw6tzDut+zxmGEDrc7IX0l
         FRyw==
X-Gm-Message-State: AOAM532XU5O3oN1NdgPvuh7S4gfQYZPhLReCXQk+Y8ICUaP+cE2KT9pN
	9+P6oOACCBfCE/MjlM7m6rFKLNmjYRL1vV6ix0gJH+CJBe2qoxt90rReDqRCOhcNU1QNe9upHfY
	VbwM9q2gUfQFB0Pwoqagd4+bKDLjWk5nwY7KaC60jkORSqXS0lq9rYcuuEwHQKiE9brmS5kM8Px
	1i
X-Google-Smtp-Source: ABdhPJzEVrDlL6VtLNwF2vayQVUghrC8sSSbrInA1OBu26hMJK7YIlbMu1zekltCz5o5mFwszWEbUQ==
X-Received: by 2002:aca:bd8a:: with SMTP id n132mr205672oif.100.1600187861648;
        Tue, 15 Sep 2020 09:37:41 -0700 (PDT)
Date: Tue, 15 Sep 2020 09:37:34 -0700
From: William Barrett <will@preset.io>
To: oss-security@lists.openwall.com
Message-ID: <6a34e3be-2417-4f99-a36f-fbfaaef07458@Spark>
References: <2a1a85d6-910e-43aa-93d5-68152a6a02bf@Spark>
X-Readdle-Message-ID: 6a34e3be-2417-4f99-a36f-fbfaaef07458@Spark
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5f60edd3_71dce0fd_26c"
Subject: [oss-security] [CVE-2020-13948] Apache Superset Remote Code Execution
 Vulnerability

--5f60edd3_71dce0fd_26c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Affected Versions: Apache Superset < 0.37.1

While investigating a bug report on Apache Superset, it was determined that=
 an authenticated user could craft requests via a number of templated text =
fields in the product that would allow arbitrary access to Python=E2=80=99s=
 `os` package in the web application process. It was thus possible for an a=
uthenticated user to list and access files, environment variables, and proc=
ess information. Additionally it was possible to set environment variables =
for the current process, create and update files in folders writable by the=
 web process, and execute arbitrary programs accessible by the web process.=
 All other operations available to the `os` package in Python were also ava=
ilable, even if not explicitly enumerated in this CVE.

Will Barrett
Staff Software Engineer
Preset, Inc. | https://preset.io

--5f60edd3_71dce0fd_26c--

