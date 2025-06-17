Received: (qmail 11610 invoked by uid 550); 17 Jun 2025 13:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24444 invoked from network); 17 Jun 2025 13:21:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750166493; x=1750771293; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HjNHqHbI9etCr/VNJhA3fA6WZPCqhmZuRiM7VI/7bOM=;
        b=NKI5NiXHrlmKkgs5ydz9zYWh8/KZX8HnIwpCgnSB867PWCpAbmcdOErp4XcwtroZNk
         DEEkUj8ZG5zWUPfYKsoHsV83c2jTwhsTFcIP5BcSZD9qSbInvIjLNMwMPXMLYSsHTrq2
         YIRUgId8tdO8cyzE/AH6IV94pp3QXuP5maSTTQV07ZlQfdv+Ds0Yr+/8EFvfazHeGnmZ
         GWAhvAe8LgUJ8fBlVcoiUELOlpEeUeNjtsp1JysTeYnsWvgT6IlwOZZOPzQHawVqXYMD
         KrBKCAZxU2gwHoOCJQMeOHDFdI6AOolZd6aSHHKHYlCDu3KIMJc1vsu/fjCdeA9ZuEPI
         Tv8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750166493; x=1750771293;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HjNHqHbI9etCr/VNJhA3fA6WZPCqhmZuRiM7VI/7bOM=;
        b=nm1igWmrUIn8mHGYc8FBfM2m5KQKB8peRt6DNQre3PmlAY6+d8/PxhD7MvnHJxrHxw
         jU+4Z/LLyEOdxbj8rbYHroEncWLnl3Nrkk0M3jn2az8oCczR2EfKq08njqJi0YrWB7wr
         sitV6DFnm8vcd/38qTmWiNk6+eEcgwCqSukR47kEjHw1dN8i860r3E6d7mA9ePS4y6Po
         CBOOQgTSxVpasW4P0E8PiKD6oZsjJMv2tXmPg5sHnWeGMeb9Mpff5yr+LCQ4ZIC7LXA7
         e80oOsDb67q4uobUZrTaG4UDeXxKcGhyBNdr6ZwK3k+dI1Q3OkYrNsBSi7kiJtDjaPMc
         /pkQ==
X-Gm-Message-State: AOJu0YyViZPRrbvlicFiQsnMetOy7fyRk9NXdvj1pOMgnHUn+THpYY4v
	IOHSY9ayR7ljLI808nrL9cAGGStk1JS5y6obhp3b2COVNwnncujcZXFcEO2ab/OwmMC9TGbC+Wv
	up+kgXqo5t60COiFDeJ44QHKihr05w4GoUZ+DcDMi/ZDZ3cFslyhGp6VX918=
X-Gm-Gg: ASbGnctoSa5gCqLjfarxQW+JoKNio5CLyqQDkL1YS5xpa/bRMyRA7sn1dh1ZYmzqLf+
	Wzr58JnMTXUjekUyMWuAKqAGWTHE9AGka3bMIbCBI0OWrcT5AIOoG4qcA8Vhe8FOdsReuea+RgX
	FrZgf4htUgLGh3FgLjz+wrS3fBFjCvfoTYw8nLq4VLabvY+uT1OtQMCCefPmh1aN3i0nnzpSdcX
	Rqs
X-Google-Smtp-Source: AGHT+IHs7hURUWT8DKRHGckqIJZP3THBVSaZCyPi82hIanna46FB1tb2GY4qTNQytb54pDGaKoLSSJ2O3L1zm2PNRRo=
X-Received: by 2002:a50:c358:0:b0:609:99a7:efdb with SMTP id
 4fb4d7f45d1cf-60999a7f8b1mr37868a12.2.1750166492448; Tue, 17 Jun 2025
 06:21:32 -0700 (PDT)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Tue, 17 Jun 2025 09:21:21 -0400
X-Gm-Features: AX0GCFuLIQaHDIkGhco-HTEthtHWjc2LuKgBImI5SJ1yPqn1Wfk82HdFFdE9fjI
Message-ID: <CAHXwHVwBUCqgagS=RfdnNEoBkfmSTNJff28U=Syff0Chm0X4bQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000152fb60637c46418"
Subject: [oss-security] [kubernetes] Race Condition in Go allows Volume Deletion in older
 Kubernetes versions

--000000000000152fb60637c46418
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

The Go team has released a fix in Go versions 1.21.11 and 1.22.4 addressing
a symlink race condition when using os.RemoveAll. The Kubernetes Security
Response Committee received a report that this issue could be abused in
Kubernetes to delete arbitrary directories on a Node with root permissions
by a local non-root user with the same UID as the user in a Pod.

The Go team has not issued a CVE for this, as it is considered a hardening
issue, and the SRC is following that decision as well.

Am I affected?

Kubernetes built with Go versions prior to 1.21.11 or 1.22.4 are affected.

Affected Versions

- <1.30.2

- <1.29.6

- <1.28.11

- <1.27.15

How do I mitigate this issue?

Upgrade to a fixed (or newer) version of Kubernetes.

Fixed Versions

- 1.30.2+

- 1.29.6+

- 1.28.11+

- 1.27.15+

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-upgrade/

Detection

This issue could be detected by looking for unexpected file deletions on a
Node.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/132267

Acknowledgements

This issue was reported by Addison Crump

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--000000000000152fb60637c46418--
