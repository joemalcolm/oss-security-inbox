Received: (qmail 9528 invoked by uid 550); 19 Jul 2024 12:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19736 invoked from network); 19 Jul 2024 10:09:02 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0YzyDQFXAW9FFP3cm5r8L9PcUIcUykP30b4Uqfxk4l6dhDa3YN57
	ZcwpiA/7QIwGCTSW4vd7LnKXzaFteNcOumvyWTFo9NG6WYY+pBETKOpEu7Q05X5++svnppfw/C1
	TBC/yu4VFqKUV82CbuCSFU1+11GA=
X-Google-Smtp-Source: AGHT+IHCROQcl/NKEWqX5KrFx1T3U8+uL7rE9HkPVPkKDyXfUZfESW7KpDLMA9LZHLiz4onP+R+c4i9CrvXwhj1yrjI=
X-Received: by 2002:a05:6102:3914:b0:48f:3b56:a184 with SMTP id
 ada2fe7eead31-4925c1e67camr3944963137.5.1721383725164; Fri, 19 Jul 2024
 03:08:45 -0700 (PDT)
MIME-Version: 1.0
From: Abhishek Kumar <shwstppr@apache.org>
Date: Fri, 19 Jul 2024 15:38:30 +0530
X-Gmail-Original-Message-ID: <CAM1si4Xe91A5i2qHLBfcu-OPwDu-cN8xeG8KsmEL6MD_3xpVeQ@mail.gmail.com>
Message-ID: <CAM1si4Xe91A5i2qHLBfcu-OPwDu-cN8xeG8KsmEL6MD_3xpVeQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] Apache CloudStack CVE-2024-41107: SAML Signature Exclusion

Apache CloudStack project announces the release of LTS releases 4.19.1.0
and 4.18.2.2 that addresses CVE-2024-41107 that affects CloudStack SAML
users, of severity 'important' explained below.

# CVE-2024-41107: SAML Signature Exclusion

The CloudStack SAML authentication (disabled by default) does not enforce
signature check. In CloudStack environments where SAML authentication is
enabled, an attacker that initiates CloudStack SAML single sign-on
authentication can bypass SAML authentication by submitting a spoofed SAML
response with no signature and known or guessed username and other user
details of a SAML-enabled CloudStack user-account. In such environments,
this can result in a complete compromise of the resources owned and/or
accessible by a SAML enabled user-account.

# Credits

The original issue was reported by Christian Gross of Netcloud AG who filed
it as a bug report at https://github.com/apache/cloudstack/issues/4519.

More recently it was reported as a security issue by the following
reporters from the Apple Services Engineering Security team:

- Damon Smith
- Adam Pond
- Terry Thibault

# Affected Versions

- Apache CloudStack 4.5.0 through 4.18.2.1
- Apache CloudStack 4.19.0.0 through 4.19.0.2

# Resolution

Affected users are recommended to disable the SAML authentication plugin
by setting the "saml2.enabled" global setting to "false", or upgrade to
version 4.18.2.2, 4.19.1.0 or later, which addresses this issue.

# Downloads and Documentation

The official source code for the 4.18.2.2 and 4.19.1.0 releases can be
downloaded from the project downloads page:
https://cloudstack.apache.org/downloads

The 4.18.2.2 and 4.19.1.0 release notes can be found at:
https://docs.cloudstack.apache.org/en/4.18.2.2/releasenotes/about.html
https://docs.cloudstack.apache.org/en/4.19.1.0/releasenotes/about.html

In addition to the official source code release, individual contributors
have also made release packages available on the Apache CloudStack
download page, and available at:

https://download.cloudstack.org/el/7/
https://download.cloudstack.org/el/8/
https://download.cloudstack.org/el/9/
https://download.cloudstack.org/suse/15/
https://download.cloudstack.org/ubuntu/dists/
https://www.shapeblue.com/cloudstack-packages/
