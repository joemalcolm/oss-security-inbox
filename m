X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2819" "Thursday" "14" "November" "2019" "11:04:53" "-0800" "Tim Allclair" "tallclair@google.com" "<CADtktAXK6dTwRiUZYo9H3cr-om-r_SRvkc6Tp--_YL5UkOEnQQ@mail.gmail.com>" "132" "[oss-security] Security release of kubernetes-csi sidecars - CVE-2019-11255" nil nil nil "11" "2019111419:04:53" "[oss-security] Security release of kubernetes-csi sidecars - CVE-2019-11255" (number mark "U       tallclair@go Nov 14  132/2819  " thread-indent "\"[oss-security] Security release of kubernetes-csi sidecars - CVE-2019-11255\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security release of kubernetes-csi sidecars - CVE-2019-11255" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15715 invoked by uid 550); 14 Nov 2019 19:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13454 invoked from network); 14 Nov 2019 19:05:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=o/VCd3R9hVSHFNGs0kgZCMPg6z8yEjGp1YtiPiAzNqk=;
        b=ERaCvoEVZwWQdRvS/Ovb2cRVAY/ZcAgdbGuusEuipv+PQIURxIYstCg1d7ITpCj6lI
         29b9ZDpGre0WKw1FZjr73PCBa7KL9Q7N0w7UFWZwqbkzE25Qh0ChMFvbS+3an/kDezXM
         K4RbNgY7L6STGbpQzKFXAoZAdwR17YjbEdukuzUcEeQTSrJRRxSDcmolCznHb1xfo/ma
         TIXN0zENc3VQfF64iUS1oMAXwU+aHfkCzowRxCuDfim9YGMVI8dMGPXsJT3+Kdmd2feH
         gKaxgTmwRTSOABPIq6qORMau+0CwkXDHa/hB7vTULvapg7h4npzE3dODIAvdD0j1i9pb
         WhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=o/VCd3R9hVSHFNGs0kgZCMPg6z8yEjGp1YtiPiAzNqk=;
        b=qdHdlLANmtf84jf1nhvJ+pRuk6wMOefdR31ydKQF3Mp/XR+GadalILlrxYlJllo9Ej
         0iCRmz8A8gIhu5PFpyonCl+qM24qUHIeJ1kMlUsM5pOvYgIM/NvaziyJB+wi1h1RquJK
         /vJ8lix2nnfe3g600znxMwLWEALyEowHqtnSAR2aqjSitJ99wXrFVHqvt82HsTaFafcn
         B8nUvsYnXza077pao6FsYsZhEb4p0hL+bpkrrkH/nFUMnrq+uQhW4kDPbANrgThivy85
         ik0tVa1UJgUne8czAWqLrPldeDyV9fNLPNj5d+SakHqAxJ6/MAveGjis7P3EbcHtlZvb
         zqwg==
X-Gm-Message-State: APjAAAVlmUeUt0mnVyAZs+7dx+8JLRlmpLYaB4E/F+7CqLdaxCUUJcO5
	vd12w0RirSn0Y6BN54iuFVamOh3/jfcN4ViHxIze+g==
X-Google-Smtp-Source: APXvYqzVrGrHLGiwIf7qzGJdh+r74IoJeEP5dkWprwbPkEG7IMXypEOdZNnvoGzPFshMdiQs+Qk4cd33LqsNab2mk9I=
X-Received: by 2002:a2e:6e0f:: with SMTP id j15mr7637374ljc.43.1573758330003;
 Thu, 14 Nov 2019 11:05:30 -0800 (PST)
MIME-Version: 1.0
From: Tim Allclair <tallclair@google.com>
Date: Thu, 14 Nov 2019 11:04:53 -0800
Message-ID: <CADtktAXK6dTwRiUZYo9H3cr-om-r_SRvkc6Tp--_YL5UkOEnQQ@mail.gmail.com>
To: kubernetes-announce@googlegroups.com, 
	"Kubernetes developer/contributor discussion" <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss <kubernetes-security-discuss@googlegroups.com>, 
	oss-security@lists.openwall.com, kubernetes+announcements@discoursemail.com, 
	kubernetes-sig-storage@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000396a380597532a4d"
Subject: [oss-security] Security release of kubernetes-csi sidecars - CVE-2019-11255

--000000000000396a380597532a4d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,



A security issue has been found in the kubernetes-csi external-provisioner
<https://github.com/kubernetes-csi/external-provisioner>,
external-snapshotter
<https://github.com/kubernetes-csi/external-snapshotter>, and
external-resizer <https://github.com/kubernetes-csi/external-resizer>
sidecars that impacts most versions of the sidecars bundled in Container
Storage Interface (CSI) drivers. The vulnerabilities are medium severity
and can result in unauthorized volume data access or mutation when using
CSI volume snapshot, cloning or resizing features in Kubernetes. Upgrading
your CSI drivers to the fixed sidecars is recommended. Details are below
and at https://issue.k8s.io/85233


The following versions of the CSI sidecars have been fixed:

external-provisioner:

   -

   v0.4.3
   -

   v1.0.2
   -

   v1.2.2
   -

   v1.3.1
   -

   v1.4.0


external-snapshotter:

   -

   v0.4.2
   -

   v1.0.2
   -

   v1.2.2


external-resizer

   -

   v0.3.0


No fixes in kubernetes/kubernetes are required.


Affected Components and Versions

The following Kubernetes versions are affected with default feature gates:

   -

   v1.16.0+


The following Kubernetes versions are affected with non-default alpha
VolumeSnapshotDataSource,
ExpandCSIVolumes, and VolumePVCDataSource feature gates enabled:

   -

   v1.12.0+


CSI drivers installed with these kubernetes-csi sidecars versions are
affected:

external-provisioner: v0.4.1-0.4.2, v1.0.0-1.0.1, v1.1.0-1.2.1, v1.3.0

external-snapshotter: v0.4.0-0.4.1, v1.0.0-1.0.1, v1.1.0-v1.2.1

external-resizer: v0.1.0-0.2.0



How do I mitigate the vulnerability?


As a short term mitigation, disable the VolumeSnapshotDataSource,
ExpandCSIVolumes, and VolumePVCDataSource Kubernetes feature gates in
kube-apiserver and kube-controller-manager. This will cause new
PersistentVolumeClaims to be provisioned ignoring the DataSource and
resizing requests will also be ignored. Note that this will cause new PVCs
that are intended to be provisioned from a snapshot or clone to instead
provision a blank disk.


Also, to disable taking volume snapshots, either remove the
external-snapshotter sidecar from any CSI drivers or revoke the CSI
driver=E2=80=99s RBAC permissions on the snapshot.storage.k8s.io API group.


Longer term, upgrade your CSI driver with patched versions of the affected
sidecars.


Acknowledgements


Thanks to Xiangqian Yu from Google for discovering this issue.


Thanks to Michelle Au, Jan =C5=A0afr=C3=A1nek, Hemant Kumar, and Xing Yang =
for
coordinating the fixes and release.


Thank You,


Tim Allclair on behalf of the Kubernetes Product Security Committee

--000000000000396a380597532a4d--
