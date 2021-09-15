X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2150" "Wednesday" "15" "September" "2021" "14:17:55" "-0700" "CJ Cullen" "cjcullen@google.com" nil "85" "[oss-security] [kubernetes] CVE-2021-25741: Symlink Exchange Can Allow Host Filesystem Access" nil nil nil "9" nil nil (number mark "U       cjcullen@goo Sep 15   85/2150  " thread-indent "\"[oss-security] [kubernetes] CVE-2021-25741: Symlink Exchange Can Allow Host Filesystem Access\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2021-25741: Symlink Exchange Can Allow Host Filesystem Access" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3629 invoked by uid 550); 16 Sep 2021 06:37:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1798 invoked from network); 15 Sep 2021 21:18:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=1ZbMgJpAla/JPP3jO9wqf0p97BGzX/mwW1+hZrdiarg=;
        b=qo/aMX4KFzlGhlnnK4AotwpK69qx38qlSG1VPH4B1/frTqkgcFMazW6ohLTrn4KRMe
         UntWcCzOwnZ3xOJks13dlrZhf4ibSPGkyqAdvK7UuiD+jfH1jleIVot30ym3RtVUoZMj
         A5CV5DlX9Hf94dZ/qHf+E0pjJrT++xPLDxMmJGpC12noSeL5e4jaeRNLEwx5xavUlg9t
         pS9gP07rhtZHOly15gss3hX7bqakQODd5gRGfh4HDHrjkpAemVJOz/4AxtRbXWwYNYzk
         oPz6vwZtptaWw4L30Ikf2VF19oUUu5HO8Ax19l/CK09q6DJKNGUbwdLsUfmEpQ1swtPB
         nETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=1ZbMgJpAla/JPP3jO9wqf0p97BGzX/mwW1+hZrdiarg=;
        b=1cQDhjun69H/a/TsP1goilW1zXs4CbYTognQx4smsDRoU+VIToYUDE+hVc7KGmE/2g
         h/wnWGGekLb9/2zYxXMnWPCt+fx+xN24P+n/qZ9Ff52QTLKDLPuCt9NdTsZf4KjzWjDf
         Mk3U/dOXy4VUVUQeN+kgWei3as5WDeUVRL+6ArB5LPHR+H9DFwqr22vnF36wvk1w8sT1
         JNgUu9ZH/MayGlOKj1TWrVGh7QmcNuxSqO0KfUQribYLlbHMUH2cCr0n8ZEk2vG5B36g
         QZPapJbSySk/Dql1ES1GY5Ky84C2Gnc6yGJqJU4k1PWZntkbyCJx1KD2/mE+zAnWULa3
         Flbw==
X-Gm-Message-State: AOAM5312b5nTS0KftZ7pqyWDdg/sYaef+tky6bCBLLtSgOIq3zlLGE7X
	VL3sBYoXE8of19LCnyfsEMDY62glb42Y27UTNBBzO0aCY5o=
X-Google-Smtp-Source: ABdhPJwbSXJIAnyJFaRDXPlbPUK5aJqT+Wkag2GMV3e0ejACZlNbHXx7C0u71EX9o52s0MyHKkLu/Jt2VtqQ9HJEOu8=
X-Received: by 2002:a25:cbc3:: with SMTP id b186mr2583845ybg.199.1631740686874;
 Wed, 15 Sep 2021 14:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGCpq74r4b9KE4oG7NitWRLoU0ZiEsx1qNnDkU-0TeWDHw@mail.gmail.com>
In-Reply-To: <CABdrxGCpq74r4b9KE4oG7NitWRLoU0ZiEsx1qNnDkU-0TeWDHw@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 15 Sep 2021 14:17:55 -0700
Message-ID: <CABdrxGDyYMjUeuWmRtbmwmcCAXGiWEqtCqJnFcTQaadi401bNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000002374605cc0f3c92"
Subject: [oss-security] [kubernetes] CVE-2021-25741: Symlink Exchange Can Allow Host
 Filesystem Access

--00000000000002374605cc0f3c92
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a user may be able to
create a container with subpath volume mounts to access files & directories
outside of the volume, including on the host filesystem.

This issue has been rated High (CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>),
and assigned CVE-2021-25741.
Affected Components and Configurations

This bug affects kubelet.

Environments where cluster administrators have restricted the ability to
create hostPath mounts are the most seriously affected. Exploitation allows
hostPath-like access without use of the hostPath feature, thus bypassing
the restriction.

In a default Kubernetes environment, exploitation could be used to obscure
misuse of already-granted privileges.
Affected Versions

   -

   v1.22.0 - v1.22.1
   -

   v1.21.0 - v1.21.4
   -

   v1.20.0 - v1.20.10
   -

   <= v1.19.14

Fixed Versions

This issue is fixed in the following versions:

   -

   v1.22.2
   -

   v1.21.5
   -

   v1.20.11
   -

   v1.19.15

Mitigation

To mitigate this vulnerability without upgrading kubelet, you can disable
the VolumeSubpath feature gate on kubelet and kube-apiserver, and remove
any existing Pods making use of the feature.

You can also use admission control to prevent less-trusted users from
running containers as root to reduce the impact of successful exploitation.
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See Kubernetes Issue #104980
<https://github.com/kubernetes/kubernetes/issues/104980> for more details.
Acknowledgements

This vulnerability was reported by Fabricio Voznika and Mark Wolters of
Google.

Thanks as well to Ian Coldwater, Duffie Cooley, Brad Geesaman, and Rory
McCune for the thorough security research that led to the discovery of this
vulnerability.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--00000000000002374605cc0f3c92--
