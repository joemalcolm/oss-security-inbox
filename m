Received: (qmail 5490 invoked by uid 550); 17 Dec 2025 17:23:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20271 invoked from network); 17 Dec 2025 17:01:39 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1765990889; cv=none;
        d=google.com; s=arc-20240605;
        b=HeeUhdW99CnQlP6Oaddvj/KA/ZNCBQwFLLbFvDlWSxLQ5SMBaF3+OW9D/TZ+5iDBWa
         ZD1fB/eOLrj4FHH/lynXMnEM3cNo+/rjOpeONyFr597qMBcpZFnHT9JXpwTkg1i/Brfy
         EZjMENFidA+mCRu4TCXxZZEU9lcUzU7gj26ChcMi12MxeqSmcyKG6CvMXdFRLloASKnU
         Ex/ssDSMIIY34ge6Ytf2JQF3Pzh+bq6dP4yplONi2/AIatXosMXRJA5pVdQxpwpCtYgk
         qBlnJSZDhQD05tREbWYCfS88JNYTl6x7bxs9GMVbDo8vnfoAVBtw/lZj7ZMEKJ/Ud4ip
         6jlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MzMfLLCWoSyrDMBJMA6YTHZH2wVajpBjSvCkAsQ1Uio=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=BQnu/TEjkKamwyMwY1QVQQ0FU8Tc4i7UDUzPszdKARCpp4NF0ByS2l4P1ZcS+Ku2ia
         XI/gXupPJ45dhQcreWORbYNe6clJbbH12z1qpFUi7fg2kQJ6idy9dQOL7iLglhD9M59h
         vX4ED9QP7toOMoQLFpBYJ78PITMk+cHioYK0MsMVJYypIJDtyKb9nAuVAXuzyzpXHzq+
         +YM4NtsGvQT41onV7nJDoZoh4wmpt6ppWRfLtusxdUR3lqoFXoo4XYo3pJO5YqjHZt4a
         xqM8EHzlA8nomEZjGrz9Sx3dUDOM03ZFbxLysRxJ0QPj+wCIsmVz6q5XhbXO+BPnBS1S
         iorw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765990889; x=1766595689; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MzMfLLCWoSyrDMBJMA6YTHZH2wVajpBjSvCkAsQ1Uio=;
        b=yi+Dis9SeEi5N4qlDDNzU5NqsTbofcXAEsr3DPKyfZayV9V9c6+OLFU1N3lSjYF9nr
         Ko0AwMZIN+6cYSF4k2EeqHm6BPlTeH+AsZMIDPkEh3g+XxRc9RjmXbag8TcjxnZpl7L0
         BUVjF+IESUeg8n2fb0AMgJtnfhb6k8DMTPofkASHJ3UB3cgyJsW2H09GmLtaqd4vIIk1
         g6t+bkLP9Hlg/cggkASPXXjJ4PguGlxkyn2V9ssBMr5fGqo6uBnwL+iFBA5lf1Pll9uX
         9gI99/C53WOIZSc5uh7cU+J+xUvyuWai3PzduY1hxnzosji32rZA2FSU/ecXAS/CcIOi
         3JUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765990889; x=1766595689;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MzMfLLCWoSyrDMBJMA6YTHZH2wVajpBjSvCkAsQ1Uio=;
        b=F3TtuEJc4eUtpmBCovsw+veKGR6ZkhTV/OzZZg4v4L3vQ9v5QVMnZbsRMuCbKR/KXY
         mqUsE+0O1a5uZMpf0b0lUsa3N+ADSzKFwVSJW/OTji2JX6WzJd+BGGVoSB5DaVNoN8ZX
         8ljSjhx4B+Oc7+cqiiuE+HMFttWctfk9Y8PJ/NBhiFLgL6hrAdnCtQZxgLSkryB6Ba8T
         v9Rw2ocOGijnyrcKbhL+fBje9N3g5xl21Ms0zO8ilCK25+1TcHhZtoYsba6C4gsbsWSX
         rsjUZXjo1JjPPL9pBNs760mhbJwI02eD9de8+KYQEJGqoO1Yp7G73J+DZGKMABgRArK4
         EPSw==
X-Gm-Message-State: AOJu0YwiXNgW5wV/SfHTZ5sKxe2cWi1pIB3YdvlM5UzS8D+raG9fUEWI
	SIRyGKKpJ+sGxgyMxiTqLrUzVHpBFyYa6YL6K76AEbD6rGzC+zUjX/ahzdEl1JUkx7o1F0dXJ1c
	pngnSuEB9vwpaEwvHwGZ4HCDsW7w5fvsjV00gNDaVEUaifcRBpoHvmtrWbGk=
X-Gm-Gg: AY/fxX7vUtb7RrhNOawOhbnoyijpM/RF9DPxyojIN4XsHvR2unSanluyRMDYJKSs++6
	aTSWMEi1r1B2+DElhIXKTiGv1LUVN1Z32Y9K6zQgpUy4SYa02FKnptOFTG74uq289HANEWtBEeM
	4qpZJeEZaRcqhsb/w8W6JyoXsz5T1/9y6kLD41LiLpQ7AliIjTSmSGXWMsl7+SQOmvXGu0uzD6X
	8uq6xHSsjQk79zgvIZLa/kjZmYAUeuoIzit/VP99sVQ6yt9yRo6xpjsT0XNUBnbKuWLwWeoA/Wd
	LZwARFzzuaakAbWTo08BPm/yf8re6RkTraaI+Ms=
X-Google-Smtp-Source: AGHT+IFkjPG/BoHFWhTrKAmVF5EAD1wrHqm3s5gFtDxy/iI/MwEIo5Wslo51fEkPkaTyAn5nAnjamYOprLa9WEwCcdw=
X-Received: by 2002:a05:622a:c7:b0:4ed:8103:8c37 with SMTP id
 d75a77b69052e-4f35319c5fcmr13182551cf.12.1765990886401; Wed, 17 Dec 2025
 09:01:26 -0800 (PST)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Wed, 17 Dec 2025 12:01:14 -0500
X-Gm-Features: AQt7F2rYhTLCs3su1THBb4LFeo8iME-vkI8DvxkNLijvCsRZMGwlDcSTsgtRZGU
Message-ID: <CAHXwHVxGkV0vhWR21H88YDqFvexj51-8MskSy+eMOHAUcEx70g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000076b38b064628cb84"
Subject: [oss-security] [kubernetes] CVE-2025-14269: Credential caching in Headlamp with Helm enabled

--00000000000076b38b064628cb84
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in the in-cluster version of Headlamp where
unauthenticated users may be able to reuse cached credentials to access
Helm functionality through the Headlamp UI. Kubernetes clusters are only
affected if Headlamp is installed, is configured with config.enableHelm:
true, and an authorized user has previously accessed the Helm functionality.

This issue has been rated High (8.8) (
CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H>),
and assigned CVE-2025-14269
Am I vulnerable?

Kubernetes clusters with an in-cluster installation of Headlamp <= v0.38.0
and config.enableHelm set to true are affected. The Headlamp desktop
version is not affected.
Affected Versions

   -

   Headlamp <= v0.38.0

How do I mitigate this vulnerability?

Upgrade to the fixed version. Prior to upgrading, this vulnerability can be
mitigated by ensuring Headlamp is not publicly exposed with an ingress
server to limit exposure.
Fixed Versions

   -

   Headlamp v0.39.0
   https://github.com/kubernetes-sigs/headlamp/releases/tag/v0.39.0


To upgrade, refer to the documentation: https://headlamp.dev/docs/latest/
Detection

Review logs for unexpected access to clusters/main/helm/releases/list and
other Helm related endpoints.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes-sigs/headlamp/issues/4282
Acknowledgements

This vulnerability was reported by brndstrp <https://hackerone.com/brndstrp>
.

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--00000000000076b38b064628cb84--
