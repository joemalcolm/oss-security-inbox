Received: (qmail 32757 invoked by uid 550); 20 Nov 2024 15:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21910 invoked from network); 20 Nov 2024 15:32:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1732116727; x=1732721527; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GjoKgIoin8Wb1zYc1jzNfgvmdSnHq8hgZHIXqf4l7bM=;
        b=IUfHdgIVA/PdSdNfa60guS09TQW8oi84tZBlsMoZl7kC2goDqZEm/M6baxO2YYpBkn
         NphYdtStrW6AeKSlsFjtQOLy3fCOqYw5/YHAJ2xPdjAGCfJc2rHdPbAYgKvfD/AHzZPI
         F4tVA6KHXLjbl4c85keJnan0f16XodGcmKq7G6XTXu90OB2i7tEczZdfkp2JmfcOW7v7
         ravmvrZ8TNwQKGyrnvm6gaH1TueKWfiAR6vpTVsUqRaF03/9yX31lLeJoB5UKMizaofx
         D7WUSL+wol5/AqhflTHuV1OF+r7hTn17JMV9GMJvpLH/Pgo0P4RaDqvccJveN8H5DvU9
         LZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732116727; x=1732721527;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GjoKgIoin8Wb1zYc1jzNfgvmdSnHq8hgZHIXqf4l7bM=;
        b=UTt/D48+JZow1TIxA29+/eOKhqz6CNg7JAyFsY6COUrGRflkgQ4oC4vl4jV4czX1dT
         Tg2f0HkSAxYzoJrzYVZXnJOhE1VVinN/YSDWtUNkCVA/YtJDqEx1Dun7FIegagqFRyFq
         gSgMEVdjk8AjQTtfheJYkZcjpppiypz/+ofA1tcdrli0DzEE38I1wXs0NxYfwlCSVsvb
         Cj7AD/aefo27dIiYOTk0EK4ptdDP0mKeBh/fXesUSt3rKsKD7deUMjoVU1yvLZL9SmIc
         NB20Kn/ZWek1WOgqIctgzdPRQtbCtK6dFjJqbhCQ9J7/mT4bCBebA6YBquFH8FeMAu/G
         3bpQ==
X-Gm-Message-State: AOJu0YxjlV+44oTJOXvSO/x01Te2nPj6qn3QxdTHn7bX+P8cI7LHKh/o
	CJ8L/3CbySVvvmjvO4zqqr1wXf3neNhmPmgPOLJu8ff51kU5kIAljXaqtBez95wV99c5CbXRPUo
	kMN7ViBrCCljMAv5xIwlB98Gl9ddjhz3PCS6f0531csK+Ik7FbEVx
X-Gm-Gg: ASbGnctL96/3s6H1Wp/60fVR0+vyUyhheMM63H8abTIza+1CirwHw9pb9RRcjmcSZ36
	IiXuJ4EVaL3cxnx1zMx66h68NdPSaqVw7UNV+gMBYOiDd79FwztAGLmgZRkp1iOXEag==
X-Google-Smtp-Source: AGHT+IHRsMP3YUogPb5qUjB/kadP992PcxiTZJCBjRd1zISmOsAFjqwzAyvGQ3tNcJf8omyHmdFPxyo5Co2kPRI5W2Q=
X-Received: by 2002:a05:622a:6185:b0:462:c96a:bb30 with SMTP id
 d75a77b69052e-464268ec9cemr4801601cf.2.1732116724812; Wed, 20 Nov 2024
 07:32:04 -0800 (PST)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Wed, 20 Nov 2024 10:31:53 -0500
Message-ID: <CAHXwHVx722YeWTTpfB6cTgHifbYBsEsdfYAeMJ=uDhzcgJw+2w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001826b2062759da4c"
Subject: [oss-security] [kubernetes] CVE-2024-10220: Arbitrary command execution through
 gitRepo volume

--0000000000001826b2062759da4c
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security vulnerability was discovered in Kubernetes that could allow a
user with the ability to create a pod and associate a gitRepo volume to
execute arbitrary commands beyond the container boundary. This
vulnerability leverages the hooks folder in the target repository to run
arbitrary commands outside of the container's boundary.

Please note that this issue was originally publicly disclosed with a fix in
July (#124531 <https://github.com/kubernetes/kubernetes/pull/124531>), and
we are retroactively assigning it a CVE to assist in awareness and tracking.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N>)
(score: 8.1), and assigned CVE-2024-10220.
Am I vulnerable?

This CVE affects Kubernetes clusters where pods use the in-tree gitRepo
volume to clone a repository to a subdirectory. If the Kubernetes cluster
is running one of the affected versions listed below, then it is vulnerable
to this issue.
Affected Versions

   -

   kubelet v1.30.0 to v1.30.2
   -

   kubelet v1.29.0 to v1.29.6
   -

   kubelet <= v1.28.11

How do I mitigate this vulnerability?To mitigate this vulnerability, you
must upgrade your Kubernetes cluster to one of the fixed versions listed
below. Additionally, since the gitRepo volume has been deprecated, the
recommended solution is to perform the Git clone operation using an init
container and then mount the directory into the Pod's container. An example
of this approach is provided here
<https://gist.github.com/tallclair/849601a16cebeee581ef2be50c351841>.Fixed
Versions

   -

   kubelet v1.31.0
   -

   kubelet v1.30.3
   -

   kubelet v1.29.7
   -

   kubelet v1.28.12

Detection

To detect whether this vulnerability has been exploited, you can use the
following command to list all pods that use the in-tree gitRepo volume and
clones to a .git subdirectory.

kubectl get pods --all-namespaces -o json | jq '.items[] |
select(.spec.volumes[].gitRepo.directory | endswith("/.git")) | {name: .
metadata.name, namespace: .metadata.namespace}

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/128885
Acknowledgements

This vulnerability was reported and mitigated by Imre Rad.

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--0000000000001826b2062759da4c--
