Received: (qmail 15700 invoked by uid 550); 23 Jun 2024 23:34:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5221 invoked from network); 23 Jun 2024 19:32:12 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AOJu0Yx6cetlShHml9+6af4GuyZLdKbo7y9FC8Hr/aWH0Rhd+UpsRK1q
	VJqIh+yLOeMS9vBAcXfdSoBNW2B6rfMN0N0wGGMNkNfNlcFrjFiMIvbooo+McACTHdiFrWp0qFF
	LUkjC61awtJoePzcbUava+NeO6ts=
X-Google-Smtp-Source: AGHT+IG4KWGIbz1MeiN3pzcwsQOOQ76XkM8whTTcR2pJ571Si+7nHh3uM3kg7io3rEuszS+FwC/WLn6/FoQICXa9rek=
X-Received: by 2002:a17:907:a809:b0:a6f:5c1a:c9a6 with SMTP id
 a640c23a62f3a-a7245dc9b29mr157616866b.62.1719171095591; Sun, 23 Jun 2024
 12:31:35 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo@apache.org>
Date: Sun, 23 Jun 2024 21:31:24 +0200
X-Gmail-Original-Message-ID: <CAMufup6p7=SzCmN4mKB7RdWBPKiAuEFPVAgHeMyHVEvkHyCh2w@mail.gmail.com>
Message-ID: <CAMufup6p7=SzCmN4mKB7RdWBPKiAuEFPVAgHeMyHVEvkHyCh2w@mail.gmail.com>
To: oss-security@lists.openwall.com, announce@apache.org, 
	user@jspwiki.apache.org, dev@jspwiki.apache.org, 
	=?UTF-8?B?U8ahbiBOZ3V54buFbg==?= <son.nguyen3496@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-27136: Apache JSPWiki: Cross-site scripting vulnerability on
 upload page

Severity: moderate

Affected versions:

- Apache JSPWiki through 2.12.1

Description:

XSS in Upload page in Apache JSPWiki 2.12.1 and priors allows the
attacker to execute javascript in the victim's browser and get some
sensitive information about the victim.  Apache JSPWiki users should
upgrade to 2.12.2 or later.

Credit:

This issue was discovered by sonnh from Vietnam National Cyber
security technology corporation (finder)

References:

https://jspwiki.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-27136
https://jspwiki-wiki.apache.org/Wiki.jsp?page=CVE-2024-27136
