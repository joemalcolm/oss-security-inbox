X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["986" "Thursday" "14" "January" "2016" "12:53:53" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty12XVisk8s8SrAuQoPeNtt2Q=hGWN9bAg0XGZDDMCkMMA@mail.gmail.com>" "35" "[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" "^Date:" nil nil "1" "2016011419:53:53" "[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" (number mark "        kseifried@re Jan 14   35/986   " thread-indent "\"[oss-security] Re: CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy\"\n") "<CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>" ("<CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9706 invoked by uid 550); 14 Jan 2016 19:54:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9682 invoked from network); 14 Jan 2016 19:54:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=QLtf+iMobyk82qvcckbGIp3fDavIdpiVLxqpAvloCSE=;
        b=Kjj+gslW5sPUteNsl5oHjbsAzU4FowmsRp8A42g4QKvYw62ZhM6Is3JiqTtUpGpFuW
         5YtB07J5lQl7/Czj84gk/5Y3jjRdcjrYeu54eXd4M8FXU8yk5QkwtGCKeQ7gSSNIueEU
         VQ8JkJ7fTCvGS5Jkvwd7Z7tr6jBSlZ9KGgOwi3J5khZwz0ntEmWKUZH+eUeQvb/pouc7
         YVai402zUEDIvEbczKnpII2xt4VSp+SVROjRf1vkwCDBfCv2FBebiP/H6WP2WNqStYhZ
         vdR76Op+xDJNRPl8VFBvDWBm/Yxzb0dTIOK55ms27F9g7YiiZtIW7oVwJps1koxNLzRx
         7tdA==
X-Gm-Message-State: ALoCoQktZn9TMPUPxCTuUgenDaePKOxv3+YjiOEV2wK4qsRBWMrzqnlzWtFLEeGIXR+9JCjMvFiYv6dKdq0rIf8dp3nsuzycnAKkqBMM8qbYCIG0XYNCg+Q=
MIME-Version: 1.0
X-Received: by 10.129.82.18 with SMTP id g18mr3841349ywb.97.1452801234026;
 Thu, 14 Jan 2016 11:53:54 -0800 (PST)
In-Reply-To: <CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>
References: <CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>
Message-ID: <CANO=Ty12XVisk8s8SrAuQoPeNtt2Q=hGWN9bAg0XGZDDMCkMMA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114dac4e7bf9e6052950a52a
Date: Thu, 14 Jan 2016 12:53:53 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for Kubernetes api server: build config to a strategy
 that isn't allowed by policy
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>

--001a114dac4e7bf9e6052950a52a
Content-Type: text/plain; charset=UTF-8

Ping, Mitre can I get a CVE here please? Also for the other Kubertes issue.

On Tue, Jan 12, 2016 at 11:04 AM, Kurt Seifried <kseifried@redhat.com>
wrote:

> CVE request (one is the problem, the other the fix):
>
> https://github.com/openshift/origin/issues/6556
> https://github.com/openshift/origin/pull/6576
>
> You can modify a build so that it escalates privileges when built, you
> can't build it yourself (that fails) but if the imagestream trigger is used
> then it would build and you'd have escalated privileges.
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114dac4e7bf9e6052950a52a--
