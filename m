X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2670" "Monday" "23" "March" "2020" "11:37:19" "-0700" "Tim Allclair" "tallclair@google.com" "<CADtktAU1jq56ag08PGjW4YiABqsNi6ptkb8E4c2iR7P4jFNhew@mail.gmail.com>" "71" "[oss-security] CVE-2020-8551, CVE-2020-8552: Kubernetes: Denial of service" nil nil nil "3" "2020032318:37:19" "[oss-security] CVE-2020-8551, CVE-2020-8552: Kubernetes: Denial of service" (number mark "U       tallclair@go Mar 23   71/2670  " thread-indent "\"[oss-security] CVE-2020-8551, CVE-2020-8552: Kubernetes: Denial of service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8551, CVE-2020-8552: Kubernetes: Denial of service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22094 invoked by uid 550); 23 Mar 2020 18:49:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16120 invoked from network); 23 Mar 2020 18:38:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=u0kMpKmlQuI1NlyL+dWtvrpwlpBWLm5NqF/GTCwad6c=;
        b=p2tHzgnXjvNiQzc88dqSYudUFMIr+EYXzxkEW99swRlSoCXqpqR8zl8LfRDMO+sK64
         Ow0Uqdt5RLlRGG/d0rCjuZ4bIl/xzsIDy34OGbBJJ0QH5KR5MeWOkkbMK+4ZwiQRzDu8
         ovLxYB51L/IqRO/RXEME+clRRhADx6Y4eLSPg48tTt46aNYvofn3sNlj+PlhN1CYMrNB
         8c/D2nGSujvF72mRmZvEFcZRJdinMlsmOp2iwqrJMVuLMGaySmyF0q4oHPXPAFpLUcVX
         AIyr9MxepWpIHQECyDvNoNVVJUuucMW1l4qw8+9U13ruS+HfMKbHOx76GnlmXFmzaBWX
         X7vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=u0kMpKmlQuI1NlyL+dWtvrpwlpBWLm5NqF/GTCwad6c=;
        b=RDRzjkDZYairFXAT41nw2PtCngHfTvb0+nb1hPWR/GRSpf/8ymTzwYXky7FG4wJd+i
         eKCT+yApM2q6C7wWcISjuc1fqI5348aJ3kH3PqdXK7fMnB69M52T/L8brlV1q04ftJXw
         xZsGiItLbTzqvewu/FLjfo+z7CfaQejVlcA8CgohpaCrZoKwXYsvE1JwCGv9fQAT8yGl
         x7bHEBwhmFUU2uuYK5U5z2S2W45CXpBqL3iCIKj22oI+05NumU+TJq97Igzda+nmoziN
         LMlwHS5Vi4Fzu8WGNjhhR8gfCC0Mthm3LcU6nX0SP8nSF5i+Q45esYDdhS8bKjOWyzMP
         5N1g==
X-Gm-Message-State: ANhLgQ3pjKOthitmsYy5Q5ly4dZ5GZuBUSPIirQa18XpEVSCutHcNDzR
	sQFdyBGukNp3p1PJbvs41Yh5A1Cy1Kc1NtiVBbA+DQ==
X-Google-Smtp-Source: ADFU+vtkOSpKk7ryu/6RPh7pmJXaD0/Bxv5v8RR0wdKkkjV+RsFP6qYgr+tOM3+x59ZGYfvZc3CJCzRjpHjVTKxrQtI=
X-Received: by 2002:a05:651c:2c7:: with SMTP id f7mr3299003ljo.152.1584988676706;
 Mon, 23 Mar 2020 11:37:56 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allclair <tallclair@google.com>
Date: Mon, 23 Mar 2020 11:37:19 -0700
Message-ID: <CADtktAU1jq56ag08PGjW4YiABqsNi6ptkb8E4c2iR7P4jFNhew@mail.gmail.com>
To: kubernetes-announce@googlegroups.com, 
	"Kubernetes developer/contributor discussion" <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss <kubernetes-security-discuss@googlegroups.com>, 
	oss-security@lists.openwall.com, kubernetes+announcements@discoursemail.com
Content-Type: multipart/alternative; boundary="0000000000000cd9d305a189efbb"
Subject: [oss-security] CVE-2020-8551, CVE-2020-8552: Kubernetes: Denial of service

--0000000000000cd9d305a189efbb
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

Two security issues were discovered in Kubernetes that could lead to a
recoverable denial of service.

*CVE-2020-8551* affects the kubelet, and has been rated *Medium *(
CVSS:3.0/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L>
).

*CVE-2020-8552* affects the API server, and has also been rated *Medium* (
CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L>
).
<https://github.com/kubernetes/security/blob/master/comms-temlpates/vulnerability-announcement-email.md#am-i-vulnerable>Am
I vulnerable?
If an attacker can make an authorized resource request to an unpatched API
server (see below), then you may be vulnerable to CVE-2020-8552. If an
attacker can make an authorized request to an unpatched kubelet, then you
may be vulnerable to CVE-2020-8551.
<https://github.com/kubernetes/security/blob/master/comms-temlpates/vulnerability-announcement-email.md#affected-versions>Affected
Versions
CVE-2020-8551 affects:

   - kubelet v1.17.0 - v1.17.2
   - kubelet v1.16.0 - v1.16.6
   - kubelet v1.15.0 - v1.15.10\
   - *kubelets prior to v1.15.0 are unaffected*

CVE-2020-8552 affects:

   - kube-apiserver v1.17.0 - v1.17.2
   - kube-apiserver v1.16.0 - v1.16.6
   - kube-apiserver < v1.15.10

<https://github.com/kubernetes/security/blob/master/comms-temlpates/vulnerability-announcement-email.md#how-do-i-mitigate-this-vulnerability>How
do I mitigate this vulnerability?

Prior to upgrading, these vulnerabilities can be mitigated by:

   - Preventing unauthenticated or unauthorized access to the affected
   components
   - The apiserver and kubelet should auto restart in the event of an OOM
   error

<https://github.com/kubernetes/security/blob/master/comms-temlpates/vulnerability-announcement-email.md#fixed-versions>Fixed
Versions
Both vulnerabilities are patched in kubernetes versions

   - v1.17.3
   - v1.16.7
   - v1.15.10

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster
<https://github.com/kubernetes/security/blob/master/comms-temlpates/vulnerability-announcement-email.md#addiitonal-details>Additional
Details

See the GitHub issues for more details:

CVE-2020-8551: https://github.com/kubernetes/kubernetes/issues/89377
CVE-2020-8552: https://github.com/kubernetes/kubernetes/issues/89378

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee

--0000000000000cd9d305a189efbb--
