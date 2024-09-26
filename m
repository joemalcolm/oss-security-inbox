Received: (qmail 15435 invoked by uid 550); 26 Sep 2024 11:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20198 invoked from network); 26 Sep 2024 07:37:45 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YycAFY/FT0hoQaQQCXgFZZB9obn/tHKyIesFh8Vy0HQHMQMwlgh
	2B1WiGN9Tlw/bh6X9HRfYNv7qHrKLJ+uvEOvEgpLubUpS/M7/tPFf87tGg+ATBStUvGfkHyJE52
	ObfIkq8MlFP95IpRFDnFELj1DNvE=
X-Google-Smtp-Source: AGHT+IHLzjUVB9naRx4rn1oXTyGnXADtEI9bNb9/l7IoP6fhfrdoSKmelofiJy9nWFRrten7wNhcQn7FyJ0qyhuPobc=
X-Received: by 2002:a05:6512:3f07:b0:52e:9b68:d2d4 with SMTP id
 2adb3069b0e04-53877567801mr3489187e87.56.1727336233900; Thu, 26 Sep 2024
 00:37:13 -0700 (PDT)
MIME-Version: 1.0
From: Slawomir Jaranowski <sjaranowski@apache.org>
Date: Thu, 26 Sep 2024 09:37:03 +0200
X-Gmail-Original-Message-ID: <CAGjJkv1D5_YvpR-Yo1OSa8iN+nuVX8L=O6p7UmRmKqLY-eQGbQ@mail.gmail.com>
Message-ID: <CAGjJkv1D5_YvpR-Yo1OSa8iN+nuVX8L=O6p7UmRmKqLY-eQGbQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-47197: Maven Archetype Plugin: Maven Archetype
 integration-test may package local settings into the published artifact,
 possibly containing credentials

Severity: low

Affected versions:

- Maven Archetype Plugin 3.2.1 before 3.3.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor, Insecure
Storage of Sensitive Information vulnerability in Maven Archetype
Plugin.

This issue affects Maven Archetype Plugin: from 3.2.1 before 3.3.0.

Users are recommended to upgrade to version 3.3.0, which fixes the issue.

Archetype integration testing creates a file
called ./target/classes/archetype-it/archetype-settings.xml
This file contains all the content from the users ~/.m2/settings.xml file,
which often contains information they do not want to publish. We
expect that on many developer machines, this also contains
credentials.

When the user runs mvn verify again (without a mvn clean), this file
becomes part of
the final artifact.

If a developer were to publish this into Maven Central or any other
remote repository (whether as a release
or a snapshot) their credentials would be published without them knowing.

This issue is being tracked as ARCHETYPE-657

Credit:

Niels Basjes (reporter)

References:

https://maven.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-47197
https://issues.apache.org/jira/browse/ARCHETYPE-657
