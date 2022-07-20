Received: (qmail 5562 invoked by uid 550); 20 Jul 2022 06:48:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26100 invoked from network); 20 Jul 2022 06:22:32 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AJIora/FVo9u84kDMSx4g0tMR9RtrWKU+fzy06dEeKMI2gebTWs1nUZw
	lOA7TzmRrvxJ5VqnGZDhoqBi/17VapLXOFIzSBQ=
X-Google-Smtp-Source: AGRyM1u/HIFu1hZJ00OCXcwk58cvlCwjq2O6zp0/WTqokvXyzIGxIanugW9boeCO0NOQT1xLuazhVkbM+BF3uzIP23I=
X-Received: by 2002:a05:6870:73cd:b0:10c:31f9:9f48 with SMTP id
 a13-20020a05687073cd00b0010c31f99f48mr1654962oan.13.1658298137252; Tue, 19
 Jul 2022 23:22:17 -0700 (PDT)
MIME-Version: 1.0
References: <CANLSSBXJFGQN2ajDTWy5PEJPszrCrG2_F0d76tW9zw8f3XPbFA@mail.gmail.com>
In-Reply-To: <CANLSSBXJFGQN2ajDTWy5PEJPszrCrG2_F0d76tW9zw8f3XPbFA@mail.gmail.com>
From: Rohit Yadav <rohit@apache.org>
Date: Wed, 20 Jul 2022 11:52:06 +0530
X-Gmail-Original-Message-ID: <CANLSSBUW0342P0jVEUf-iZyqqiVRAhN2ET8a3-tnsZHT+f86fg@mail.gmail.com>
Message-ID: <CANLSSBUW0342P0jVEUf-iZyqqiVRAhN2ET8a3-tnsZHT+f86fg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [ADVISORY] Apache CloudStack SAML Single Sign-On XXE (CVE-2022-35741)

Credit: This issue was discovered and reported by "v3ged0ge".

Updated: https://blogs.apache.org/cloudstack/entry/cve-2022-35741

Regards.

On Mon, Jul 18, 2022 at 7:20 PM Rohit Yadav <rohit@apache.org> wrote:
>
> Apache CloudStack version 4.5.0 and later has a SAML 2.0
> authentication Service Provider plugin which is found to be vulnerable
> to XML external entity (XXE) injection. This plugin is not enabled by
> default and the attacker would require that this plugin be enabled to
> exploit the vulnerability. When the SAML 2.0 plugin is enabled in
> affected versions of Apache CloudStack could potentially allow the
> exploitation of XXE vulnerabilities.
>
> The SAML 2.0 messages constructed during the authentication flow in
> Apache CloudStack are XML-based and the XML data is parsed by various
> standard libraries that are now understood to be vulnerable to XXE
> injection attacks such as arbitrary file reading, possible denial of
> service, server-side request forgery (SSRF) on the CloudStack
> management server.
>
> As of 18th July 2022, this is now tracked under CVE-2022-35741:
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-35741
>
> To mitigate the risk, a CloudStack admin can do any of the following:
>
> 1. Disable the SAML 2.0 plugin by setting `saml2.enabled` to false and
> restart the management servers.
>
> 2. Upgrade to Apache CloudStack 4.16.1.1 or 4.17.0.1 or higher.
>
> --
