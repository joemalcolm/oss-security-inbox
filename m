X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1556" "Wednesday" "14" "April" "2021" "09:06:02" "-0700" "Tim Allclair" "timallclair@gmail.com" nil "63" "[oss-security] [kubernetes] CVE-2021-25735: Validating Admission Webhook does not observe some previous fields" nil nil nil "4" nil nil (number mark "U       timallclair@ Apr 14   63/1556  " thread-indent "\"[oss-security] [kubernetes] CVE-2021-25735: Validating Admission Webhook does not observe some previous fields\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2021-25735: Validating Admission Webhook does not observe some previous fields" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17674 invoked by uid 550); 14 Apr 2021 16:11:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15454 invoked from network); 14 Apr 2021 16:06:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=D+SLvtbsICT+V27hD6tmWMWb4JEdOesDX0tqZQM347o=;
        b=eKXoSYh66B10Io9CBXpMmVAW0cziblpoW7cAVlj30oYIRJGoQQ5WIABq9jN79yrcoj
         uC8TIta+HFQu8IY05u1z+Uvu7VhLckbODyxUqrZdsjOBvSIyeie4IPEW0YSL7k9V6NCz
         ILGwFMztiZOuKKRaCQp3i4i+ER62sl+TaMESrPWV0zUgLsQ9C99WH+tWleifZ3Oh7vAB
         n6bbNEq+/f1XKnJ7xG9RdSvgocaALQSFb0fGHmNCHUiRg4FATBlqoTyQ0sR8978HZ2yr
         9mB7ZKcl1Nrh/mMEOwhYW2ykTzraCUPHkQ3gKjvhVAlD50PPSFTd8aO8+sh3z48MIf4x
         zK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=D+SLvtbsICT+V27hD6tmWMWb4JEdOesDX0tqZQM347o=;
        b=E54UOKcNsY6iVBIKQ4tDMmSuZU/E6VtilSWvw6aKC9+IImEeJ0/X4XupkgrJ9gA83u
         Ds8jo/nxfmHZ3WjMMCpiCsAeZ1StYgAbjUuci0eZS0l7VWkwRRgSLxe+loTv/i+v/Z+z
         wyOlq91hXQ4HMrC5xhKvzDdJN0GTZH/ZpxGPmd9Mg3bbCLCwd30gUhKph8KIZR/nKXrW
         Zlj80wnnphzDCvGdFdaHvb3PZw6ZfIyqIpzLTCk5micxnt0EryDLbQ2Ni3Z6RZg54Obq
         gI+w1sQmZQH4PFHqFqbuB7wx40GAzVMb/TS2pgEq9aLaVSaeIVktpIDF4Cfgzbi29a/d
         ouZw==
X-Gm-Message-State: AOAM533vtpoK/LZquY5nkocD1CURPonHUnpxY7Kds81Rq8yPL/2gD+nJ
	CWJhEhb5IG4xc+XasZd/Quf5l/ChuQwYQ7CWO7w3T1YDrgc=
X-Google-Smtp-Source: ABdhPJzC+0wNxneYrdkZbdlsoxSAMVp+547mlPUnSEKY/94yUq049WA5oi6aqWDic94Wj8Ic5wnWtm4Eg4cuKOHNI9M=
X-Received: by 2002:a0c:e950:: with SMTP id n16mr17381419qvo.43.1618416373157;
 Wed, 14 Apr 2021 09:06:13 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allclair <timallclair@gmail.com>
Date: Wed, 14 Apr 2021 09:06:02 -0700
Message-ID: <CALXpagwmiKsVvPB4BooBhtTshuzg7JNPhTO_MZKZNmSMo7YCRw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000551cd05bff0edfc"
Subject: [oss-security] [kubernetes] CVE-2021-25735: Validating Admission Webhook does not
 observe some previous fields

--0000000000000551cd05bff0edfc
Content-Type: text/plain; charset="UTF-8"

A security issue was discovered in kube-apiserver that could allow node
updates to bypass a Validating Admission Webhook. You are only affected by
this vulnerability if you run a Validating Admission Webhook for Nodes that
denies admission based at least partially on the old state of the Node
object.

This issue has been rated Medium (
CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:H/A:H
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:H/A:H>),
and assigned CVE-2021-25735.

Note: This only impacts validating admission plugins that rely on old
values in certain fields, and does not impact calls from kubelets that go
through the built-in NodeRestriction admission plugin.
Affected Versions

   -

   kube-apiserver v1.20.0 - v1.20.5
   -

   kube-apiserver v1.19.0 - v1.19.9
   -

   kube-apiserver <= v1.18.17

Fixed Versions

This issue is fixed in the following versions:

   -

   kube-apiserver v1.21.0
   -

   kube-apiserver v1.20.6
   -

   kube-apiserver v1.19.10
   -

   kube-apiserver v1.18.18

Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See Kubernetes Issue #100096
<https://github.com/kubernetes/kubernetes/issues/100096> for more details.
Acknowledgements

This vulnerability was reported by Rogerio Bastos & Ari Lima from RedHat

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee

--0000000000000551cd05bff0edfc--
