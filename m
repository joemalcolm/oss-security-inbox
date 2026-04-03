Received: (qmail 22091 invoked by uid 550); 3 Apr 2026 09:01:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22072 invoked from network); 3 Apr 2026 09:01:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775206886; x=1775811686; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YeMNMGNqzYGNE5pShXL5nhc6D5wpdSfnemdMmuM3F2o=;
        b=gwE/yRo74ypL7knFKT5irqcJ4UTkkCJoCfF9tMieCbio286fr8tTzoeu9mp68BH5r0
         atetRmpPESOxbAHxqRf2t7bNHOs83IKGSrTHVlwJmz8b9nrN7L79SS+v54BvYpWdhvCh
         wFAswNH15ujSKWzydk1mKTwAFNYg+r2Mklrk8Zun3Oo/T01b1qqqr4zh9Fv5kzqEvoch
         oSv1KREKmeYrOlLnfEADHyHxEcnn+AMZ8gmLunyc3nZ6kEEeyX1WTzsKSzczK7nXFxng
         2yLrTqlDc8Boay2A2td7fFJ8BcaKfBCQy4pfNnhFylo0E1gZn1kn/fx7zwhi3Luls8Fm
         FrSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775206886; x=1775811686;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YeMNMGNqzYGNE5pShXL5nhc6D5wpdSfnemdMmuM3F2o=;
        b=KrDTlQCLPyT7THHDzGb5LQfDXaE9WsHRdczG4gKYF25ul0o0+g0PB6xKaSbuVWJMKA
         UloCWr2UoYwzKFahdZ9Lv1TmsrBowG8SwcmpYRTUcBGk3dU5th0YnrCn0zXJKIxpviRA
         IDhMRuV62c1iKrvIr08AQu5oc+MRxM2+uoRQVHj3gG+fzXsw2LsotLVqeuL9nQLLK4KX
         0rbu+Ifc6u443Ktu97wKDyP4tOX+Itu7yYQ9Q1Db8MbAVmarALz/suDapaP6sJRL5+3T
         4Rsb1aWKsZF9K1UNDXYEc+NIhZ9vxA7PO9d5Tkun8SgJgkbSRjXoPOB7GgluvgM/20+a
         CjoA==
X-Gm-Message-State: AOJu0YxebRqCQbdrjQ4eVSI8WSdJIL4f82gNt+1OHJkziErnI6Hj4OWO
	rz+wyt+1ozO6/r4KzWo/lCDaB8IFqgod3KliBPqZx4vOgw7q+2/7wsHbrzkvOViV
X-Gm-Gg: ATEYQzwjheg0abOu8SSPjZGGUBMEy+WXOjTog1EuQ1RokZYTvC9/IIM7tQaHd7kmyjL
	mabfsgFkAYnepJvACmAdWCcs8R10T9UQPBBacXNsW1PAJmkzim8Dq/PDIJ8pW5Ahrn+oG1cLAgf
	n5cpgL1QXQ9QkBdJrk3h/74pg8g/zdro4pKEIsJBIiKOo4Biu+4G3h1DewLvNQ4TnlvOWmD9IyX
	al5QLlQyeOPTaj9ICuykHaQyxGZU8LdHQ2T6CqGVfteqXc90yAfTe6XD7rXs76axWi+CG0huwYg
	9zqV6Jdld7P/LMJcWJ1soUyCezU4ituMJozSHldXjqidIw2rh9CGNDYKeDE/IyMWJQxkYrZyTxA
	KDmEn9Bw66IDoriLAIghVC9bmksBLewEM04QUqwtbiRb7IbieFmfXeX6V3a9JpQnn+2q8L3T1MU
	CF5vDeyEB2PRCCH6boIDMUSR/DaoBsVjE4gjynOKAadHp46cQsLpm/Nhf04Yg=
X-Received: by 2002:a05:600c:6385:b0:488:90ac:8f8d with SMTP id 5b1f17b1804b1-48899776385mr34536405e9.16.1775206886175;
        Fri, 03 Apr 2026 02:01:26 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 3 Apr 2026 11:01:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Damien Miller <djm@cvs.openbsd.org>
Message-ID: <ac-B5AHb_jwYnjPU@eldamar.lan>
References: <8054b51fdf431307@cvs.openbsd.org>
 <2180860.3VsfAaAtOV@fcf>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2180860.3VsfAaAtOV@fcf>
Subject: Re: [oss-security] Announce: OpenSSH 10.3 released

Hi Agostino,

On Fri, Apr 03, 2026 at 09:43:49AM +0200, Agostino Sarubbo wrote:
> On giovedì 2 aprile 2026 11:25:08 Ora legale dell’Europa centrale Damien Miller wrote:
> > Security
> > ========
> > 
> >  * ssh(1): validation of shell metacharacters in user names supplied
> >    on the command-line was performed too late to prevent some
> >    situations where they could be expanded from %-tokens in
> >    ssh_config. For certain configurations, such as those that use a
> >    "%u" token in a "Match exec" block, an attacker who can control
> >    the user name passed to ssh(1) could potentially execute arbitrary
> >    shell commands.  Reported by Florian Kohnhäuser.
> > 
> >    We continue to recommend against directly exposing ssh(1) and
> >    other tools' command-lines to untrusted input. Mitigations such
> >    as this can not be absolute given the variety of shells and user
> >    configurations in use.
> > 
> >  * sshd(8): when matching an authorized_keys principals="" option
> >    against a list of principals in a certificate, an incorrect
> >    algorithm was used that could allow inappropriate matching in
> >    cases where a principal name in the certificate contains a
> >    comma character. Exploitation of the condition requires an
> >    authorized_keys principals="" option that lists more than one
> >    principal *and* a CA that will issue a certificate that encodes
> >    more than one of these principal names separated by a comma
> >    (typical CAs stronly constrain which principal names they will
> >    place in a certificate). This condition only applies to user-
> >    trusted CA keys in authorized_keys, the main certificate
> >    authentication path (TrustedUserCAKeys/AuthorizedPrincipalsFile)
> >    is not affected. Reported by Vladimir Tokarev.
> > 
> >  * scp(1): when downloading files as root in legacy (-O) mode and
> >    without the -p (preserve modes) flag set, scp did not clear
> >    setuid/setgid bits from downloaded files as one might typically
> >    expect. This bug dates back to the original Berkeley rcp program.
> >    Reported by Christos Papakonstantinou of Cantina and Spearbit.
> > 
> >  * sshd(8): fix incomplete application of PubkeyAcceptedAlgorithms
> >    and HostbasedAcceptedAlgorithms with regard to ECDSA keys.
> >    Previously if one of these directives contains any ECDSA algorithm
> >    name (say "ecdsa-sha2-nistp384"), then any other ECDSA algorithm
> >    would be accepted in its place regardless of whether it was
> >    listed or not.  Reported by Christos Papakonstantinou of Cantina
> >    and Spearbit.
> > 
> >  * ssh(1): connection multiplexing confirmation (requested using
> >    "ControlMaster ask/autoask") was not being tested for proxy mode
> >    multiplexing sessions (i.e. "ssh -O proxy ..."). Reported by
> >    Michalis Vasileiadis.
> 
> Hello Damien,
> 
> thank you for bringing this to oss-security so that everyone is aware of it.
> 
> Regarding the security changes, we do not see any CVE assigned. Could you please clarify 
> your perspective on this? Are these changes considered simply hardening improvements, 
> or do they have a security impact that would warrant a CVE?

I think since yesterday there were CVE assigned actually by MITRE,
they should be:

https://www.cve.org/CVERecord?id=CVE-2026-35414
https://www.cve.org/CVERecord?id=CVE-2026-35385
https://www.cve.org/CVERecord?id=CVE-2026-35386
https://www.cve.org/CVERecord?id=CVE-2026-35387
https://www.cve.org/CVERecord?id=CVE-2026-35388

Regards,
Salvatore
