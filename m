X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1812" "Tuesday" "6" "August" "2019" "09:35:44" "-0700" "Tim Allclair" "tallclair@google.com" "<CADtktAVB-QncVS9OcDzceb0_6+8OY_b3xQ2Sag+r9m_f80f4+g@mail.gmail.com>" "50" "[oss-security] [ANNOUNCE] CVE-2019-11248: /debug/pprof exposed on kubelet's healthz port" nil nil nil "8" "2019080616:35:44" "[oss-security] [ANNOUNCE] CVE-2019-11248: /debug/pprof exposed on kubelet's healthz port" (number mark "U       tallclair@go Aug  6   50/1812  " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2019-11248: /debug/pprof exposed on kubelet's healthz port\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] CVE-2019-11248: /debug/pprof exposed on kubelet's healthz port" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12223 invoked by uid 550); 6 Aug 2019 17:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11545 invoked from network); 6 Aug 2019 16:36:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=X8em3iqrTqOrueUuL3b5gV0vAmj7qq5j55H9Z+pxG38=;
        b=ZxjfKJePjYtnBVEj3yEvUnQN+yUxNTJ9DBs4XmSlDHGp+t3dNGsfAPKbZx5DFRtvMp
         UAGjbxLh1NiiSoogsitLkjEtPEtuHf0V32M9ZkvIO5aDN1iWirec8fwVDN6ho0MvVqyj
         IQW0rbL6XU2+RWjC2m9xVJYPqQ6sP1du91P6gTb7dvPbKPcroEy/xLezLedTiOhlY8Ox
         gkiGHi9HsOawD8jdu1+eSoHeTgYMEF2e6y6kJ358drpgQSR2m15DdQJhPZ3IjkczjLjS
         LPk/1varavxGGsS8vyZ9Ma2NtsFbYdmOsnU9MOSLoCh/+pM9Zbt2sWdj+LDnQCphNYUr
         LZxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=X8em3iqrTqOrueUuL3b5gV0vAmj7qq5j55H9Z+pxG38=;
        b=iIF6Bv3b98VSWrX8npIrxASHlkC42Sf3gG3+cmFQrUnMV0CxxUvCCQIyy7XPttwBsg
         OrkcT0VpH99AtduO4eg+5SomIOVOpwcsDFrItcUfusvkh8dOENOgsvQq1Ig22GyMgp/a
         +ZwNM27YfnXpXdruaLsvpwYZsGCfSVHKBbxQ6CgIWtnZM1SWOgcl5w6/9FWyOaZhTiOE
         nH+9reN5cY+TQowxqKgzoCzGBGVq7req0PwS9zAoGAvc92t6sw72lHvnYWCt6k1WzctR
         ZH1pLKS+nrF12OR6gRtq3HyY2JQI18ank8uQfQ/iu0mSGJEbgvPfMjYqyt3kC7ERcg7N
         PeAw==
X-Gm-Message-State: APjAAAU1UjQOpkod/yQgDPXg3r205k5ouGXtmYpKnRkvRSBbYEnDoQo0
	toFAhQY5C7qbhXk0kfovu7h7DdWEWt5zZyfw1JTkUA==
X-Google-Smtp-Source: APXvYqy3/r26tmWwSi7Oz6SiVzCPQ0luMn12cC5vYo9ZjvGceFoRwn7JoXuQ3Ke/iMlBE3b97T+HVBm6dLUUiq+Q0MM=
X-Received: by 2002:a0d:d690:: with SMTP id y138mr3109145ywd.433.1565109380387;
 Tue, 06 Aug 2019 09:36:20 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allclair <tallclair@google.com>
Date: Tue, 6 Aug 2019 09:35:44 -0700
Message-ID: <CADtktAVB-QncVS9OcDzceb0_6+8OY_b3xQ2Sag+r9m_f80f4+g@mail.gmail.com>
To: "Kubernetes developer/contributor discussion" <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss@googlegroups.com, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a7899c058f756c8e"
Subject: [oss-security] [ANNOUNCE] CVE-2019-11248: /debug/pprof exposed on kubelet's healthz port

--000000000000a7899c058f756c8e
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

The debugging endpoint /debug/pprof is exposed over the unauthenticated
Kubelet healthz port. Versions prior to 1.15.0, 1.14.4, 1.13.8, and 1.12.10
are affected. The issue is of medium severity, but only exposed locally by
the default configuration. If you are exposed we recommend upgrading to at
least one of the versions listed.

Am I vulnerable?

By default, the Kubelet exposes unauthenticated healthz endpoints on port
:10248, but only over localhost. If your nodes are using a non-localhost
healthzBindAddress (--health-bind-address), and an older version, you may
be vulnerable. If your nodes are using the default localhost
healthzBindAddress, it is only exposed to pods or processes running in the
host network namespace.

Run `kubectl get nodes` to see whether nodes are running a vulnerable
version.

Run `kubectl get --raw /api/v1/nodes/${NODE_NAME}/proxy/configz` to check
whether the "healthzBindAddress" is non-local.

How do I mitigate the vulnerability?

Upgrade to the latest patch releases for 1.15, 1.14 or 1.13

Or, update node configurations to set the "healthzBindAddress" to
"127.0.0.1".

Vulnerability Details

The go pprof <https://golang.org/pkg/net/http/pprof/> endpoint is exposed
over the Kubelet's healthz port. This debugging endpoint can potentially
leak sensitive information such as internal Kubelet memory addresses and
configuration, or for limited denial of service.

This issue has been filed as CVE-2019-11248. See
https://github.com/kubernetes/kubernetes/issues/81023 for more details

Thanks to Jordan Zebor of F5 Networks for reporting this problem.

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee

--000000000000a7899c058f756c8e--
