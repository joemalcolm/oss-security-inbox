Received: (qmail 1671 invoked by uid 550); 30 Sep 2025 15:50:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1334 invoked from network); 30 Sep 2025 15:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759244728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=3QqHNyQOAdQYYpNDBhQBOTGYDD0jJdXO4+6sRDePAos=;
	b=GnwOHlH6g4ecsSIGyw+WQgo8ZoPz267DrmwlGhKUtX0qr5caXAS/OMI0udlibgzMEdweNF
	ZDmLxX6CytndGI9m8/5oD56PvJ61fPrgoByHlfKY8NTzu9gDOWaveqH4JtekZzg82MDqkw
	QPKkOeo8j0qcNow2ZeNdm+E41GqnzZE=
X-MC-Unique: d52SUW1FPo6rkD4sQeSPrw-1
X-Mimecast-MFC-AGG-ID: d52SUW1FPo6rkD4sQeSPrw_1759244725
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759244725; x=1759849525;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3QqHNyQOAdQYYpNDBhQBOTGYDD0jJdXO4+6sRDePAos=;
        b=jn8Co6qrWWb8F+NSQ5rOBtLdBq+SSd5fc02kK6u3QXAkJsCcFSKb/a8Mhxlud1Czmp
         8OG6cXieZ0yN9gmVqRdhAKk6gpgFuwFbLplDw3k7YvptxeYwQps5AoKAOJ2xgXjpODx6
         eSL4h0BLkRAefBwkO3bM9tgGso/hLaX/ejTYUNV1f134wgpOxbZS4QWog4h3heUxKEC/
         kxqxnZWGA94Cx1s1fd4DUxazZZMmpJHDGg7RPDnLgcj6uxTbu+XtqEwRX+omPO8615K8
         h0tp2tZ3UAVgG1eX8g3sBA93SI9NDX/R1dgLk+FlendMBcPWaS9RQxABZ6uWYF3LYmFe
         eKQA==
X-Gm-Message-State: AOJu0YyVqqMik6xUvNFYAjOjN4stSqmLw/BXqNd6IUWEVNeg9vLVqpbD
	tNwGoPm8a6VZyF+DXPD4J9X2js7fX4u2Cl8dxiRpIL/8/C0Ncnbs//lSNcjAjlFMeOflCUVxjVn
	WHu07g3ukBAodBqA9BW5WxKch+yOBUck7Uv/VkiQPYXv2Ri9yshk4Ns8KoSP9CWvo1dtBv3xV95
	KW9VKw3anj3zJVYoRiVJo7nKtz398I54HA13tdqfTe4TR7XXSQVUxhaZA=
X-Gm-Gg: ASbGncvkm9JeTaV64iejePrur0NMEomJLFrv8XX7CNyP9R1LN7/P07lBc3qDgVDlEfk
	Jevpzw6i+otvX7OE6se08y8CZOzbl1m9wx+j0e2KXV2p22EHC92mnJGCImPgcliXGhNipl2AU1t
	R0lmHxIKbGZaDU3DBa7CJPoPpR
X-Received: by 2002:a17:90b:5109:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-3342a2498b0mr23985379a91.6.1759244725028;
        Tue, 30 Sep 2025 08:05:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqo3qoaqF9o7jpErnas083QgoNMyLgarMINWL1P/fb+sGNA/YjSYQXwgIVj6/7P9+maBd7HA1DFZoWyvtqBuU=
X-Received: by 2002:a17:90b:5109:b0:32b:baaa:21b0 with SMTP id
 98e67ed59e1d1-3342a2498b0mr23985297a91.6.1759244724436; Tue, 30 Sep 2025
 08:05:24 -0700 (PDT)
MIME-Version: 1.0
From: Marco Benatto <mbenatto@redhat.com>
Date: Tue, 30 Sep 2025 12:04:48 -0300
X-Gm-Features: AS18NWAUdnK7rCcUM-_oqarYpOQ23kBa3KQkKQB9XZHXUPuLQ3T9TtPDN9PxSZA
Message-ID: <CAOGQQ28HCe9Kjo7U7K_4pa+Fm6wy_EEUo_Fn0VYde_LEnPVVVw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: M6zVH6nAGDEUfvthgawE1BA2OoVBW09So_pt1upgc4w_1759244725
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] FreeIPA - CVE-2025-7493 - Privilege Escalation from host to domain admin

Hello all,

please find the announcement of a Privilege Escalation vulnerability
in FreeIPA bellow.

Upstream release note:

https://www.freeipa.org/release-notes/4-12-5.html

==== Security Report ====

* CVE-2025-7493

Continuation of CVE-2025-4404 due to incomplete uniqueness checks for multiple
Kerberos attributes. In CVE-2025-4404 it was found that uniqueness of the
canonical Kerberos principal name and its aliases was not complete. We further
found that cross-attribute uniqueness was not possible to enforce in 389-ds
LDAP server. As a result, it was still possible to add an alias of 'root' to a
Kerberos service principal controlled by a system already enrolled into IPA.

In order to prevent further attacks on existing Kerberos principals and
aliases, 389-ds LDAP server uniqueness plugin was extended to allow
cross-attribute uniqueness checks with custom LDAP match rules. The 389-ds
upstream issue https://github.com/389ds/389-ds-base/issues/6857 was fixed in
all supported 389-ds releases. FreeIPA fix for CVE-2025-7493 relies on this
change.

Additionally, FreeIPA team has decided to apply a Kerberos policy of rejecting
any ticket that lacks PAC structure in the evidence tickets presented in
service ticket requests sent to IPA Kerberos KDC.

PAC structure in Kerberos tickets contains a number of individual buffers that
encode information about the Kerberos client principal available to Kerberos
KDC. The structure is cryptographically signed and also contains additional
signatures that can be validated by both KDC and the service that will receive
the ticket.

Since FreeIPA 4.9.0, new deployments always configured to associate security
identifier (SID) information with each IPA user account and use it to issue
PACs. Machines enrolled into IPA environment and their Kerberos services also
get associated well-known SIDs. This allows to issue and validate PAC
structures with information known about the client principal, whether they are
from IPA realm or are coming from the trusted Active Directory domains. MIT
Kerberos 1.20 or later also adds cryptographically signed information about the
Kerberos principal that was used to request a Kerberos ticket. This additional
information allows application services to prevent account spoofing. To date,
only SSSD has enabled automated PAC validation on the client side.

To help applications, CVE-2025-7493 fix is to reject ticket requests that ask
for a Kerberos service ticket with an evidence ticket that lacks PAC
structure. PAC structure content is already validated against the original
requester information.

The fix at the Kerberos KDC side cannot help in the environments where SIDs
aren't associated with the Kerberos principals and no PAC is issued at all. We
urge FreeIPA administrators to upgrade their deployments and enable use of SIDs
and PAC generation to prevent the attacks associated with identity spoofing
through the Kerberos protocol.

FreeIPA identity mapping is described in details in the following design page:
https://freeipa.readthedocs.io/en/latest/designs/id-mapping.html

Red Hat's knowledge base also has practical articles helping to enable SIDs for
existing IPA deployments:
- "POSIX IDs, SIDs and IDRanges in IPA ",
https://access.redhat.com/articles/7027037
- "When upgrading to RHEL9, IDM users are not able to login anymore.",
https://access.redhat.com/solutions/7014959

=====

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

