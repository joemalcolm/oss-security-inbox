Received: (qmail 13815 invoked by uid 550); 11 Mar 2025 15:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7576 invoked from network); 11 Mar 2025 15:12:50 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yy2CemZSEOTsjHnpAu2sUsU/BqE10NZS/Kjqis6LKFd6VtP+JY7
	7EZ/MNabo7+njsO0PiBNbw8sai4L8n+wmwpdeiYCFYpGqvI61B+5UgbAWchKSAM61rGWFXjZ+mI
	ScGs0M1SHhpaxuyb9mwFi6UvSllM=
X-Google-Smtp-Source: AGHT+IENK+R9ln9G7jHOZnVrHnB/Q87aoCu+OdoHijUqw091xcK0XI2vdwK8MLswSm/Y0lGLJ32quUlFFdCeBWsY8Oc=
X-Received: by 2002:a17:907:3510:b0:ac2:b73:db3d with SMTP id
 a640c23a62f3a-ac252737a9emr1577171766b.4.1741705956589; Tue, 11 Mar 2025
 08:12:36 -0700 (PDT)
MIME-Version: 1.0
From: Pierre Villard <pvillard@apache.org>
Date: Tue, 11 Mar 2025 16:12:00 +0100
X-Gmail-Original-Message-ID: <CABgFv25Fcdzf-xEFpT4_AQZkynZBHXD6EQRcCmLwCqrV+5NC7w@mail.gmail.com>
X-Gm-Features: AQ5f1JqXKEwiLNenwO-9nMxjV2gckn3vHDTEmGMF1i3zaMasoj7OXh4AxtF4ono
Message-ID: <CABgFv25Fcdzf-xEFpT4_AQZkynZBHXD6EQRcCmLwCqrV+5NC7w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-27017: Apache NiFi: Potential Insertion of MongoDB Password
 in Provenance Record

Affected versions:

- Apache NiFi 1.13.0 through 2.2.0
- Apache NiFi 2.3.0 unaffected

Description:

Apache NiFi 1.13.0 through 2.2.0 includes the username and password
used to authenticate with MongoDB in the NiFi provenance events that
MongoDB components generate during processing. An authorized user with
read access to the provenance events of those processors may see the
credentials information. Upgrading to Apache NiFi 2.3.0 is the
recommended mitigation, which removes the credentials from provenance
event records.

This issue is being tracked as NIFI-14272

Credit:

Robert Creese (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-27017
https://issues.apache.org/jira/browse/NIFI-14272
