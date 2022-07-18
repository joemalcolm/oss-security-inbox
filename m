Received: (qmail 27926 invoked by uid 550); 18 Jul 2022 15:33:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13742 invoked from network); 18 Jul 2022 13:50:32 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AJIora/4lzcvBGrjWOwKrj8hTKeMxbrbQHYgrMVshK3yvYNVMiL92o/W
	Me5xSHyriJwj1yDOnjzYqagbKhDYwnDYaIH+9Bg=
X-Google-Smtp-Source: AGRyM1v+1//nCrEwlf0vF7RnD3O1TksV5seeRJRchJaq4I3f0TxpsKe+DfE9405DEMC0FrxstK3itG/gSxN221pFvFA=
X-Received: by 2002:a05:6830:638d:b0:616:d898:cb14 with SMTP id
 ch13-20020a056830638d00b00616d898cb14mr10766781otb.193.1658152218442; Mon, 18
 Jul 2022 06:50:18 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Yadav <rohit@apache.org>
Date: Mon, 18 Jul 2022 19:20:07 +0530
X-Gmail-Original-Message-ID: <CANLSSBXJFGQN2ajDTWy5PEJPszrCrG2_F0d76tW9zw8f3XPbFA@mail.gmail.com>
Message-ID: <CANLSSBXJFGQN2ajDTWy5PEJPszrCrG2_F0d76tW9zw8f3XPbFA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ADVISORY] Apache CloudStack SAML Single Sign-On XXE (CVE-2022-35741)

Apache CloudStack version 4.5.0 and later has a SAML 2.0
authentication Service Provider plugin which is found to be vulnerable
to XML external entity (XXE) injection. This plugin is not enabled by
default and the attacker would require that this plugin be enabled to
exploit the vulnerability. When the SAML 2.0 plugin is enabled in
affected versions of Apache CloudStack could potentially allow the
exploitation of XXE vulnerabilities.

The SAML 2.0 messages constructed during the authentication flow in
Apache CloudStack are XML-based and the XML data is parsed by various
standard libraries that are now understood to be vulnerable to XXE
injection attacks such as arbitrary file reading, possible denial of
service, server-side request forgery (SSRF) on the CloudStack
management server.

As of 18th July 2022, this is now tracked under CVE-2022-35741:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-35741

To mitigate the risk, a CloudStack admin can do any of the following:

1. Disable the SAML 2.0 plugin by setting `saml2.enabled` to false and
restart the management servers.

2. Upgrade to Apache CloudStack 4.16.1.1 or 4.17.0.1 or higher.

--
