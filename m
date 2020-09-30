X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Wednesday" "30" "September" "2020" "20:40:59" "+0530" "Hardik Vyas" "hvyas@redhat.com" "<CAOo2v=CLkuWf46je09e_h_5NkFS8hihdsBdarZgC1bXV3AB0PA@mail.gmail.com>" "29" "[oss-security] CVE-2020-10763 heketi: gluster-block volume password details available in logs" nil nil nil "9" "2020093015:10:59" "[oss-security] CVE-2020-10763 heketi: gluster-block volume password details available in logs" (number mark "U       hvyas@redhat Sep 30   29/730   " thread-indent "\"[oss-security] CVE-2020-10763 heketi: gluster-block volume password details available in logs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10763 heketi: gluster-block volume password details available in logs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20090 invoked by uid 550); 30 Sep 2020 15:28:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13684 invoked from network); 30 Sep 2020 15:11:43 -0000
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601478691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=7S8Y8SP8Srh+kFHIEOCBU1aEfjtqHd0pj2HW4KD46dc=;
	b=HzmS2islYcbN8lYL7bTNk0bzvKpx/fcs5NSPgCg7k38nnIUnt7mOvKWyxF7pTT9ffSWflq
	hdYIrxpihN+ZudWbCBNUl5wp11uwTE1uSFLhjtx4SpLI1CsuOUyqDP8iVNYzLdSgTA2psu
	xFHHOYGsRSijpz9XvRtcoYomIR24OUI=
X-MC-Unique: dlUz4MwwO_y925E6FVPTRA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7S8Y8SP8Srh+kFHIEOCBU1aEfjtqHd0pj2HW4KD46dc=;
        b=NHWQabgKYGwzKfLAtSlxhC12d0WWqJfR0QA2R4F7xdy74u/OUUFAr0n59jqMSIILUB
         M8VzVB04lObDSyFUNCOowXbyUV4fMKNl4FqFaD734xT8E3W1Oc0p/PD1DRK817qKzuWL
         WTkiT46PhHuhFqhKfQTIhkJtdCsMLzMaS47zX0UaQoX0ObLMJBSh8ZwzLHyrEWdYgtdt
         Vk8ZuxhvVkmSceBtokP5GOw7+QMkp1vdiXxJif9fMfQQ7QrgScrBN40+7ocmtrEgPo2v
         5prcMofaQcRHUOk+RCfvULpHTujXd55wnEhJmXrN52CLEP+GbYgwomqTRnYs05KBIoMx
         cZPA==
X-Gm-Message-State: AOAM533AfDn6ElbcIS9IjuHOOaiojmSRBQIiCOSYfXIOmCT9pk8+jgS9
	MtnRbjvPG11lVkZEIW+fj6+oRIhdx6QfyPOQgr7iUurMvdTkooV2Q9MRnrHFld5Doo1t4W5fuwU
	xoPB4a4vfmYtUIQdCffx1y/7BYTaMuyYF09GY6QwiN+EV
X-Received: by 2002:a37:a207:: with SMTP id l7mr3102584qke.64.1601478671196;
        Wed, 30 Sep 2020 08:11:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwYSKapmbDls6hcMwtQWnDBN+XX7122YZC1eAKlbUJ2J2G3yhXIsJ/msHr38pxzReHvIChyIL7hCnZqRqS/bKY=
X-Received: by 2002:a37:a207:: with SMTP id l7mr3102558qke.64.1601478670835;
 Wed, 30 Sep 2020 08:11:10 -0700 (PDT)
MIME-Version: 1.0
From: Hardik Vyas <hvyas@redhat.com>
Date: Wed, 30 Sep 2020 20:40:59 +0530
Message-ID: <CAOo2v=CLkuWf46je09e_h_5NkFS8hihdsBdarZgC1bXV3AB0PA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hvyas@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004aaa9e05b0894fd0"
Subject: [oss-security] CVE-2020-10763 heketi: gluster-block volume password details
 available in logs

--0000000000004aaa9e05b0894fd0
Content-Type: text/plain; charset="UTF-8"

Hello,

An information-disclosure flaw was found in the way Heketi logs sensitive
information.
This flaw allows an attacker with local access to the Heketi server, to
read potentially
sensitive information, such as gluster-block passwords.

CVE-2020-10763 has been assigned for this flaw.

Upstream PR: https://github.com/heketi/heketi/pull/1790
Release: https://github.com/heketi/heketi/releases/tag/v10.1.0

Credit: Prasanna Kumar Kalever (Red Hat)

Thanks,
-- 

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381
secalert@redhat.com for urgent response
<https://www.redhat.com>

--0000000000004aaa9e05b0894fd0--

