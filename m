Received: (qmail 25963 invoked by uid 550); 5 Mar 2025 17:42:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22465 invoked from network); 5 Mar 2025 17:17:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1741195038; x=1741799838; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Mj32Hq4aBzO0TmIvvk7DZc8/py4Ti5sdSfiUhV8l+Ow=;
        b=WlQ+FO+PY7c7fu67QGF9iczYTZ+sXOJx89ixgP674WByS23+cp/v3qF1QvnyZUagLC
         +VcbbuVIuWqjkUOcxn9YcnWKlR4hmYv4HnvgRmfF0WLe6UNQAh0T7PcqkxzC0qjig7H8
         SabEUgI2DCg3Ue0MfKrh8/rabwDU1ODowsviE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741195038; x=1741799838;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mj32Hq4aBzO0TmIvvk7DZc8/py4Ti5sdSfiUhV8l+Ow=;
        b=Z2TLB6/9DQs8XkbBgqpnWRoGC/BZK1R/ZpfanntkCEz9MsgB6lDqGL0XoxNOVN6ZwJ
         3iMRDDWtLIzdaVxC5wI8dXDx+YXFsWYT6V56OFH7T2rjXPRQl03kFPpE1vZi10OqKlOx
         1BXqoexjLCbEMu25EQvfIayqiCvo8kcJkSENXqCNxjp4si3dg51XRt+yqFwRDVVC275P
         wD6DO0ASUaGomB232mdF/ClmV1DFVnKl+MGYQWfgMPnw/7o4fkd/MseRznup3u53aHY0
         3BBXzvSjTik/ilsMqy5PRxR0R4cxjQ4+h7tXgTB9dqMUIwmeP8IDWMoaEnquG2SOmWEf
         Ik6g==
X-Gm-Message-State: AOJu0YwzfoM9ILXeNtgp9YTD5kUPjvFqK6MjW6yAGvQ5ZD4+3hmRuSs/
	0okxCWEBQaI4ai3yhMGaFYHKY/SnKqVW74jvhbABb19gP7QYreYpQu53y23Z0qhJjiEu+mPeOFe
	btBzZRk9EIYyAWQTM2b+hvlDeXFLx0YdU/YHSnW81Sm3A2Jo+tMsKg34u
X-Gm-Gg: ASbGncvSqcsnxp9LNb3Gzt5rnW/5Dt/jmiEQCH8XWF1cyQut8yALRIzKLpdxiPfDr1i
	aH4v1iBo8wN7mr7bbUzkqgDOVqsPagtwYUc4kpnSwK+lCMqao5f2hsQU2wq0cMWAGs1xwZZ8JF4
	GJjS+NCvqFkelZkNBpTmPyVHd7l6IXQelt+bsJ42c2TApwinCKD5pXFM6Caw==
X-Google-Smtp-Source: AGHT+IEYJkOLI/UqfbR1e5kKaofmH3CDnMi36c8K5/BCWmmB8eBPI2WEhVFbmiuV3egp6V4/XwLHl5MAX/S7my7/8YM=
X-Received: by 2002:a05:651c:b12:b0:30b:c91d:3600 with SMTP id
 38308e7fff4ca-30bd7a1dee0mr14599371fa.8.1741195037710; Wed, 05 Mar 2025
 09:17:17 -0800 (PST)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 5 Mar 2025 18:17:07 +0100
X-Gm-Features: AQ5f1JrIyNLMZHYO-4UQco-_eTM-s0Pi50J15tNq-YqD6KXpLRVUjPtbrPt4JaA
Message-ID: <CAKG2iZijXv6DD60je8CTXrbyX_iNi3BOiZP43ORPOBm7YoJuww@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b5341c062f9b8f46"
Subject: [oss-security] Multiple vulnerabilities in Jenkins

--000000000000b5341c062f9b8f46
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.500
* Jenkins LTS 2.492.2


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-03-05/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3495 / CVE-2025-27622
Jenkins 2.499 and earlier, LTS 2.492.1 and earlier does not redact
encrypted values of secrets when accessing `config.xml` of agents via REST
API or CLI.

This allows attackers with Agent/Extended Read permission to view encrypted
values of secrets.


SECURITY-3496 / CVE-2025-27623
Jenkins 2.499 and earlier, LTS 2.492.1 and earlier does not redact
encrypted values of secrets when accessing `config.xml` of views via REST
API or CLI.

This allows attackers with View/Read permission to view encrypted values of
secrets.


SECURITY-3498 / CVE-2025-27624
Jenkins 2.499 and earlier, LTS 2.492.1 and earlier does not require POST
requests for the HTTP endpoint toggling collapsed/expanded status of
sidepanel widgets (e.g., Build Queue and Build Executor Status widgets),
resulting in a cross-site request forgery (CSRF) vulnerability.

This vulnerability allows attackers to have users toggle their
collapsed/expanded status of sidepanel widgets.

Additionally, as the API accepts any string as the identifier of the panel
ID to be toggled, attacker-controlled content can be stored in the victim's
user profile in Jenkins.


SECURITY-3501 / CVE-2025-27625
Various features in Jenkins redirect users to partially user-controlled
URLs inside Jenkins. To prevent open redirect vulnerabilities, Jenkins
limits redirections to safe URLs (neither absolute nor
scheme-relative/network-path reference).

In Jenkins 2.499 and earlier, LTS 2.492.1 and earlier, redirects starting
with backslash (`\`) characters are considered safe.

This allows attackers to perform phishing attacks by having users go to a
Jenkins URL that will forward them to a different site, because browsers
interpret these characters as part of scheme-relative redirects.

--000000000000b5341c062f9b8f46--
