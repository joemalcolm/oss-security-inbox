X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1137" "Friday" "5" "July" "2019" "16:31:36" "+1000" "Daniel Axtens" "dja@axtens.net" "<8736jl0z7b.fsf@dja-thinkpad.axtens.net>" "28" "[oss-security] CVE-2019-13122: Patchwork: XSS via Message-ID " nil nil nil "7" "2019070506:31:36" "[oss-security] CVE-2019-13122: Patchwork: XSS via Message-ID" (number mark "U       dja@axtens.n Jul  5   28/1137  " thread-indent "\"[oss-security] CVE-2019-13122: Patchwork: XSS via Message-ID \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-13122: Patchwork: XSS via Message-ID " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1191 invoked by uid 550); 5 Jul 2019 10:50:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7896 invoked from network); 5 Jul 2019 06:31:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=axtens.net; s=google;
        h=from:to:cc:subject:date:message-id:mime-version;
        bh=xnLSe5kwwFv1ay04p0BdU1WuUF36cxNl39CKD4pGCsc=;
        b=ePLzSHTMi2ol+y2eca/cYIZNx/avyz4Vm6NN7f92B5H+OdIzHOrUb7pay9oPHCToP/
         Pe/aQy5WLY4cerBTgskiNkZszA5ytvoSGNNa5PdvxaJgiIrPF4tMIu9QuXtPeT2pSalv
         ak7Kp53u6EoBU854wRROat3dFbFR+il0rBOb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
        bh=xnLSe5kwwFv1ay04p0BdU1WuUF36cxNl39CKD4pGCsc=;
        b=Q9Dnavy5EuZssB/7pFViVRnoHBv0Hc6Amhf7FIzK69pome34hNKoXp/LH34ShAZ6b/
         jJbRusW48cPmAbnKsy7onwEn6NfJajBieMC5tfsoYyT4bpxKrx6puCZG4nV5WAV+XXOQ
         Ha1ouwWHxzJECC/OC/FJnHL5+g2W+Z7b1apsv5GVFeHZlqleqTT6YipKXM3NOBV6tWqb
         b6ij76GXyrQtjt2pO9EG1eDQPtEE9tgh5nMZBxWohXhUvi2JN9ZmH+JClchPSzTzO6Fb
         L2w4dOpkLRRvNR7cY5ozkf0XFZoCFzuEWdjMqbxVh4dHUhvU3T+B6Nqi9vXgYpXoyoOs
         H9xA==
X-Gm-Message-State: APjAAAV48XoeUC3S3/H9RXUqR3yClNtv1nRvJJuRUCt9ItICNITebM/K
	oahON+CNI5nFDH25+yVIJ3eeDO5qMjg=
X-Google-Smtp-Source: APXvYqyrv8ryZBsh7PYnObH6gEO7EDvzibujd0btk8KVSFSLx+bL5lnxoRMQi67iVEP7seOSkt2F6A==
X-Received: by 2002:a63:1f47:: with SMTP id q7mr3131500pgm.264.1562308301563;
        Thu, 04 Jul 2019 23:31:41 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: oss-security@lists.openwall.com
Cc: Andrew Donnellan <ajd@linux.ibm.com>
Date: Fri, 05 Jul 2019 16:31:36 +1000
Message-ID: <8736jl0z7b.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2019-13122: Patchwork: XSS via Message-ID 

Hello,

Patchwork is a web-based patch tracking system designed to facilitate
the contribution and management of contributions to an open-source
project that uses a mailing list for contributions.
(http://jk.ozlabs.org/projects/patchwork/)

Andrew Donnellan discovered an XSS via the message-id field. A malicious
party could send a patch with a message ID that included a script
tag. Because of the quirks of the email RFCs, such a message ID can
survive being sent through many mail systems, including Gmail, and be
parsed and stored by Patchwork. When a user views a patch detail page
for the patch with this message id, the script would be run.

This is due to an erroneous mark_safe() in the template tag that
renders message IDs. This has been present since v1.1 of upstream
Patchwork, but does not affect the FreeDesktop fork.

Over the last few days, we have disclosed this bug to the admins of
patchwork instances that we could identify. Several key instances have
already been patched.

The vulnerability is fixed in Patchwork v2.1.4 and v2.0.4, which have
just been released.

Kind regards,
Daniel Axtens
Patchwork maintainer
