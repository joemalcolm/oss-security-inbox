X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2695" "Wednesday" "15" "July" "2020" "09:09:07" "-0700" "Tim Allclair" "tallclair@google.com" "<CADtktAXJZ3ib+Z-a7gj8gLNq0=h0261azz0JtX7uVHDWRa4U4Q@mail.gmail.com>" "101" "[oss-security] Kubernetes: CVE-2020-8559: Privilege escalation from compromised node to cluster" nil nil nil "7" "2020071516:09:07" "[oss-security] Kubernetes: CVE-2020-8559: Privilege escalation from compromised node to cluster" (number mark "U       tallclair@go Jul 15  101/2695  " thread-indent "\"[oss-security] Kubernetes: CVE-2020-8559: Privilege escalation from compromised node to cluster\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Kubernetes: CVE-2020-8559: Privilege escalation from compromised node to cluster" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5288 invoked by uid 550); 15 Jul 2020 16:38:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22237 invoked from network); 15 Jul 2020 16:09:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Bbwh/I4VfqIqYeBe4l7Wtm9yO8AYkWV4k9IrtinJ8bA=;
        b=IReNrsRfToCcd9IroPoOBq4ldM7yaCX4c5sSRS89/htLh76zxhdbDUBLEOFhh5dEwG
         VR7lMxn5XQhwcO544tJdA2B6KFVghts4qYeIYlImldrgztnu52H9OHPPjIV2gRcmiWjX
         Bez6vG59fMbYSJi8b2H8EO+rcFjEsH4pTCCW67EHht8x2Qdi2tInVhxkfGKTSDOXA5FU
         rrQqeZ0FuyynZRFc0Z4xtphlh+WP/d2TRH1eUA+fiD07UBLfpp10KO2i5dQ0irl/8MAo
         Tl/neRof0af08A5xu7hhuSHr2QHtzZ2jpN3FI4zpAqSqr+dy4B9NeezQp/9FIZ7U+gIw
         jKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Bbwh/I4VfqIqYeBe4l7Wtm9yO8AYkWV4k9IrtinJ8bA=;
        b=ktNfzF/NFePcMShQHBitC7BycMwVkuvgj3coTPLFlUWpA6j8747wbYPtywCnAGYyrW
         R4QVJIahniEPzR2QXz3rA9EGX3gC7G8ntslj5h+IBh2FEUxxh4GT/Uc1w3JEYfwpoYwy
         iBmK1D4wDpwN86bS7MKciahwRh8zy9q+fx61m5sioULfyMrlBt1I7gTyI/3bX+JmXWBL
         n8+loOHzECa73pnB3frMwwOqf5QyrG5ng4Fm55GEHZbqi5If9sduZnEQflkQBK3ZEopx
         wlEGEzThelshfQci2NgB7ZklhlpMJx7yZ43/8sCnuNKuBSUvLOyRIH7HZbNJiFJ0ngcO
         p9Xw==
X-Gm-Message-State: AOAM531qHI2r/d/DvWmLaPR3WW3oyPgnRzlvCMKTHSPRmjeblEHzyUCy
	YCBYNV+X1uraiH776KNvaNkcpdWJ255IeIeZBRWC9Tvl1Zk=
X-Google-Smtp-Source: ABdhPJyg/72CAHgpaUJDQg5fKBUAu+CeXldMEfshFCp2glRqDTOsZyq9X4d4ucjJoT66Ltxajn54Tssy45w0oN1T2Cc=
X-Received: by 2002:a2e:3316:: with SMTP id d22mr5333179ljc.18.1594829383873;
 Wed, 15 Jul 2020 09:09:43 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allclair <tallclair@google.com>
Date: Wed, 15 Jul 2020 09:09:07 -0700
Message-ID: <CADtktAXJZ3ib+Z-a7gj8gLNq0=h0261azz0JtX7uVHDWRa4U4Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e78e5405aa7d2603"
Subject: [oss-security] Kubernetes: CVE-2020-8559: Privilege escalation from compromised node
 to cluster

--000000000000e78e5405aa7d2603
Content-Type: text/plain; charset="UTF-8"

A security issue was discovered in the kube-apiserver that could enable a
privilege escalation from a compromised node.

This issue has been rated Medium (
CVSS:3.1/AV:N/AC:H/PR:H/UI:R/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:R/S:U/C:H/I:H/A:H>),
and assigned CVE-2020-8559.

If an attacker is able to intercept certain requests to the Kubelet, they
can send a redirect response that may be followed by a client using the
credentials from the original request. This can lead to compromise of other
nodes.

If multiple clusters share the same certificate authority trusted by the
client, and the same authentication credentials, this vulnerability may
allow an attacker to redirect the client to another cluster. In this
configuration, this vulnerability should be considered High severity.
Am I vulnerable?

You are only affected by this vulnerability if you treat the node as a
security boundary, or if clusters share certificate authorities and
authentication credentials.

Note that this vulnerability requires an attacker to first compromise a
node through separate means.
Affected Versions

   -

   kube-apiserver v1.18.0-1.18.5
   -

   kube-apiserver v1.17.0-1.17.8
   -

   kube-apiserver v1.16.0-1.16.12
   -

   all kube-apiserver versions prior to v1.16.0

How do I mitigate this vulnerability?

To mitigate this vulnerability you must upgrade the kube-apiserver to a
patched version.
Fixed Versions

   -

   kube-apiserver v1.18.6
   -

   kube-apiserver v1.17.9
   -

   kube-apiserver v1.16.13

Fix impact: Proxied backends (such as an extension API server) that respond
to upgrade requests with a non-101 response code may be broken by this
patch.

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster
Detection

Upgrade requests should never respond with a redirect. If any of the
following requests have a response code in the 300-399 range, it may be
evidence of exploitation. This information can be found in the Kubernetes
audit logs.

   -

   pods/exec
   -

   pods/attach
   -

   pods/portforward
   -

   any resource: proxy

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/92914
Acknowledgements

This vulnerability was reported by Wouter ter Maat of Offensi, via the
Kubernetes bug bounty.

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee

--000000000000e78e5405aa7d2603--
