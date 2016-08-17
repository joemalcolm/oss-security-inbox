X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["845" "Wednesday" "17" "August" "2016" "19:30:10" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>" "33" "[oss-security] CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation" nil nil nil "8" "2016081717:30:10" "[oss-security] CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation" (number mark "U       cbuissar@red Aug 17   33/845   " thread-indent "\"[oss-security] CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18107 invoked by uid 550); 17 Aug 2016 17:30:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18086 invoked from network); 17 Aug 2016 17:30:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xrwH1HbjNjzyQCPErcGbsaL1YKqGadpu5bKGLv/18Nk=;
        b=jJMAlO02sHvfiFZqZOcvt2aACHJ7kBxl9xcJSYYVKcE5IChxNf++hQ7DAEYTrsFvRh
         YDJvS3dcwGz7K9Xrfy70eTr9wFXx3LIFNwgbP2eBwrGt6xUFayQpRu3WmTFDFqiysFGK
         1Oy8rRVeXS86GQAWCCEqTXVAyzIiJ/hO/MH+SAv1OvxGgHDCCKgr8OPStWSM+hckbs5l
         vP/rhLzvVn5psgRzfUazNmazRTsva/te3p8gwm4fjkbN6HbSkBIPV2EMYR+eXbAdmcm6
         VWI+3eTqZ6+u7oR5LQX5ItzeRLViFiV3O2GWdyZ0WGHsGchOwarvVBfSKZlEZncOFbwm
         61YA==
X-Gm-Message-State: AEkoouvDkGCyDREU5laL3iPwk/LD4HWtm0F5poLLYoL73r3jbxMCu88kt93YzQ7xhMA2dUy09Vc9YbprP//YOZhF
X-Received: by 10.98.33.72 with SMTP id h69mr76076523pfh.28.1471455011056;
 Wed, 17 Aug 2016 10:30:11 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Wed, 17 Aug 2016 19:30:10 +0200
Message-ID: <CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113efdde3cd323053a47d1c7
Subject: [oss-security] CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation

--001a113efdde3cd323053a47d1c7
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following CVE:

CVE-2016-5404 freeipa: Insufficient privileges check in certificate
revocation

Description :
An insufficient permission check issue was found in the way IPA server
treats certificate revocation requests. An attacker logged in with the
'retrieve certificate' permission enabled could use this flaw to revoke
certificates, possibly triggering a denial of service attack.

All versions are affected.

Patches can be found on the corresponding Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-5404

Impact: Moderate
CVSS3 scoring : 4.3 CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L

Reported by: Fraser Tweedale (Red Hat)

Best Regards,

-- 
Cedric Buissart,
Product Security

--001a113efdde3cd323053a47d1c7--
