X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1997" "Monday" "5" "August" "2019" "12:01:22" "-0400" "Joel Smith" "joelsmith@redhat.com" "<CAEftUaoQGR5-iZtSCJth9==+eN913R_hPoUTHNBJ9fmgABhO8w@mail.gmail.com>" "50" "[oss-security] Kubernetes v1.13.9, v1.14.5, v1.15.2 released to address CVE-2019-11247, CVE-2019-11249" nil nil nil "8" "2019080516:01:22" "[oss-security] Kubernetes v1.13.9, v1.14.5, v1.15.2 released to address CVE-2019-11247, CVE-2019-11249" (number mark "U       joelsmith@re Aug  5   50/1997  " thread-indent "\"[oss-security] Kubernetes v1.13.9, v1.14.5, v1.15.2 released to address CVE-2019-11247, CVE-2019-11249\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Kubernetes v1.13.9, v1.14.5, v1.15.2 released to address CVE-2019-11247, CVE-2019-11249" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13913 invoked by uid 550); 5 Aug 2019 16:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11799 invoked from network); 5 Aug 2019 16:01:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s8T1Mr/FFh0BQ+kv7Zld8n/cm5P4ezvM106CJUtSBpU=;
        b=X4KIkCK2WJEQIZ+w0SU7giZ3HF98It09Y+AFTbGm20zapB0BEBa/zsXg68pwdPEu56
         EncWeorJJpaDQCTsG14Lr8Ex60CwL8hnraI/zOruaeg12IKHzWLV9HOx9b6rJ/n0wFa6
         skySKUu6yBQW/fEBaSI2LRx3S6tD2Z+AdIQ/cUXzRXCML86YjraurDljt/r0uruUCrTd
         sobEbfLAnOYjnd7JKzmZaiIt4izs6SXf7VmGhkSgb7M8a4WApqHNBZg8Egj8sBse/fsX
         pcttudjlRFRPHPHpXzAKbwKgTJeOl/TcncqOLWgu4bfUZvYneDAMeBXlZruGGpyc/l9f
         C21Q==
X-Gm-Message-State: APjAAAUWpa5Gj8cXL6HQjfOl/hrvggKWMROeynLg3wu/xewaam8V/cya
	2023J9DaTFx2svaBEERwwmUrTs1q6+OoBditCZGw+ifxdfbCXw==
X-Google-Smtp-Source: APXvYqwMi0GVwrjeWuj3UPTZWs9sOKNWOVlk6Uxcc4Xm01wmfJARbN6qDVFXmWQCZZEgfHwkzK//NXzmffoNPG8nxy0=
X-Received: by 2002:a17:906:c785:: with SMTP id cw5mr71687605ejb.215.1565020894200;
 Mon, 05 Aug 2019 09:01:34 -0700 (PDT)
MIME-Version: 1.0
From: Joel Smith <joelsmith@redhat.com>
Date: Mon, 5 Aug 2019 12:01:22 -0400
Message-ID: <CAEftUaoQGR5-iZtSCJth9==+eN913R_hPoUTHNBJ9fmgABhO8w@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000771d1c058f60d244"
Subject: [oss-security] Kubernetes v1.13.9, v1.14.5, v1.15.2 released to address CVE-2019-11247, CVE-2019-11249

--000000000000771d1c058f60d244
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

We have released Kubernetes 1.13.9
<https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG-1.13.md#v1139>,
1.14.5
<https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG-1.14.md#v1145>,
and 1.15.2
<https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG-1.15.md#v1152>
to address two security issues in Kubernetes. We recommend all clusters and
kubectl clients update to one of these releases immediately.

CVE-2019-11247: API server allows access to custom resources via wrong scope

This vulnerability allows access to a cluster-scoped custom resource if the
request is made as if the resource were namespaced. Authorizations for the
resource accessed in this manner are enforced using roles and role bindings
within the namespace, meaning that a user with access only to a resource in
one namespace could create, view update or delete the cluster-scoped
resource (according to their namespace role privileges).

See Kubernetes issue #80983
<https://github.com/kubernetes/kubernetes/issues/80983> for details. Thanks
to Prabu Shyam of Verizon Media for reporting this problem.

CVE-2019-11249: Incomplete fixes for CVE-2019-1002101 and CVE-2019-11246,
kubectl cp potential directory traversal

This vulnerability allows a malicious container to cause a file to be
created or replaced on the client computer when the client uses the kubectl
cp operation. The vulnerability is a client-side defect and requires user
interaction to be exploited.

See Kubernetes issue #80984
<https://github.com/kubernetes/kubernetes/issues/80984> for details. Thanks
to Yang Yang of Amazon for reporting this problem.

As a reminder, if you find a security vulnerability in Kubernetes, please
report it following the security disclosure process
<https://kubernetes.io/security/>.

Thanks,

Joel Smith

(on behalf of the Kubernetes Product Security Team)

--000000000000771d1c058f60d244--
