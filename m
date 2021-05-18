X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1907" "Tuesday" "18" "May" "2021" "12:28:20" "-0700" "CJ Cullen" "cjcullen@google.com" nil "49" "[oss-security] [kubernetes] CVE-2021-25737: Holes in EndpointSlice Validation Enable Host Network Hijack" nil nil nil "5" nil nil (number mark "U       cjcullen@goo May 18   49/1907  " thread-indent "\"[oss-security] [kubernetes] CVE-2021-25737: Holes in EndpointSlice Validation Enable Host Network Hijack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2021-25737: Holes in EndpointSlice Validation Enable Host Network Hijack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1305 invoked by uid 550); 18 May 2021 19:35:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30132 invoked from network); 18 May 2021 19:28:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GFRK4g5lX9QwSCs/Oa5GYt+kx9Yl3sn6IU0CW7SPY4s=;
        b=uLX6/7SkBGc1dY7rFzrYzXeUFxw3MvZ3FZPQTkeDqwO+tMkzLbkYA3v54Pm8ywgkpK
         T5sh8r9UVSS2W/jwmVrWmhRYW95GoxwUuYVFVFcqcaOBEDjBFHR9nQZ4StvYqCz+x3UQ
         uju3I0e9cjT8ROSFacYHZQk3pjrinDAJAqoae8XXOKpfBbQY+WZRFmcBN7LYPKDxirNH
         VyCvOmD+Yv56j1c4+vUcCTAv0sBZlQsFirsFNq3jvPTb44AtIZFJGejmefxJRA0mOwIh
         qSHNuWfWE5ppfhdk6wPczj42dqHF1OZDbnKDRvlzfUPhUBNu+0lHl8vT4ROPE9g/pETw
         xtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GFRK4g5lX9QwSCs/Oa5GYt+kx9Yl3sn6IU0CW7SPY4s=;
        b=koGYDjPyHC8e4EIzn87KT9I6Vbrg3X7WSJEZ4osYrdJxJkGm2IY5bdeipZwFeSqJNs
         kbYzA2EJAS9AnXTqJ99YvMzHozdaCH12xGdU5RDAj7JKTeiGDiPFUs4MHLyfl/2MK1zx
         chAXl6DCHUzL/8POUMWB/+5TYmjEC42ObDYYyUaFlB+N5XMOoGUjitmxNIjOF0+1Ku4Z
         q1yP0Nrapfo5Fm1ZPhzes4tvkWC7FbhWtVXXXmNgHh5hktQh8FxPWLG0A5rN0ybgZT50
         wqE/XQzI6+5IGDd4hbcxpxrQf/X4RNYmGQNptzhEW3hk40WpCKyH/Yo5fdMBapOYBOgb
         ZuCA==
X-Gm-Message-State: AOAM533YLWGKUXlzgkVOthPlMLiTvdI2R7y4QnUYLOoCcQvQ6QTjHkju
	S2DnAIM4qMfXKLL5bpJt2Hq3okjCN6G5gYl065965LApOyQ=
X-Google-Smtp-Source: ABdhPJzVHOCGqpzydGLCuRi8nJHZEw0NgGDi6MSLDHlAhU/JjUbbO0gTkoeCTXca1lPNjC+5qQfE7OqvgkaJqzPUUWQ=
X-Received: by 2002:a25:748f:: with SMTP id p137mr3648819ybc.25.1621366111867;
 Tue, 18 May 2021 12:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGCCbP70aTC9hP1r=P9J02ijj2AqhHmDrPctYZRNFqXjBQ@mail.gmail.com>
In-Reply-To: <CABdrxGCCbP70aTC9hP1r=P9J02ijj2AqhHmDrPctYZRNFqXjBQ@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Tue, 18 May 2021 12:28:20 -0700
Message-ID: <CABdrxGC=YmZPJC9Vs3rYmFatqkmgkEULnnXq8_Ux5wZOD+EvsA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000026d31305c29fb7c7"
Subject: [oss-security] [kubernetes] CVE-2021-25737: Holes in EndpointSlice Validation Enable
 Host Network Hijack

--00000000000026d31305c29fb7c7
Content-Type: text/plain; charset="UTF-8"

A security issue was discovered in Kubernetes where a user may be able to
redirect pod traffic to private networks on a Node. Kubernetes already
prevents creation of Endpoint IPs in the localhost or link-local range, but
the same validation was not performed on EndpointSlice IPs.

*This issue has been rated Low
(CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:L/I:N/A:N
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:L/I:N/A:N>),
and assigned CVE-2021-25737.*Affected Component

*kube-apiserver*Affected Versions


* - v1.21.0- v1.20.0 - v1.20.6- v1.19.0 - v1.19.10- v1.16.0 - v1.18.18
(Note: EndpointSlices were not enabled by default in 1.16-1.18)*Fixed
Versions



*This issue is fixed in the following versions: - v1.21.1- v1.20.7-
v1.19.11- v1.18.19*Mitigation

*To mitigate this vulnerability without upgrading kube-apiserver, you can
create a validating admission webhook that prevents EndpointSlices with
endpoint addresses in the 127.0.0.0/8 <http://127.0.0.0/8> and
169.254.0.0/16 <http://169.254.0.0/16> ranges. If you have an existing
admission policy mechanism (like OPA Gatekeeper) you can create a policy
that enforces this restriction.*Detection

*To detect whether this vulnerability has been exploited, you can list
EndpointSlices and check for endpoint addresses in the 127.0.0.0/8
<http://127.0.0.0/8> and 169.254.0.0/16 <http://169.254.0.0/16> ranges. If
you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io <security@kubernetes.io>*Additional Details

See Kubernetes Issue #102106
<https://github.com/kubernetes/kubernetes/issues/102106> for more details.
Acknowledgements

This vulnerability was reported by John Howard of Google.

Thank You,

CJ Cullen on behalf of the Kubernetes Product Security Committee

--00000000000026d31305c29fb7c7--
