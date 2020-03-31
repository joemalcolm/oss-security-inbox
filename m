X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1915" "Tuesday" "31" "March" "2020" "16:07:32" "-0700" "CJ Cullen" "cjcullen@google.com" "<CABdrxGDFrs7pUS5DNae80GQds8vc3qAavJrTkH-fVEmxXvfMtg@mail.gmail.com>" "87" "[oss-security] CVE-2019-11254: Kubernetes: denial of service vulnerability from malicious YAML payloads" nil nil nil "3" "2020033123:07:32" "[oss-security] CVE-2019-11254: Kubernetes: denial of service vulnerability from malicious YAML payloads" (number mark "U       cjcullen@goo Mar 31   87/1915  " thread-indent "\"[oss-security] CVE-2019-11254: Kubernetes: denial of service vulnerability from malicious YAML payloads\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-11254: Kubernetes: denial of service vulnerability from malicious YAML payloads" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7557 invoked by uid 550); 1 Apr 2020 11:04:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24457 invoked from network); 31 Mar 2020 23:07:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=F1RZamVFp8Haew43Ot4N7RiuZLE5caDGYZKjKRkjvfM=;
        b=rVPk+TR19MKTuq0WjnNYvdb2jvyuoQc5MQi+QaA/DNpd2VoRtGngDjqQRKTRR8FaMv
         KJqSTl7835domKpGc3LCkSDRff3B+iNBvHgk5zXy2n0q7AK4AU9bVsXp/eBPOnSJzcuR
         SHh2XImBOK2ME5uPYY2mRQnPYBvuNqGX9Sv9ae6PWAsNRm+OdISIhKl8TvPLJhgCQnnF
         IiN0UPUt/JzLlFkyXjOoBEG3e3W1s3wIPIvePuqoXhZ6DSW+3QwgZ1ObUgm/bORYsXrF
         OqDQ8DnkXtTuv0XcstJf4AVO7TAKCh878QEE0NGlQ+GkgWanoNYZiLCJsV0PSnOTbrJ7
         nhRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=F1RZamVFp8Haew43Ot4N7RiuZLE5caDGYZKjKRkjvfM=;
        b=hW659ukF0ogFmUM/1BEBf74vCK3WVLOFJ9zVMkYXvIp5FCy6H0XOYztoOCbfcWlV/u
         np0EcXQozHLiG4w8+s8DmthAjV9HRZdKn2XXJmH8r1k9y1tJvPwLs+4w8h4B4qDgzE2X
         CDVIgGkPT2HHQ0tO6DZbGxlOnvaFrAEcjJB3swxWlf571cBQbg3n+U/wtdPG4CZMZdr2
         CnslDWBCIXIPTCtSPB/owH1HaghvQ7N/DHlnYDsNxam++UeA9RmFJ0NGEPDq9kQMxauf
         TG3R37w5aXT4wN/PNG1vTGoYLvqVo7qU6cS/yKY1J8sHmMHeMjCVUmeFjUjhA4xI7J87
         pw/A==
X-Gm-Message-State: ANhLgQ3UCYAGsCE+IVjbjCYogaK37FW40p1/8+jy+rZO5DuloP5b2mI/
	3DsVJogE3RE8UY4nmI2oij7CxfR1DKqGqcMkKZZPTw==
X-Google-Smtp-Source: ADFU+vsqPuUHUk+tVIuX14gij/WK0cGLD87XDRLPQebOxsMer0bt/caEe/d1Kgi1r5EuuI0GqquWEyf7im3Pqd3P6XY=
X-Received: by 2002:a5b:383:: with SMTP id k3mr32735912ybp.332.1585696065352;
 Tue, 31 Mar 2020 16:07:45 -0700 (PDT)
MIME-Version: 1.0
From: CJ Cullen <cjcullen@google.com>
Date: Tue, 31 Mar 2020 16:07:32 -0700
Message-ID: <CABdrxGDFrs7pUS5DNae80GQds8vc3qAavJrTkH-fVEmxXvfMtg@mail.gmail.com>
To: kubernetes-announce@googlegroups.com, 
	kubernetes-dev <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss@googlegroups.com, oss-security@lists.openwall.com, 
	kubernetes+announcements@discoursemail.com
Content-Type: multipart/alternative; boundary="000000000000b2e4ae05a22ea286"
Subject: [oss-security] CVE-2019-11254: Kubernetes: denial of service vulnerability
 from malicious YAML payloads

--000000000000b2e4ae05a22ea286
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,



A denial of service vulnerability in the Kubernetes API Server was
discovered and assigned CVE-2019-11254. This vulnerability has been given
an initial severity of Medium (CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H>.
Details are below and at https://issue.k8s.io/89535



The following versions including the fix have been released:

   -

   v1.15.10 <https://github.com/kubernetes/kubernetes/releases/tag/v1.15.10>
   -

   v1.16.7 <https://github.com/kubernetes/kubernetes/releases/tag/v1.16.7>
   -

   v1.17.3 <https://github.com/kubernetes/kubernetes/releases/tag/v1.17.3>



Details

CVE-2019-11254 is a denial of service vulnerability in the kube-apiserver,
allowing authorized users sending malicious YAML payloads to cause
kube-apiserver to consume excessive CPU cycles while parsing YAML.



The issue was discovered
<https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=18496> via the fuzz
test kubernetes/kubernetes#83750
<https://github.com/kubernetes/kubernetes/pull/83750>.



Affected components:

Kubernetes API server



Affected versions:

   -

   <= v1.15.9
   -

   v1.16.0-v1.16.6
   -

   v1.17.0-v1.17.2

How do I mitigate this vulnerability?

Prior to upgrading, these vulnerabilities can be mitigated by preventing
unauthenticated or unauthorized access to kube-apiserver.



Acknowledgements



Thanks to Mark Wolters from Google for writing the fuzz tests
<http://kubernetes/kubernetes#83750>, and to oss-fuzz
<https://github.com/google/oss-fuzz> for the support.



Thanks to Mike Danese from Google for reporting this issue
<https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=18496>.



- CJ Cullen on behalf of the Kubernetes Product Security Team

--000000000000b2e4ae05a22ea286--
