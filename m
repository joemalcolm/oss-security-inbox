X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1476" "Wednesday" "10" "June" "2020" "21:21:03" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>" "48" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" "^Date:" nil nil "6" "2020061011:21:03" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" (number mark "        wmealing@red Jun 10   48/1476  " thread-indent "\"[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22291 invoked by uid 550); 10 Jun 2020 11:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22273 invoked from network); 10 Jun 2020 11:21:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591788086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=kL7UQqHRIICGwFyObtt/00tGDrW1NzUl6TQXtWtVidI=;
	b=HopCDNupra0ondK1hScrGYJ6r2BmmpAZ30UU1GRG0P7LZTkhTW5hlfnPq8fkNQbQrOq9Ol
	tfMbZJHU157Wo65VJhpU96g2s6l7rWfceDFYvqbVE8Y8Zlt0mvFMRf4nPfAM7GXdeqgbpv
	daOWqk77bpGJP5w2pYYecum5w4HXneA=
X-MC-Unique: oRcsOd9ANde5pbA83qpHXA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kL7UQqHRIICGwFyObtt/00tGDrW1NzUl6TQXtWtVidI=;
        b=N9dL+nrr86SGRIlxw8mdknkx56OcJ8dEwvMgPDMMeWYoI5kYCwI0elBTa7eLlKGHRZ
         TaEWnPTH/+1SyfUvTYowj3nkZ/CFNT2YmKZ0O6hHiFI69DA2WhmBV5OB3GMhxUvs0Xru
         MnwPTeC2ASiXzl2cDrnRLQww+fMLP6IHXQkvp+VlfrRAJiDNz2TeunKRdt2X1dAw8BVD
         mSMBIM0VAUq+Nr7/tLyAtPYeA+GNtPPCGe1paQRWUPJf2abaOWWpyBkgn8XG/iG2adBK
         QzkBLpWUcQ0C407n/weFoSvT/MJRa6ikPPJlkZTPEW35U6JU3JInD2KSuf58Ar9kOktD
         nWaA==
X-Gm-Message-State: AOAM533G81RT/hq86zeOT8oZyqL7ySTCIFblaE9ymNIfU+VH3IyCZJNb
	+a+Pk9S3fFbmXmEbln2Vl6aoivjq3TNxu8rmIgab0z3A2M79hxsV4DDQrJa7QcT+nhAJEeUaU75
	hTUi+BNaQnh6hC5+m2g+HOLUaT0phBWY7Lb7+qpG+27wo
X-Received: by 2002:adf:e749:: with SMTP id c9mr3410357wrn.25.1591788075104;
        Wed, 10 Jun 2020 04:21:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4ePnFckpLTRfQ+9hynFCx1mg3AvOtBG/qJfgGrneKg076SBCPDubERmmEMR7cEt/sl1ipUB1sQa5cUWub6Oc=
X-Received: by 2002:adf:e749:: with SMTP id c9mr3410336wrn.25.1591788074867;
 Wed, 10 Jun 2020 04:21:14 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 10 Jun 2020 21:21:03 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768
To: oss-security@lists.openwall.com

A number of flaws were discussed in the registers article this morning
( https://www.theregister.com/2020/06/09/linux_kernel_bugs_spectre )
which have been submitted for inclusion upstream already.

Listed below are the CVE's that Red Hat has assigned.  As far as I can
tell there are no existing  CVE assignments for these flaws. I have
not done adequate investigation to correctly identify affected
versions of the kernel, however this is a flaw in the fix for
CVE-2018-3639, affected systems would likely be affected by the flaws
listed below if they required the fix.

CVE-2020-10766
- Rogue cross-process SSBD shutdown. Linux scheduler logical bug
allows an attacker to turn off the SSBD protection.
https://lkml.org/lkml/2020/6/9/181

CVE-2020-10767
- Indirect Branch Prediction Barrier is force-disabled when STIBP is
unavailable or enhanced IBRS is available.
https://lkml.org/lkml/2020/6/9/183

CVE-2020-10768
-  Indirect branch speculation can be enabled after it was
force-disabled by the PR_SPEC_FORCE_DISABLE prctl command.
https://lkml.org/lkml/2020/6/9/184

The Red Hat Bugzillas for these flaws are

http://bugzilla.redhat.com/CVE-2020-10766
http://bugzilla.redhat.com/CVE-2020-10767
http://bugzilla.redhat.com/CVE-2020-10768

These  bugzillas are a work in progress and will be updated as I get
more time to correctly input adequate information.

Thank you.

-- 
Wade Mealing

Product Security - Kernel

Red Hat

wmealing@redhat.com

TRIED. TESTED. TRUSTED.

