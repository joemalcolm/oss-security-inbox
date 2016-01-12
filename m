X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["630" "Tuesday" "12" "January" "2016" "11:04:06" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>" "20" "[oss-security] CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" "^Date:" nil nil "1" "2016011218:04:06" "[oss-security] CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy" (number mark "        kseifried@re Jan 12   20/630   " thread-indent "\"[oss-security] CVE request for Kubernetes api server: build config to a strategy that isn't allowed by policy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19864 invoked by uid 550); 12 Jan 2016 18:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19844 invoked from network); 12 Jan 2016 18:04:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=OpNu5tNE70AcdQ4lIZoDtzWpX5KmK9iy2VZCtQrhavw=;
        b=KEFEDHlAoL16LHBGxYEMGJxtWreBUUXvX4oq7Gp9d/winUiBuVhIxyM9zK1qcFRqeV
         7beF8AQMxpd5TUgDV8Su51Rty6UJ/krU32poJBN+Vss4Fjgl8q2amCyVhlorYu1cBpOK
         qJtNU6i9cMwJPYbjwIOagYGAjZr73FvORlxHnynVvuGchp2mLHFj/FUPCn+lG7AJOKDT
         5zoZGHNWdP5AvbL4eKABPqxaBqwCrGSdMY1pZ+WFHYr4ZV8231cUEAEHoxV1h97tHT0T
         9DRbzG5qtjogTKF2kGMv4XAseM9kdrAcH1kzaQLm7cITS7ZxZaroyUuUUC2CfZKz2r9b
         Emdw==
X-Gm-Message-State: ALoCoQnVrme5G4wb2nS3k86xcw5FmDIKBKwdK/HUcYJlZH4mVKIqv8n+AMfLO/bLSbP6Hj8/bftNJRyC+D+rxlhuAqLAVyufqR5Fs+kTl2SxKJp4VfMMjdE=
MIME-Version: 1.0
X-Received: by 10.129.39.2 with SMTP id n2mr89996869ywn.303.1452621846200;
 Tue, 12 Jan 2016 10:04:06 -0800 (PST)
Message-ID: <CANO=Ty1Gis741iXUVrpYbBXi3S_4bNdTu7tbCb12Zz+5JVnPQg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114096ea22fcae052926e15e
Date: Tue, 12 Jan 2016 11:04:06 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for Kubernetes api server: build config to a strategy
 that isn't allowed by policy
To: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>

--001a114096ea22fcae052926e15e
Content-Type: text/plain; charset=UTF-8

CVE request (one is the problem, the other the fix):

https://github.com/openshift/origin/issues/6556
https://github.com/openshift/origin/pull/6576

You can modify a build so that it escalates privileges when built, you
can't build it yourself (that fails) but if the imagestream trigger is used
then it would build and you'd have escalated privileges.

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114096ea22fcae052926e15e--
