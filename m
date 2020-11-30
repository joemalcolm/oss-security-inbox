X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3937" "Monday" "30" "November" "2020" "17:07:43" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>" "127" "Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" nil nil nil "11" "2020113016:07:43" "[oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" (number mark "U       mcascell@red Nov 30  127/3937  " thread-indent "\"Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change\"\n") "<E1khX2v-0002f4-3b@xenbits.xenproject.org>" ("<E1khX2v-0002f4-3b@xenbits.xenproject.org>") nil nil nil nil nil nil nil "Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9955 invoked by uid 550); 30 Nov 2020 16:09:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9455 invoked from network); 30 Nov 2020 16:08:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1606752479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0UmyB6wD7lJntS672UF2e+w1KzmAZRBaPaC50VvJwmo=;
	b=LniLxDPzSSHChsLHlAf14sy2fZNK2qljv57gnAVEJM0Kyv/UpqkRcj6moTNJnRFUa+CfIL
	FEQulRqaWaW4uUfZAtd4z4Vp/+mebfih2x0wYMd+4UYnbKQxSb3MgUy8T4XcvSFgyeGfPW
	leV2prmhcI3P9hwYeyz5KYQmA/WWPcQ=
X-MC-Unique: xFIP1RJkPvaoRRwN9h8hrA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0UmyB6wD7lJntS672UF2e+w1KzmAZRBaPaC50VvJwmo=;
        b=k3MTj2I+eaUc6WetLH4BR1Z6ewW3CZzY9MsrJSySmkEpqiB5sti1YCbn7DxMW+bRY+
         fM0NDjkAO8KXHBx0qoE1+fJ63m+FukFIikANCt11AhVmtErreIp9eCcHUfMhHlFsI/5Q
         33FNJmJahHVx+OtnbReMsE2lLXoaEp03VtzSvIs/Mgpe3ZAuA8sh69xs0NBPSCNi3jLp
         KB9cFAWoMV3Mh3frgizSOPQaMpPU1CaGeNrOYSRp6sig/vpyVSJYGgJ29AiZ35oSKgFJ
         YoX7wJ9gL1KQESe+juuU2eDl99lLjdM48Vo9v4Yu+WA7hA00+N4gGMIWG7vAU/MFyaEW
         Kgtg==
X-Gm-Message-State: AOAM533uv/jaT9OrDRmQRbyoclDoAg/cckPKj6XcVOB4nUZoTj8QnJr6
	Sf+r4S9h9PRtg90Ttmi+LwfIM/NRbPNGyaUp9ESiUN5oTazM4t9wixk9t564OqP+ffE3c/gGt2Q
	Rk2zrr/6OilPCmMtPRbgcypWTcOL9t9XUl6vE8Mlriycm
X-Received: by 2002:a17:906:fa8b:: with SMTP id lt11mr16719948ejb.94.1606752474439;
        Mon, 30 Nov 2020 08:07:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwPTcg7h61WhXOewQ/zmeslpkWzRb0jdxrrFpipJqK+4vktZ+WMPvlmXuKlJSjMc6S1nyGtIi5gZ4FFHqNSzIw=
X-Received: by 2002:a17:906:fa8b:: with SMTP id lt11mr16719934ejb.94.1606752474226;
 Mon, 30 Nov 2020 08:07:54 -0800 (PST)
MIME-Version: 1.0
References: <E1khX2v-0002f4-3b@xenbits.xenproject.org>
In-Reply-To: <E1khX2v-0002f4-3b@xenbits.xenproject.org>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 30 Nov 2020 17:07:43 +0100
Message-ID: <CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org, 
	xen-users@lists.xen.org, 
	"Xen.org security team" <security-team-members@xen.org>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption
 from XSA-346 change

Hello,

Has a CVE been assigned for this issue?

Regards,

On Tue, Nov 24, 2020 at 1:06 PM Xen.org security team <security@xen.org> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>                     Xen Security Advisory XSA-355
>                               version 2
>
>                  stack corruption from XSA-346 change
>
> UPDATES IN VERSION 2
> ====================
>
> Added metadata file.
>
> Public release.
>
> ISSUE DESCRIPTION
> =================
>
> One of the two changes for XSA-346 introduced an on-stack array.  The
> check for guarding against overrunning this array was off by one,
> allowing for corruption of the first stack slot immediately following
> this array.
>
> IMPACT
> ======
>
> A malicious or buggy HVM or PVH guest can cause Xen to crash, resulting
> in a Denial of Service (DoS) to the entire host.  Privilege escalation
> as well as information leaks cannot be excluded.
>
> VULNERABLE SYSTEMS
> ==================
>
> All Xen versions which have the patches for XSA-346 applied are
> vulnerable.
>
> Only x86 HVM and PVH guests can leverage the vulnerability.  Arm guests
> and x86 PV guests cannot leverage the vulnerability.
>
> Only x86 HVM and PVH guests which have physical devices passed through
> to them can leverage the vulnerability.
>
> MITIGATION
> ==========
>
> Not passing through physical devices to untrusted guests will avoid
> the vulnerability.
>
> CREDITS
> =======
>
> This issue was discovered by Jan Beulich of SUSE.
>
> RESOLUTION
> ==========
>
> Applying the attached patch resolves this issue.
>
> Note that patches for released versions are generally prepared to
> apply to the stable branches, and may not apply cleanly to the most
> recent release tarball.  Downstreams are encouraged to update to the
> tip of the stable branch before applying these patches.
>
> xsa355.patch           xen-unstable - Xen 4.10.x
>
> $ sha256sum xsa355*
> a93bfc376897e7cffd095d395f1a66476adb9503d7d80a59b7861e64c2675323  xsa355.meta
> dae633c11cf2eff3e304737265e18ab09213e8e4640458080a944ae7a40819a4  xsa355.patch
> $
>
> NOTE CONCERNING SHORT EMBARGO
> =============================
>
> This issue is likely to be re-discovered as the changes for XSA-346
> are deployed more widely, since the issue is also triggerable without
> any malice or bugginess.
>
> DEPLOYMENT DURING EMBARGO
> =========================
>
> Deployment of the patches and/or mitigations described above (or
> others which are substantially similar) is permitted during the
> embargo, even on public-facing systems with untrusted guest users and
> administrators.
>
> But: Distribution of updated software is prohibited (except to other
> members of the predisclosure list).
>
> Predisclosure list members who wish to deploy significantly different
> patches and/or mitigations, please contact the Xen Project Security
> Team.
>
> (Note: this during-embargo deployment notice is retained in
> post-embargo publicly released Xen Project advisories, even though it
> is then no longer applicable.  This is to enable the community to have
> oversight of the Xen Project Security Team's decisionmaking.)
>
> For more information about permissible uses of embargoed information,
> consult the Xen Project community's agreed Security Policy:
>   http://www.xenproject.org/security-policy.html
> -----BEGIN PGP SIGNATURE-----
>
> iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAl+89pEMHHBncEB4ZW4u
> b3JnAAoJEIP+FMlX6CvZRHQH/1D8CfjZWYgLcdYOg6sDO6BIK8IsnAiOoe2C8b9i
> M8QPFzHlUx09FI5CHVb0Va/pFliR1OS2tmmIU30DL9nmiDLcaP2uvpgJAYo5GwL5
> Rzccjo4qbXwfSRQvHmLzbr+XN8sHDxbekpFd8T5WvuarUgxOaPCLTfSG0nag/t52
> OVNIdDcP5lSt/Z88lYW75j4gBAsXUZDEXgn81JpeHj9js8YLFC3WFcwh58Jjd+hw
> 5DH955jNAKD8TRSy6uffDpvN1m9wm2vDGeXSUcJyswlV8Nqi6YRW4XO4Q6Cfj+CG
> LVBS/T977JZGJjRvTw4j0H+xAXiLFwQ1I/6v6fSZzxDMt9k=
> =+4M1
> -----END PGP SIGNATURE-----



-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

