Received: (qmail 5630 invoked by uid 550); 25 Oct 2022 10:28:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5286 invoked from network); 25 Oct 2022 10:28:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cBuzqYQEhJpnXWYg7KO+GuDqwx4pGX2PQyeHgy+yz6Y=;
        b=cVuH5NwmMDNFA+sEBxqZJc1jt2bjlV+X8h5Px68orpFSk3qrrR1BhFlZnQar5ULjg+
         mzKdSsGCoeSFKTK0+sMd+RbGQXg5ah9HXdlnpjmniewR88wleTdBN9nlCgjrCrSbKVYG
         NXmwaGzHeuQ7ozi06TfBicij9hECBKDiYxyBKV53Ub8lCunHqITRwFgZMlOF6fJ9dWqj
         R34PQqmy0oODWDXOJaqOozudOhWCtrwL4f0qXFihCK8WRQV6qajeMm+BZxjNvnl1d16h
         Ugn3yyIFWPjuENK6y+qk0iVguVmPqfByMLpy+5qpXmizGWS9fwQSaOJF7UvDAdg4MGqd
         lVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cBuzqYQEhJpnXWYg7KO+GuDqwx4pGX2PQyeHgy+yz6Y=;
        b=MxrviNpFlsoo8fWNRlSKY1ez16yZdez2hthNGNL1o51ZzjBm7ESvWIE/c+MiqYREZQ
         kExvlBRt8KcKCC/vrkLrku+6OW/2v9SB7N7bPGz53jEd2uzQ4V66lBys5TD3s3rppEr1
         PTi8eUXDRXLqTbq6WVYU6FW3VuSandJASJHUgW9QKhxNPdovmcZ0IyEZ8UD7wUjYul4/
         0Y22g63ct6DTwxsIelq91EU0xXE5RwvcWIrE9bpv4b4UghcJHmdQVK6QxK5JVVZGfDfU
         EwXNMEz3/Tv98O8l2CvOf/4iFJl/5Z0YjrO+wzR0awLp8J/Ge449VdLE67Nz5GHqDe8p
         hNPQ==
X-Gm-Message-State: ACrzQf32jANLKZVp8GiEJ/rsiqLjDIZ0O5QSoX3YNuZc2uPSKcgEZ4bI
	Ua1h7aaRfxfM5pdMOPvdDs0=
X-Google-Smtp-Source: AMsMyM7CH/a30HCkr+FmXEsAArlF9336vXbNWh7UyPpkH5ahw0VP1uf96gfqThwtOfmn1x/WQ0VFZw==
X-Received: by 2002:a05:600c:4fc9:b0:3c7:12ab:d66 with SMTP id o9-20020a05600c4fc900b003c712ab0d66mr16963911wmq.62.1666693668501;
        Tue, 25 Oct 2022 03:27:48 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Tue, 25 Oct 2022 11:27:47 +0100
Message-ID: <007201d8e85c$6da62570$48f27050$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdjoW8EGBEXebOnmRmyvZkzQ0W9sBw==
Content-Language: en-gb
Subject: [oss-security] [CVE-2022-41704] Apache Batik information disclosure vulnerability

CVE-2022-41704:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.15

Description:
        Block loading jars by default to avoid running untrusted code

Mitigation:
        Users should upgrade to Batik 1.16+

Credit:
        This issue was independently reported by Y4tacker and 4ra1n of
Chaitin Tech and pwnull

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1338

The Apache XML Graphics team.


